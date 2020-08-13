Feature: QUESTION-6

  # 6. Verify that you cannot create a duplicate book.
  #  • PUT on /api/books/ should return an error: Another book with similar title and author already exists.

  Scenario: QUESTION-6

    Given url 'https://..../api/books/'
    And request
    """
    {
    "id" : 7,
    "author" : "Semih Saydan",
    "title" : "Uçurtma Avcısı"
    }
    """
    When method put
    Then status 200
    Then print response

    Given 'https://..../api/books/'
    And request
    """
    {
    "id" : 8,
    "author" : "Semih Saydan",
    "title" : "Uçurtma Avcısı"
    }
    """
    When method put
    Then status 400
    Then print response
    And match response
    """
    {"error": "Another book with similar title and author already exists."}
    """


