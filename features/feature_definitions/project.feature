Feature: Project smoke test

  Background:
    Given I have a set of connection to PivotalTrackerAPI API service

  Scenario: Projects Get
    When I send Get request to projects/ endpoint
    Then I expect Status code 200 for the SmokeTest

  Scenario: Projects Post
    When I send Post request to projects/ endpoint with the json
  """
  {"name":"test07"}
  """
    Then I expect Status code 200 from projects post

  Scenario: Project Put
    When I send Put request to "projects/" endpoint with the json
  """
  {"name":"testModify07"}
  """
    Then I expect Status code "200" from projects put

  Scenario: Project Get by Id
    When I send Get by id request to "projects/" endpoint
    Then I expect Status code "200" from projects Get by Id

  Scenario: Project Delete
    When I send Delete request to "projects/" endpoint
    Then I expect Status code "204" from projects Delete