Feature: QUESTION-5

  # 5. Verify that you can create a new book via PUT.
  #    • The book should be returned in the response.
  #    • GET on /api/books/<book_id>/ should return the same book.

  Scenario: QUESTION-5 - öncelikle bir put method
    Given url 'https://..../api/books/'
    And request
    """
    {
      "id" : 6,
      "author" : "Semih Saydam",
      "title"  : "Kibritçi Kız"
    }
    """
    When method post
    Then status 200
    Then print response
    * def first = response

    Given url 'https://..../api/books/6'
    And request
    """
     "id" : 6,
     "author" : "Semih",
     "title"  : "80 günde devri alem"
    """
    When method put
    Then status 200
    Then print response
    * def second = response

    Given url 'https://..../api/books/6'
    When method get
    Then status 200
    Then print response
    * def third = response

    Then assert second == third