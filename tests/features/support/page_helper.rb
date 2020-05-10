Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects
    def homepage
        @homepage ||= HomePage.new
    end

    def live_schedule
        @live_schedule ||= LiveSchedulePage.new
    end
end