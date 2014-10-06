Feature: Student turns in assignment 2
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @Ready
  Scenario: Grader verifies the title is Assignment 2 in the document
    Given Successful navigation to a students page
    Then the title of the current page is "Assignment 2"

  @Ready
  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  @Ready
  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists

  @Ready
  Scenario: Grader verifies the existence of the h1 tag with content Assignment 2 and ID assignment
    Given Successful navigation to a students page
    Then I validate that a h1 tag with an id of "assignment" and content "Assignment 2" exists  	

  @Ready
  Scenario: Grader verifies the existence of the h2 tag with content Internet Systems Programming and ID class-title
    Given Successful navigation to a students page
    Then I validate that a h2 tag with an id of "class-title" and content "Internet Systems Programming" exists  	

  @Ready
  Scenario: Grader verifies the existence of the line break
    Given Successful navigation to a students page
    Then I validate that a line break exists

  @Ready
	Scenario: Grader verifies the existence of the horizontal rules
    Given Successful navigation to a students page
    Then I validate that a horizontal rule exists

  @Ready
  Scenario: Grader verifies the existence of an image
    Given Successful navigation to a students page
    Then I validate that an image with source and alt exists
	
  @Ready
	Scenario: Grader verifies the existence of a link tag
    Given Successful navigation to a students page
    Then I validate that an link tag exists
	
  @Ready
	Scenario: Grader verifies the existence that an unordered list
    Given Successful navigation to a students page
    Then I validate that an unordered list with an id of "u-list" exists
	
  @Ready
	Scenario: Grader verifies the existence that a ordered list
    Given Successful navigation to a students page
    Then I validate that an ordered list with an id of "o-list" exists
	
  @Ready
	Scenario: Grader verifies the existence of a table,header,columns and rows
    Given Successful navigation to a students page
    Then I validate that a table with id of "table",header,columns and rows exists
	
  @Ready
	Scenario: Grader verifies the existence of a document level CSS
    Given Successful navigation to a students page
    Then I validate that a document level CSS exists
	
  @Ready
	Scenario: Grader verifies the existence of a external level CSS
    Given Successful navigation to a students page
    Then I validate that a external level CSS exists
	
  @Ready
	Scenario: Grader verifies the existence of a inline level CSS
    Given Successful navigation to a students page
    Then I validate that a inline level CSS exists
	
	Scenario: Grader verifies the existence of specific css styles
    Given Successful navigation to a students page
    Then I display the styles defined
