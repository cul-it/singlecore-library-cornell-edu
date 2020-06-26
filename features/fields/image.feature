# encoding: UTF-8
Feature: Compound and Related Images
@image

    Scenario Outline: Both Compound and Related Images should coexist in the collections

    @image-compound
    Scenario Outline: Compound images should not show one item record per image
        Given I browse collection nicknamed '<nickname>'
            And I search for asset '<asset_title>'
            Then there should be <count> search results

    Examples:
    | nickname | asset_title | count |
    | blaschka  | Histioteuthis bonnellii | 2 |
    | anthrocollections | Polyhcrome bowl | 1 |
    | political-americana | National Convention & Election Handbook and Envelope | 1 |
    | stereoscopes | Gluggafoss | 1 |

    @image-multi
    Scenario Outline: Multi image collections should show Additional Views
        Given I go to asset id '<id>'
            Then I should see <count> additional views

    Examples:
    | nickname | id | count |
    | impersonator | 24415896 | 1 |
    | seneca | 22376760 | 6 |
    | tellennasbeh | 19102646 | 1 |
    | tellennasbeh | 19102650 | 1 |
    | anthrocollections | 1334130 | 6 |

    # @javascript
    # @image-compound-views
    # Scenario Outline: Compound images should show the correct number of additional images
    #     Given I go to asset id '<id>'
    #         Then I should see images in the referencestrip

    # Examples:
    # | nickname | id |
    # | blaschka  | 20108189  |
    # | anthrocollections | 2620202 |
    # | political-americana | 12503349 |
    # | stereoscopes | 9415843 |
