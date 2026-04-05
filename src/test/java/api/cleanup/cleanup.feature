Feature: Cleanup

Background:
  * url 'https://automationexercise.com'

Scenario: Delete test user if exists
  Given path '/api/deleteAccount'
  And form field email = testEmail
  And form field password = testPassword
  When method delete
  Then status 200
