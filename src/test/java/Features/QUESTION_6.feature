Feature: QUESTION-6
  Scenario: QUESTION-6

    # Öncelikle GET methodu ile users/2 path'indeki kullanıcıya bakacağız. Sonra aynı bilgiler ile PUT isteği atacağız.
    # Bilgiler mevcut olduğu için hata veriyor olmalı
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then print response

    * def myRequest = read('userForQuestion_6.json')
    Given request myRequest
    When method put
    Then status 200
    Then print response


