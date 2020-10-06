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
| dendro | production | ss:22143504 |
| divinecomedy | production | ss:303416 |
| dynkin | production | ss:22361895 |
| harrisson | production | ss:25914539 |
| kassoy | production | ss:479861 |
| kmoddl | production | ss:372824 |
| leuenberger | production | ss:9469095 |
| paniccioli | production | ss:8432316 |
# | seneca | production | ss:24767712 |
| cooper | production | cooper:0107 |
| ezra | production | ezraGene000 |
| izquierda | production | izquierda1300_1359 |
| liber | production | liber100_99 |
| may | production | may927218_9 |
| nur | production | nur27870_1 |
| sat | production | satkf06_99 |
| scott | production | scott7042_2 |
| sea | production | seaA29c_8 |
| witchcraft | production | witchcraft176_99 |
| active_fedora_model_ssi Page | production | nur00420_4 |
| suppressed rare | production | ss:550947 |
| suppressed clairholt | production | ss:321396 |
| suppressed sterrett | production | ss:12561355 |
| suppressed artifacts | production | ss:640913 |

@DIGCOLL-1686
@content-assets-not-suppressed
Scenario Outline: In production, only the first multiview object shows in the index, but multiview objects are available
    Given I enable the 'production' environment
        And I browse collection nicknamed '<nickname>'
        And I search for asset '<asset_title>'
        Then I should not see id '<second_id>' in the search results
        And I go to asset '<second_id>'
        Then the field labeled 'Title' should begin with '<second_title>'
        Then I enable the 'development' environment

Examples:
    | nickname | asset_title | second_title | second_id | comment |
    | impersonator | Arigon - Imitateur | Arigon - Imitateur (verso) | ss:24415885 | back of postcard |
    | impersonator | Florin Imitateur | Florin Imitateur (verso) | ss:24415925 | back of postcard |
    # | seneca | Gooseberry seed | Gooseberry seed | ss:22376969 | pita |
    | blaschka | Histioteuthis reversa | Histioteuthis reversa | ss:20108238 | |
    | tellennasbeh | Plan 109 (center) | Plan 109 (center) | ss:19102646 | |

Scenario: Reset to development environment in case of failure above
    Given I enable the 'development' environment