# encoding: UTF-8
Feature: Asset title
    In order to tell which asset I'm looking at
    As a user
    I want to see the asset title in all asset lists and detail views

    @fields
    Scenario Outline: View title in asset lists
        Given I browse collection nicknamed '<nickname>'
            Then I should see the text '<asset_title>'
            And I click on '<asset_title>'
            Then the page title should contain '<asset_title>'
            And the asset title field should contain '<asset_title>'

    Examples:
    | nickname | asset_title |
    | adler | Def Jam/Polygram press photo of Public Enemy |
    | adwhite |  Giza. Pyramid of Khafre and Sphinx |
    | aerial |  Tompkins County, New York |
