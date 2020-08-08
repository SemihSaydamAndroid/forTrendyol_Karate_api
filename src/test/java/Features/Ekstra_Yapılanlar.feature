Feature: Ekstralar

  Scenario: POST- işlemi yaparak geçersiz kullanıcı için error Mesajı dönecektir. Bu mesajın içeriğinin doğruluğunu kontrol edelim
    Given url 'https://reqres.in/api/register'
    * def myRequest =
    """
      {
        "email": "sydney@fife"
      }
    """
    And request myRequest
    When method post
    # Başarız register olduğundan HTTP status code 400 olarak dönmeli :
    Then status 400
     # Burada errorMesajı kontrol işin assertion yapıyoruz
    And match response.error == 'Missing password'
    Then print response
    Then print responseTime



  #Karate'de testlerinize Tag verebilirsiniz. Örneğin 30 senaryonuzdan 10 tanesinde Get yapıyorsanız onlara GET tag'i verdikten sonra 10'unu grup halinde çağırabilirsiniz
  @FunctionTest
  Scenario: KARATEnin çokca yeteneği vardır. Bunlardan biri de fonksiyon çalıştırabilmedir. Basit haliyle şu şekilde
      * def random_string =
      """
      function(s) {
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        for (var i = 0; i < s; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));
        return text;
      }
      """
      * def sessionId =  random_string(10)
      Then print sessionId

  @ResponseTags @myTag1
  Scenario: Fonksiyon kavramı sayesinde testlerimiz çeşitleniyor. Mesela gelen Response dataları içinden id=9 olanı seçmek için şöyle basit bir kod

         Given url 'https://reqres.in/api/users?page=2'
         When method get
         Then status 200
        Then print response
        * def data = response.data
        Then print 'data----',data

        * def myFun =
        """
        function(arg){
          for(i=0; i<arg.length; i++){
            if(arg[i].id == 9){
          return arg[i]
            }
          }
        }
         """

        * def userDetails = call myFun data
        Then print 'userDetails-----',userDetails

