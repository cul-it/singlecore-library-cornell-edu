# encoding: UTF-8
Feature: Check the visibility of content in development vs production

@content

@DIGCOLL-1682
Scenario Outline: Only certain Formats should be visible in production
    Given I enable the '<environment>' environment
        And I search for everything
        And I click more » on the '<facet>' facet
        And I go to page <page> of the facet modal
        Then I should not see a facet labeled '<unwanted>'

Examples:
| environment | facet | unwanted | page |
| production  | Format  | Articles  | 1 |
| production  | Collection  | Bernard Kassoy Teacher News Cartoons | 1 |
| production  | Collection  | Digital Tamang | 2 |
