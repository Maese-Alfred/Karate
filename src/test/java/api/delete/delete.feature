Feature: Delete

Background:
 * url 'https://automationexercise.com'

Scenario: Delete a user
  Given path '/api/deleteAccount'
  And form field email = testEmail
  And form field password = testPassword
  When method delete
  Then status 200
  And match response.responseCode == 200
  And match response.message == 'Account deleted!'

