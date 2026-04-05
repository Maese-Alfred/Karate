Feature: Delete

Background:
 * url 'https://automationexercise.com'

 Scenario: Delete a user
 * def delete_user_request =
 """
 {
 email, password
 }
 """
    Given path '/api/deleteAccount'
