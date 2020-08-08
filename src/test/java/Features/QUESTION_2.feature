Feature: QUESTION-2

  Scenario: QUESTİON 2 ---- Verify that title and author are required fields.
    Given url 'https://reqres.in/api/users/2'
    And request read('userForQuestion2.json')
    When method put
    Then status 200
    Then print response
    Then print responseTime
    # öncelikle başarılı şekilde userForQuestion2.json ile PUT atabildiğimizi gördük.
    # şimdi userForQuestion2.json içeriğindeki field'lara manipulasyon yapalım(json içeriğini kodla değiştireceğim) ve tekrar deneyelim :

    Given url 'https://reqres.in/api/users/2'
    * def Myrequest = read('userForQuestion2.json')
    * set Myrequest.name = 'semih'
    Given request Myrequest
    When method put
    Then status 200
    Then print response

    #gördüğünüz gibi json dosyasındaki isim kısmını manipüle ederek değiştirdim ve PUT isteğini atabildim. Şimdi soruda istendiği gibi bu alanları göndermeyelim
    # ve hata aldığını görelim :

  Scenario: QUESTION 2 - required alanların null gönderilmesi sonucu hata alınması
      Given url 'https://reqres.in/api/users/2'
    #required alanları olmayan bir json dosyası gönderiyorum
      * def Myrequest2 = read('userForQuestion2_requiredNull.json')
      Given request Myrequest2
      When method put
      Then status 200
      Then print response




