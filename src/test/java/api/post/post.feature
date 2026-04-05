Feature: Post

Background:
  * url 'https://automationexercise.com'

Scenario: Create a user
  Given path '/api/createAccount'
  And form field name = 'Juan Perez'
  And form field email = testEmail
  And form field password = testPassword
  And form field title = 'Mr'
  And form field birth_date = '15'
  And form field birth_month = '05'
  And form field birth_year = '1990'
  And form field firstname = 'Juan'
  And form field lastname = 'Perez'
  And form field company = 'Tech Solutions'
  And form field address1 = 'Calle Falsa 123'
  And form field address2 = 'Apt 4B'
  And form field country = 'Colombia'
  And form field zipcode = '050001'
  And form field state = 'Antioquia'
  And form field city = 'Medellin'
  And form field mobile_number = '+573001234567'
  When method post
  Then status 200
  And match response.responseCode == 201
  And match response.message == 'User created!'

