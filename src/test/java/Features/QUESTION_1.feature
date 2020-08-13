 Feature: QUESTION-1

   # 1. Verify that the API starts with an empty store.
   #   • At the beginning of a test case, there should be no books stored on the server.

    Scenario: QUESTION 1 ---- HTTP
      Given url 'https://...../api/books'
      When method get
      Then status 200
      Then print response
      And match response ==
      """
      {}
      """

