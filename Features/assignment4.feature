Feature: Student turns in assignment 4
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @Ready4
  Scenario: Grader verifies the title is Assignment 4 in the document
    Given Successful navigation to a students page
    Then the title of the current page is "Assignment 4"

  @Ready4
  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  @Ready4
  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists

  @Ready4
  Scenario: Grader verifies the existence of the h1 tag with content Assignment 4 and ID assignment
    Given Successful navigation to a students page
    Then I validate that a h1 tag with an id of "assignment" and content "Assignment 4" exists  	

  @Ready4
  Scenario: Grader verifies the existence of the h2 tag with content Internet Systems Programming and ID class-title
    Given Successful navigation to a students page
    Then I validate that a h2 tag with an id of "class-title" and content "Internet Systems Programming" exists  	

  @Ready4
  Scenario: Grader verifies the existence of the output field
    Given Successful navigation to a students page
    When I validate that a form field with the name "output" and type "text" exists
    Then I validate that the form field with the name "output" has a default value of 0

  @Ready4
  Scenario: Grader verifies the existence of the input field
    Given Successful navigation to a students page
    When I validate that a form field with the name "input" and type "text" exists
    Then I validate that the form field with the name "input" has a default value of 0

  @Ready4
  Scenario: Grader verifies the existence of the add button
    Given Successful navigation to a students page
    Then I validate that a form field with the name "add" and type "submit" exists

  @Ready4
  Scenario: Grader verifies the existence of the subtract button
    Given Successful navigation to a students page
    Then I validate that a form field with the name "subtract" and type "submit" exists

  @Ready4
  Scenario: Grader verifies the existence of the multiply button
    Given Successful navigation to a students page
    Then I validate that a form field with the name "multiply" and type "submit" exists

  @Ready4
  Scenario: Grader verifies the existence of the divide button
    Given Successful navigation to a students page
    Then I validate that a form field with the name "divide" and type "submit" exists

  @Ready4
  Scenario: Grader verifies the existence of the equals button
    Given Successful navigation to a students page
    Then I validate that a form field with the name "equal" and type "submit" exists

  @Ready4
  Scenario: Grader verifies the addition functionality
    Given Successful navigation to a students page
    When I enter the value "5" in the "input" form text field
    And I click the "add" button
    Then I should see the correct result in the "output" form field
   
  @Ready4
  Scenario: Grader verifies the subtract functionality
    Given Successful navigation to a students page
    When I enter the value "5" in the "input" form text field
    And I click the "subtract" button
    Then I should see the correct result in the "output" form field

  @Ready4
  Scenario: Grader verifies the multiply functionality
    Given Successful navigation to a students page
    When I enter the value "5" in the "input" form text field
    And I click the "equal" button
    And I click the "multiply" button 
    Then I should see the correct result in the "output" form field

  @Ready4
  Scenario: Grader verifies the divide functionality
    Given Successful navigation to a students page
    When I enter the value "500" in the "input" form text field
    And I click the "equal" button
    When I enter the value "5" in the "input" form text field
    And I click the "divide" button 
    Then I should see the correct result in the "output" form field
