Given("I am student") do
  @user = FactoryBot.create :student
end

Given("I am signed in") do

  visit '/users/sign_in'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end

Then("I should see the courses being offered") do
  visit '/course_offerings'
end

Then("I go to see the courses to register") do
  visit '/registration_courses'
end

Then ("I should see the link to register a course") do
  #save_and_open_page
  expect(page).to have_link('New Registration Course')
end

Then("I click on a course") do
  find_link('New Registration Course').click
end

Then("I should see the register page") do
  visit '/registration_courses/new'
end

When("I click on register") do

  #save_and_open_page
  @usr= FactoryBot.build :user2
  @course = FactoryBot.build :course
  @courseoff = FactoryBot.build :course_off

  @register = FactoryBot.build :register
  fill_in 'Grade', with: @register.grade
  fill_in 'User', with: @register.user_id
  fill_in 'Course offering', with: @courseoff.course_id
  click_button 'Create Registration course'
end

Then("that course should be registered") do
  visit '/'
end