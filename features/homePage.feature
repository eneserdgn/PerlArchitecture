Feature: Test Suite
  behavior driven development

  @Tag
  Scenario: Test Case 1
    Given user is on the Home Page
    When click to Contact Us Button on Home Page
    Then should see the Contact Us Page
    When sendkeys Name "name" on Contact Us Page
    When sendkeys Surname "surname" on Contact Us Page
    When sendkeys Email "email" on Contact Us Page
    When sendkeys Company Name "companyname" on Contact Us Page
    When sendkeys Request "request" on Contact Us Page
    When click to Contact Button on Contact Us Page
    Then should see Popup on Contact Us Page

  Scenario: Test Case 2
    Given user is on the Home Page
    When click to Contact Us Button on Home Page
    Then should see the Contact Us Page
    When sendkeys Name "name" on Contact Us Page
    When sendkeys Surname "surname" on Contact Us Page
    When sendkeys Email "email" on Contact Us Page
    When sendkeys Company Name "companyname" on Contact Us Page
    When sendkeys Request "request" on Contact Us Page
    When click to Contact Button on Contact Us Page
    Then should see Popup on Contact Us Page

  Scenario: Test Case 2
    Given user is on the Home Page
    When click to Contact Us Button on Home Page
    Then should see the Contact Us Page
    When sendkeys Name "name" on Contact Us Page
    When sendkeys Surname "surname" on Contact Us Page
    When sendkeys Email "email" on Contact Us Page
    When sendkeys Company Name "companyname" on Contact Us Page
    When sendkeys Request "request" on Contact Us Page
    When click to Contact Button on Contact Us Page
    Then should see Popup on Contact Us Page