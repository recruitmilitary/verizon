require 'open-uri'
require 'ostruct'

module Verizon
  module Wireless

    class Job < OpenStruct
      INDEX_URL = 'http://www22.verizon.com/jobs/wireless_export'

      def self.all
        document = Nokogiri::XML(open(INDEX_URL))

        document.search("job").map do |node|
          Job.new(:title => node.at("Title").text,
                  :req_number => node.at("Req_Number").text,
                  :url => node.at("Job_URL").text,
                  :posted_date => Date.parse(node.at("Posted_Date").text),
                  :city => node.at("City").text,
                  :state => node.at("State_Province").text,
                  :zip => node.at("zip").text,
                  :country => node.at("Country").text,
                  :description => node.at("JobText").text)
        end
      end
    end

  end
end
