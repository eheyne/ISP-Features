Feature: Student turns in assignment 3
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

	@Assignment3
  Scenario: Grader verifies the title is Assignment 3 in the document
    Given Successful navigation to a students page
    Then the title of the current page is "Assignment 3"

  @Assignment3
  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  @Assignment3
  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists

  @Assignment3
  Scenario: Grader verifies the existence of the h1 tag with content Assignment 3 and ID assignment
    Given Successful navigation to a students page
    Then I validate that a h1 tag with an id of "assignment" and content "Assignment 3" exists  	

  @Assignment3
  Scenario: Grader verifies the existence of the h2 tag with content Internet Systems Programming and ID class-title
    Given Successful navigation to a students page
    Then I validate that a h2 tag with an id of "class-title" and content "Internet Systems Programming" exists  	

  @Assignment3
  Scenario: Grader verifies the existence of a form tag
    Given Successful navigation to a students page
    Then I validate that a form tag exists

  @Assignment3
  Scenario: Grader verifies the existence of a name form field and validates its form
    Given Successful navigation to a students page
    Then I validate that a form field with the name "name" and type "text" exists

  @Assignment3
  Scenario: Grader verifies the existence of a password form field and validates its form
    Given Successful navigation to a students page
    Then I validate that a form field with the name "password" and type "password" exists

  @Assignment3
  Scenario: Grader verifies the existence of a email address form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "email" and type "text" exists

  @Assignment3
	Scenario: Grader verifies the existence of a phone form field and validates form
    Given Successful navigation to a students page
    Then I validate that a form field with the name "phone" and type "text" exists
	
	@Assignment3
	Scenario: Grader verifies the existence of a address form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "address" and type "text" exists
	
  @Assignment3
	Scenario: Grader verifies the existence of a date form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "date" and type "text" exists
	
	@Assignment3
	Scenario: Grader verifies the existence of a time form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "time" and type "text" exists
	
	@Assignment3
	Scenario: Grader verifies the existence of a numeric form field
    Given Successful navigation to a students page
    Then I validate that a form field with the name "numeric" and type "text" exists
	
