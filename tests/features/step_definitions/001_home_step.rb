Given("I am on the Homepage page") do
    homepage.load
end

And("I close the modal") do
    homepage.click_close_modal
end

When("I click on the Programação link") do
    homepage.click_link_programation
end

Then("I confirm that I am on the Programação page") do
    expect(page).to have_current_path('/programacao')
end
