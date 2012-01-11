require "net/http"
require "uri"

module Verizon
  module Business

    class Job < OpenStruct
      INDEX_URL = 'http://www22.verizon.com/jobs/verizon/search-jobs'

      def self.all
        document = get(INDEX_URL)

        document.search('#searchresultsbody tr').map do |node|
          cells = node.search('td')

          url = cells[1].at('a').attr('href')
          url =~ /jobid(\d+)-/

          Job.new(:title => cells[1].at('a').text,
                  :url => url,
                  :internal_id => $1,
                  :category => cells[2].text)
        end
      end

      def self.get(url)
        uri = URI.parse(url)

        req = Net::HTTP::Get.new(uri.path)
        req.add_field('User-Agent', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)')

        response = Net::HTTP.new(uri.host, uri.port).start do |http|
          http.request(req)
        end

        Nokogiri::HTML(response.body)
      end

      def location
        document.at("input#location").attr('value').gsub(/,\s*/, ', ')
      rescue NoMethodError
        # no location
      end

      def description
        document.at(".posResp p").text
      rescue NoMethodError
        # no description
      end

      private

      def document
        @document ||= self.class.get(url)
      end

    end

  end
end
