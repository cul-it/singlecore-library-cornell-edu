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
        Given I go to Forum asset id '<id>'
            Then I should see <count> additional views

    Examples:
    | nickname | id | count |
    | impersonator | 24415896 | 1 |
    | seneca | 22376760 | 7 |
    | tellennasbeh | 19102646 | 1 |
    | tellennasbeh | 19102650 | 1 |
    | anthrocollections | 1334130 | 6 |

    @javascript
    @multi-image
    @multi-image-static-iiif
    Scenario Outline: Unpublished Forum images should show static IIIF images from AWS S3
        Given I go to Forum asset id '<id>'
            Then I should find an unpublished image
            And the field labeled 'Title' should begin with '<starting>'
            And I should see an IIIF image

    Examples:
    | nickname | starting | id |
    | adler | Shabba-Doo | 26304313 |
    | artifacts | Lounge 159 and Plaque | 1791489 |
    # | cast | Mycenaean seal ring | 19081182 |
    | dendro | Bouwerie House | 22142926 |
    | dynkin | Anatoliy Skorokhod | 21214105 |
    | harrisson | Batang Kayan and Pujungan | 25032424 |
    | leuenberger | Israeli Wall and Settlements | 9387297 |
    | loewentheil | Erotica | 2983260 |
    | obama | The end of white America? | 1282486 |
    | paniccioli | Christopher Wallace | 23019390 |
    | ragamala | Unidentified Deity | 9011771 |
    | seneca | American beech charcoal | 22376848 |
    | seneca | American beech charcoal | 24767699 |
    | seneca | Marten long bone | 22376742 |
    # | squeezes | Latin Column 1 | 3307295 |
    # | rare | Fuegians going to trade in Zapallos | 572113 |

    # @javascript
    # @image-compound-views
    # Scenario Outline: Compound images should show the correct number of additional images
    #     # Timed out with the following resources still waiting http://webstats.library.cornell.edu/piwik.js (Capybara::Poltergeist::StatusFailError)
    #     Given PENDING
    #     Given I go to asset id '<id>'
    #         Then I should see images in the referencestrip

    # Examples:
    # | nickname | id |
    # | blaschka  | 20108189  |
    # | anthrocollections | 2620202 |
    # | political-americana | 12503349 |
    # | stereoscopes | 9415843 |
