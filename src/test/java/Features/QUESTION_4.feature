
  Feature: QUESTION-4
    Scenario: QUESTION-4 ID:2 olanı çağırabiliyoruz.
      Given url 'https://reqres.in/api/users/2'
      * def Myrequest = read('userForQuestion2.json')
      * set Myrequest.name = 'semih'
      Given request Myrequest
      When method put
      Then status 200
      Then print response

    Scenario:  QUESTION-4 soruda istenilen gibi id: xxx verilerek test edilir
      # Bu kısım kullandığım API'den dolayı hata vermedi. id kısmını read-only yapmadıklarından olabilir. ID de setleyebildim ve response'a yansıdı bu alan

      Given url 'https://reqres.in/api/users/2'
      * def Myrequest2 = read('userForQuestion2.json')
      * set Myrequest2.name = 'semih'
      * set Myrequest2.id = 'xxx'
      Given request Myrequest2
      When method put
      Then status 200
      Then print response

