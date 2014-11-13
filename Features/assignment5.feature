Feature: Student turns in assignment 5
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @Ready5
  Scenario: Grader verifies the title is Assignment 5 in the document
    Given Successful navigation to a students page
    Then the title of the current page is "Assignment 5"

  @Ready5
  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  @Ready5
  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists

  @Ready5
  Scenario: Grader verifies the existence of the h1 tag with content Assignment 5 and ID assignment
    Given Successful navigation to a students page
    Then I validate that a h1 tag with an id of "assignment" and content "Assignment 5" exists  	

  @Ready5
  Scenario: Grader verifies the existence of the h2 tag with content Internet Systems Programming and ID class-title
    Given Successful navigation to a students page
    Then I validate that a h2 tag with an id of "class-title" and content "Internet Systems Programming" exists  	

  @Ready5
  Scenario: Grader checks for all form fields
    Given Successful navigation to a students page
    Then I validate that a form field with the name "phone" and type "text" exists
    And I validate that a form field with the name "fname" and type "text" exists
    And I validate that a form field with the name "mi" and type "text" exists
    And I validate that a form field with the name "lname" and type "text" exists
    And I validate that a form field with the name "account" and type "text" exists

  @Ready5
  Scenario: Grader checks that entering an existing phone number into the phone number field and then leaving, pre-fills the name and account
    Given Successful navigation to a students page
    And I enter the value "7777171" in the "phone" form text field
    And I enter the value "abc" in the "fname" form text field
    And I enter the value "d" in the "mi" form text field
    And I enter the value "efg" in the "lname" form text field
    And I enter the value "1000" in the "account" form text field
    And I click the submit button
    When I enter the value "7777171" in the "phone" form text field
    And I leave the input field with the name "phone" 
    Then I should see the correct value of "abc" in the "fname" form text field
    And I should see the correct value of "d" in the "mi" form text field
    And I should see the correct value of "efg" in the "lname" form text field
    And I should see the correct value of "1000" in the "account" form text field

  @Ready5
  Scenario: Grader checks that entering a phone number that does not exist and then leaving, handles not finding a match
    Given Successful navigation to a students page
    When I enter the value "9182734" in the "phone" form text field
    And I leave the input field with the name "phone" 
    Then I should see the correct value of "" in the "fname" form text field
    And I should see the correct value of "" in the "mi" form text field
    And I should see the correct value of "" in the "lname" form text field
    And I should see the correct value of "" in the "account" form text field

