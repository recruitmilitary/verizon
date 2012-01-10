require 'spec_helper'

describe Verizon::Business::Job do

  describe '.all' do
    use_vcr_cassette

    it 'returns a list of jobs' do
      jobs = Verizon::Business::Job.all

      jobs.size.should == 85
      job = jobs.first

      job.title.should == 'SYS CSLT-IT Quality Assurance'
      job.url.should == 'http://www22.verizon.com/jobs/argentina/buenos-aires/other/jobid464155-sys-cslt-it-quality-assurance-verizon-jobs/'
      job.category.should == 'Other'
      job.internal_id.should == '464155'
      job.location.should == 'Buenos Aires, B, ARGENTINA'
      job.description.should == "Responsible for planning and leading End to End/Integrated System Testing of large, complex, highly visible IT projects. Projects span 10 to 30 IT systems. The QAPM will lead a matrixed team of 50 to 150 developers, testers, business analysts, and marketing subject matter experts. High paced environment requiring possible overtime.Leads quality assurance analysts to ensure that the company   s products meet total quality management standards and other reliability standards. Executes the strategic goals of the assigned test teams to include reporting, globalization, testing, automation, knowledge acquisition and transfer. Implements new or improved testing methods, processes, tools, and systems. Coordinates appropriate test procedures. Participates in project requirements and design reviews; sign-off on behalf of the End to End/IST team when specifications are accepted. Leads overall project test strategy that includes consideration of all quality assurance test plans, assignments, schedules and expected out comes. Leads quality control/test teams to ensure product/program meets defined specifications. Provides management and executive level reporting and briefing on the state of the program efforts from a Quality Assurance perspective. Performs escalations, as required. Researches and understands the business and functional requirements for a product, including business process flow, system functionality and performance criteria, and relates this information to the test team. Reviews metrics throughout the release and leads review at end of release for the purpose of fine tuning QA processes and reducing for future releases avoidable errors made by QA team members. Implements recommendations for QA process improvements and improvements in other Software Development Life Cycle phases based on results found in QA testing, including automation solutions Qualifications: Must have very strong written and oral English language skills, a Bachelors degree, at least 5 years for project management or related experience, and be a fluent user of MS Office products. MS Project and Visio knowledge is a plus. Candidate will have knowledge of XML in order to validate orders flowing through Verizon Order Entry SystemsAlso requires a broad range of skills within a professional discipline to effectively perform complex assignments; demands familiarity with principles, theories, concepts and technologies as well as applied knowledge of established procedures, policies and practices Additional Qualifications: In depth understanding of entire life cycle development process, including specification, documentation and quality assurance. General analytical skills. Highly skilled in research, project planning and implementation. Awareness of business issues as they impact outputs expected from a Quality Assurance team. Abreast of Industry standards and best practices for Quality Assurance and Testing. Familiarity with quality assurance tools and automation concepts.        \r\n        Job ID: 464155"
    end
  end

end
