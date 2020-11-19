# encoding: UTF-8
Feature: Asset title
    In order to tell which asset I'm looking at
    As a user
    I want to see the asset title in all asset lists and detail views

    @fields
    @fields-title
    Scenario Outline: View title in asset lists
        Given I browse collection nicknamed '<nickname>'
            And I search for asset '<asset_title>'
            Then I should see the text '<asset_title>'
            And I click on '<asset_title>'
            Then the page title should contain '<asset_title>'
            And the page header should contain '<asset_title>'
            And the field labeled 'Title' should begin with '<asset_title>'

    Examples:
    | nickname | asset_title |
    | adler | Beastie Boys: Hello Nasty |
    | adler | Polaroid photo of Chuck D and someone else |
    | adwhite |  Giza. Pyramid of Khufu and Sphinx |
    # | alisonmasonkingsbury | A good cure |
