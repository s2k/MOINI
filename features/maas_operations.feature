Feature: The service can process binary operations

  We need operations such as plus, minus etc. for the service

  Scenario Outline: Adding to operands
    Given the operands <op1> and <op2>
    When the two are processed using <operation>
    Then the result should be <result>
    Examples:
      |   op1 |   op2 | operation       | result |
      | 'Foo' | 'Bar' | addition        | FooBar |
      |     0 |     0 | addition        |      0 |
      |    13 |    29 | addition        |     42 |
      |   '*' |     4 | multiplication  |   **** |
      |     7 |     0 | multiplication  |      0 |
      |     7 |     7 | multiplication  |     49 |
