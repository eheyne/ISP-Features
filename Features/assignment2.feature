Feature: Student turns in assignment 2
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @Ready
  Scenario: Grader verifies the existence of a p tag in the document
    Given Successful navigation to a students page
    When the title of the current page is "Assignment 2"
    When Page render is complete
    Then I validate that a p tag exists on the page
