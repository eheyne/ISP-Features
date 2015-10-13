Feature: Student turns in SVG assignment
  As a Grader
  I want to be able to confirm that a student's web page is properly structured

  Background:
    Given A browser is installed on the machine

  @SVGReady
  Scenario: Grader verifies the title is SVG Assignment in the document
    Given Successful navigation to a students page
    Then the title of the current page is "SVG Assignment"

  @SVGReady
  Scenario: Grader verifies the existence of the students name in a span tag
    Given Successful navigation to a students page
    Then I validate that a span tag with an id of "name" exists

  @SVGReady
  Scenario: Grader verifies the existence of the date/time in a p tag
    Given Successful navigation to a students page
    Then I validate that a p tag with an id of "date" exists

  @SVGReady
  Scenario: Grader verifies the existence of the h1 tag with content SVG Assignment and ID assignment
    Given Successful navigation to a students page
    Then I validate that a h1 tag with an id of "assignment" and content "SVG Assignment" exists  	

  @SVGReady
  Scenario: Grader verifies the existence of the h2 tag with content Internet Systems Programming and ID class-title
    Given Successful navigation to a students page
    Then I validate that a h2 tag with an id of "class-title" and content "Internet Systems Programming" exists  	

  @SVGReady
  Scenario: Grader verifies the existence of a Rectangle
    Given Successful navigation to a students page
    Then I validate that a SVG "rect" exists

  @SVGReady
	Scenario: Grader verifies the existence of a Circle
    Given Successful navigation to a students page
    Then I validate that a SVG "circle" exists

  @SVGReady
  Scenario: Grader verifies the existence of an Ellipse
    Given Successful navigation to a students page
    Then I validate that a SVG "ellipse" exists
	
  @SVGReady
	Scenario: Grader verifies the existence of a Line
    Given Successful navigation to a students page
    Then I validate that a SVG "line" exists

  @SVGReady
	Scenario: Grader verifies the existence of a Path
    Given Successful navigation to a students page
    Then I validate that a SVG "path" exists
    And Something

