Feature: The Saucedemo Login page

  Scenario Outline: As a user, I can not login with invalid credentials

    Given User is located on the login page of saucedemo website
    When User login with '<username>' and '<password>'
    Then User should see '<message>' error message

    Examples:
      | username           | password             | message                                                                   |
      | standard_user      | invalid_password     | Epic sadface: Username and password do not match any user in this service |
      | invalid_user       | secret_sauce         | Epic sadface: Username and password do not match any user in this service |

  
  Scenario Outline: As a user, I can not login without credentials

    Given User is located on the login page of saucedemo website
    When User click Login button
    Then User should see '<message>' error message

    Examples:
      | message                            |
      | Epic sadface: Username is required |