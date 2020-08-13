Feature: QUESTION-3

  #  3. Verify that title and author cannot be empty.
  #    • PUT on /api/books/ should return an error Field '<field_name>' cannot be empty.

  Scenario: QUESTİON 3 ---- Verify that title and author are required fields cannot be empty.
    Given url 'https://..../api/books/'
    And request
    """
    {
    "id" : 2,
    "author" : "",
    "title" : ""
    }
    """
    When method put
    ##http404
    Then status 404
    Then print response
    And match response
    """
    {"error": "Field 'author' and 'title' is cannot be empty."}
    """
