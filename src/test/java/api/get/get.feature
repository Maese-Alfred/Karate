Feature: Get

Background:
 * url 'https://automationexercise.com'

Scenario: Get All products
    Given path '/api/productsList'
    When method get
    Then status 200
