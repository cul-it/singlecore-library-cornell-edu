# encoding: UTF-8
Feature: Search Results index should display a useful subset of the fields
@DLXS

    Scenario Outline: Various collections should have their specific fields in the index view
        Given I browse collection nicknamed '<nickname>'
        And I search for asset '<asset_title>'
        Then result <number> field '<field>' should begin '<beginning>'

    Examples:
    | nickname | asset_title | number | field | beginning |
    #| chla  | A Hoosier village | 1  | Creator  | Sims, Newell LeRoy |
    | prisonwritings | James Madison lithograph | 1 | Creator | Gilbert Stuart |
    | prisonwritings | James Madison lithograph | 1 | Collection | 19th Century Prison |
    | prisonwritings | James Madison lithograph | 1 | Date | ca. 1840 |
    | prisonwritings | James Madison lithograph | 1 | Format | Image |

