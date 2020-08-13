 Feature: QUESTION-4

   ## 4. Verify that the id field is read−only.
   ##    • You shouldn't be able to send it in the PUT request to /api/books/.

    Scenario:  QUESTION-4

      Given url 'https://reqres.in/api/users/2'
      * def Myrequest2 = read('userForQuestion2.json')
      * set Myrequest2.name = 'semih'
      * set Myrequest2.id = 'xxx'
      Given request Myrequest2
      When method put
      Then status 200
      Then print response

      ## this API allow for change id

