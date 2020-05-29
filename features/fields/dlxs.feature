# encoding: UTF-8
Feature: DLXS collection fields
@DLXS

    Scenario Outline: DLXS collections should have their specific fields in the index view
        Given I browse collection nicknamed '<nickname>'
        And I search for asset '<asset_title>'
        Then result <number> field '<field>' should begin '<beginning>'

    Examples:
    | nickname | asset_title | number | field | beginning |
    | chla  | A Hoosier village | 1  | Creator  | Sims, Newell LeRoy |

