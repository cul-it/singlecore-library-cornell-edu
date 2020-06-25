# encoding: UTF-8
Feature: Check the visibility of content in development vs production

@content

@DIGCOLL-1682
Scenario Outline: Only certain Formats should be visible in production
    Given I enable the '<environment>' environment
        And I search for everything
        And I click more » on the '<facet>' facet
        Then I should not see a facet labeled '<unwanted>'

Examples:
| environment | facet | unwanted |
| production  | Format  | Articles  |
| development  | Format  | Articles  |
| development  | Collection  | Bernard Kassoy Teacher News Cartoons  |
| production  | Collection  | Bernard Kassoy Teacher News Cartoons  |
