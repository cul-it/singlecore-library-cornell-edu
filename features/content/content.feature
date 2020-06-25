# encoding: UTF-8
Feature: Check the visibility of content in development vs production

@content

@DIGCOLL-1682
@content-formats
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

@DIGCOLL-1682
@content-assets-suppressed
Scenario Outline: Certain assets only show in the appropriate environment
    Given I enable the '<environment>' environment
        And I go to asset '<id>'
        Then show environment
        Then I see the asset is suppressed

Examples:
| comment | environment | id |
| Articles | production  | chla7043995_7-8_articles_27 |