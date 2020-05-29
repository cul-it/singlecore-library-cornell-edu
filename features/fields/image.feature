# encoding: UTF-8
Feature: Compound and Related Images

    Scenario Outline: Both Compound and Related Images should coexist in the collections

    @image
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

    @image
    @image-multi
    Scenario Outline: Multi image collections should show Additional Views
        Given I browse collection nicknamed '<nickname>'
            And I search for asset '<asset_title>'
            And I click on text '<asset_title>'
            Then show me the page
            Then I should see <count> additional views

    Examples:
    | nickname | asset_title | count |
    | impersonator  | Monsieur R. Bertin - Imitant Yvette Guilbert | 10 |
