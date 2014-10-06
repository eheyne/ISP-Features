Feature: Student turns in assignment 3
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @Ready
  Scenario: Grader verifies the title is Assignment 3 in the document
    Given Successful navigation to a students page
    Then the title of the current page is "Assignment 3"

  @Ready
  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  @Ready
  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists

  @Ready
  Scenario: Grader verifies the existence of the h1 tag with content Assignment 3 and ID assignment
    Given Successful navigation to a students page
    Then I validate that a h1 tag with an id of "assignment" and content "Assignment 3" exists  	

  @Ready
  Scenario: Grader verifies the existence of the h2 tag with content Internet Systems Programming and ID class-title
    Given Successful navigation to a students page
    Then I validate that a h2 tag with an id of "class-title" and content "Internet Systems Programming" exists  	

  @Ready
  Scenario: Grader verifies the existence of a form tag
    Given Successful navigation to a students page
    Then I validate that a form tag exists

  @Ready
  Scenario: Grader verifies the existence of a name form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "name" and type "text" exists

  @Ready
  Scenario: Grader verifies the existence of a password form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "password" and type "password" exists

  @Ready
  Scenario: Grader verifies the existence of a email address form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "email" and type "text" exists
