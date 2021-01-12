# encoding: UTF-8
Feature: Check the visibility of copyrighted material

@copyright

@DIGCOLL-1886
Scenario Outline: Only issues before a certain year should be visible
    Given I go to asset '<asset_id>'
    Then the publication name should be '<title>'
    And the first issue year shoud be '<earliest>'
    And the last issue year shoud be '<latest>'

Examples:
    | asset_id | title | earliest | latest |
    | hearth1891092 | The Delineator | 1878 | 1925 |

