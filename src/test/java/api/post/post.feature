Feature: Post

Background:
* url: 'https://automationexercise.com'

Scenario: Create a user
    * def create_user_request =
    """
    {
      "name": "Juan Perez",
      "email": "juan.perez@example.com",
      "password": "Password123!",
      "title": "Mr",
      "birth_date": "15",
      "birth_month": "05",
      "birth_year": "1990",
      "firstname": "Juan",
      "lastname": "Perez",
      "company": "Tech Solutions",
      "address1": "Calle Falsa 123",
      "address2": "Apt 4B",
      "country": "Colombia",
      "zipcode": "050001",
      "state": "Antioquia",
      "city": "Medellín",
      "mobile_number": "+573001234567"
    }
    """
    Given path '/api/createAccount?'
    And request create_user_request
    When method post
    Then status 201

