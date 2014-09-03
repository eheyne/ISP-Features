Feature: Student turns in assignment 2
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @Ready
  Scenario: Grader verifies the existence of a p tag in the document
    Given Successful navigation to a students page
    Then the title of the current page is "Assignment 2"

  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists
