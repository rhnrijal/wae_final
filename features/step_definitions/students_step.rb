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
  expect(page).to have_link('New Registration Course', href: new_registration_course_path(@regitration_courses))
end

Then("I click on a course") do
  find_link('New Registration Course', href: new_registration_course_path(@regitration_courses)).click
end

Then("I should see the register page") do
  visit '/registration_courses/new'
end

When("I click on register") do
  fill_in 'Grade', with: @registration_course.grade
  fill_in 'User', with: @registration_course.user.id
  fill_in 'Course offering', with: @registration_course.course_offering.id
  click_button 'Create Registration course'

end

Then("that course should be registered") do
  expect(page).to have_content @registration_course.grade
  expect(page).to have_content @registration_course.user.id
  expect(page).to have_content @registration_course.course_offering.id
end