Feature: Sample API Test

  Scenario: Crear un Usuario
    Given url 'https://petstore.swagger.io/v2/user'
    And def payload =
    """
  {
   "id": 1,
  "username": "chrismarti",
  "firstName": "Christian",
  "lastName": "Martinez",
  "email": "testing@gmail.com",
  "password": "1234",
  "phone": "0965432474",
  "userStatus": 0

}
    """
    And request payload
    When method POST
    Then status 200

  Scenario: Buscar el usuario creado ingresado previamente (Búsqueda por username)
    Given url 'https://petstore.swagger.io/v2/user/chrismarti'
    When method GET
    Then status 200
    And match response.username == 'chrismarti'
    And match response.firstName == 'Christian'
    And match response.id == 1

  Scenario: Actualizar el nombre y el correo del usuario
    Given url 'https://petstore.swagger.io/v2/user/chrismarti'
    And def payload =
    """
  {
   "id": 1,
  "username": "chrismarti",
  "firstName": "Josue",
  "lastName": "Martinez",
  "email": "testing2@gmail.com",
  "password": "1234",
  "phone": "0965432474",
  "userStatus": 0
}
    """
    And request payload
    When method PUT
    * print response
    Then status 200

  Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)
    Given url 'https://petstore.swagger.io/v2/user/chrismarti'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.email == 'testing2@gmail.com'
    And match response.firstName == 'Josue'
    * print response


