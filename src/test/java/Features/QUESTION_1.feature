 Feature: QUESTION-1

    Scenario: QUESTION 1 ---- HTTP 404
      Given url 'https://reqres.in/api/'
      When method get
      Then status 404
      Then print response