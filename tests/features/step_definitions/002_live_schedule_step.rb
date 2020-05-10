Given("I am on the Programação page") do
    steps %{
        Given I am on the Homepage page
        And I close the modal
        When I click on the Programação link
    }
end

And("I confirm the title and duration of the program")do
    @title_live_program = live_schedule.program_title.text
    @live_program_duration = live_schedule.program_duration.text
end

When("I click on a live schedule item") do
    live_schedule.click_live_program
end
  
Then("I confirm that the schedule information is correct") do
    expect(live_schedule.modal_title.text).to eq @title_live_program
    expect(live_schedule.modal_program_duration.text).to eq @live_program_duration
end
  