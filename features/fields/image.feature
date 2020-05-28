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