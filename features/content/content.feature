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
        Then I enable the 'development' environment

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
        Then I see the asset is suppressed
        Then I enable the 'development' environment

Examples:
| comment | environment | id |
| Articles | production  | chla7043995_7-8_articles_27 |
| Unpublished | production  | ss:26304225 |
| Adler suppressed | production | ss:26304125 |
# | gamelan ignores status_ssi? | production | ss:9904778 |
| ahearn | production | ss:15337425 |
# | claireholt | production | nnn |
| culmaps | production | ss:9472503 |
| divinecomedy | production | ss:303416 |
| dynkin | production | ss:22361895 |
| harrisson | production | ss:25914539 |
| kassoy | production | ss:479861 |
| leuenberger | production | ss:9469095 |
| paniccioli | production | ss:8432316 |
# | seneca | production | ss:24767712 | - no longer suppressed
| cooper | production | cooper:0107 |
| izquierda | production | izquierda1300_1359 |
# | liber | production | liber100_99 |
| nur | production | nur27870_1 |
| sat | production | satkf06_99 |
#| scott | production | scott7042_2 |
| sea | production | seaA29c_8 |
| active_fedora_model_ssi Page | production | nur00420_4 |

@DIGCOLL-1941
Scenario Outline: Suppressed Forum items should not be available in the development environment
    Given I enable the '<environment>' environment
        And I go to asset '<id>'
        Then I should see the text 'The page you are looking for doesn't exist.'
        Then I enable the 'development' environment

Examples:
    | environment | id |
    | development | ss:550947 |
    | production | ss:550947 |
    | development | ss:12561355 |
    | production | ss:12561355 |
    | development | ss:640913 |
    | production | ss:640913 |

@DIGCOLL-1900
@content-assets-suppressed
Scenario Outline: Now only Seneca suppresses the second and subsequent of multiple images
    When I browse collection nicknamed '<nickname>'
    And I search for asset '<asset_title>'
    Then I should not see id '<second_id>' in the search results
    And I go to asset '<second_id>'
    Then the field labeled 'Title (English)' should begin with '<second_title>'

Examples:
    | nickname | asset_title | second_title | second_id | comment |
    | seneca | Worked bone | Worked bone | ss:24135566 | pita |

@DIGCOLL-1900
@content-assets-not-suppressed
Scenario Outline: Other collections show the second and subsequent of multiple images
    Given I browse collection nicknamed '<nickname>'
    And I search for asset '<asset_title>'
    Then I should see id '<second_id>' in the search results
    And I go to asset '<second_id>'
    Then the field labeled 'Title' should begin with '<second_title>'

Examples:
    | nickname | asset_title | second_title | second_id | comment |
    | impersonator | Arigon - Imitateur | Arigon - Imitateur (verso) | ss:24415885 | back of postcard |
    | impersonator | Florin Imitateur | Florin Imitateur (verso) | ss:24415925 | back of postcard |
    | tellennasbeh | Plan 109 (center) | Plan 109 (center) | ss:19102646 | |
    | kmoddl | Verge and Foliot Escapement | Verge and Foliot Escapement | ss:29272027 | 4 views total |

Scenario: Reset to development environment in case of failure above
    Given I enable the 'development' environment