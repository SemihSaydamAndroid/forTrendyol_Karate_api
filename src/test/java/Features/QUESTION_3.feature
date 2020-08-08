Feature: QUESTION-3

  Scenario: QUESTION 3 - required alanların boş gönderilmesi sonucu hata alınması
    Given url 'https://reqres.in/api/users/2'
    * def Myrequest2 = read('userForQuestion2.json')
    * set Myrequest2.name = ''
    * set Myrequest2.job = ''
    Given request Myrequest
    When method put
    Then status 200
    Then print response




