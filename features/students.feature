Feature: Student
  Scenario:What a student see when they are signed in
    Given I am student
    And I am signed in
    Then I should see the courses being offered
    Then I go to see the courses to register
    Then I should see the link to register a course
    And I click on a course
    Then I should see the register page
    When I click on register
    Then that course should be registered
