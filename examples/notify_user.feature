Feature: Notify user when ice man is within walking distance
  As an MOINI user
  I want to be notified when the iceman is within walking distance
  so that I can get an ice cream when its hot

  Scenario: The ice man is within the configured range
    Given Imogen sets her walking distance for MOINI to 250m
    And there is an ice man close enough
    Then Imogen receives a message where the iceman is exactly
