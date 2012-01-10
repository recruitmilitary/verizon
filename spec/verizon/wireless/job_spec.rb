require 'spec_helper'

describe Verizon::Wireless::Job do

  describe '.all' do
    use_vcr_cassette

    it 'returns a list of jobs' do
      jobs = Verizon::Wireless::Job.all

      jobs.size.should == 1082
      job = jobs.first

      job.title.should == 'Rep-Retail Sales (Pine Ridge)'
      job.req_number.should == '286775'
      job.url.should == 'http://www22.verizon.com/jobs/naples/sales/jobid286775-rep-retail-sales-(pine-ridge)-verizon-wireless-jobs/'
      job.posted_date.should == Date.new(2011, 12, 22)
      job.city.should == 'Naples'
      job.state.should == 'FL'
      job.zip.should == ''
      job.country.should == 'US'
      job.description.should == "We\342\200\231re looking for someone who has what it takes to close sales, beat quotas and rack up commissions. You should have at least 1-2 years of sales experience in a commission environment. A college degree and bilingual Spanish skills are a definite plus. You must also be able to move throughout the store to actively engage customers, demonstrate products, and effectively execute the sales function.\n\nIn return for your talent and dedication, we\342\200\231ll proudly support you with comprehensive benefits worthy of the name Total Rewards, including: award-winning training, a competitive salary, medical/dental/vision from day one, 401(k), work-life programs, phone discounts, generous tuition assistance, and unlimited opportunities to maximize your career potential.\n\nTake a giant leap toward a career for everything you are. Visit us at careersatverizonwireless.com.You\342\200\231re focused on your future \342\200\223 on finding the right fit for your talent and charisma, and making your presence known. And when you join Verizon Wireless, you\342\200\231ll find unlimited opportunities to evolve, excel and amplify your success with a company that\342\200\231s continually redefining the communications industry. If you\342\200\231re ready to make your mark with a team that thrives on collaboration, you need to consider a future as a Verizon Wireless Retail Sales Representative.\n\nYour record is defined by meeting challenges head-on and always striving for excellence. And it\342\200\231s that tireless drive, coupled with your strong interpersonal skills and natural instinct to see opportunities at every turn, that sets you apart \342\200\223 and makes you a perfect fit for our team."
      job.category.should == 'sales'
    end
  end

end
