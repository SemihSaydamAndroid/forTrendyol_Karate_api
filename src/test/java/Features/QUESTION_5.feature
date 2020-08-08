Feature: QUESTION-5
  Scenario: QUESTION-5 - öncelikle bir put method
    Given url 'https://reqres.in/api/users/2'
    * def Myrequest = read('userForQuestion2.json')
    * set Myrequest.name = 'semih'
    * set Myrequest.job = 'saydam'
    Given request Myrequest
    When method put
    Then status 200
    Then print response
    #response kısmında PUT işlemini yapabildiğimizi ve "updatedAt" ile güncellenen saati göstermektedir.

    When method GET
    Then status 200
    Then print response

    #Burada normalde PUT ettiğimiz url'e tekrar GET methodu atıyor. Fakat yine API kaynaklı olarak bu işlem gerçekleştirilemedi.
