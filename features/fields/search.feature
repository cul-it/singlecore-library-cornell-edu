# encoding: UTF-8
Feature: Asset title
    In order to find the asset I'm looking for
    As a user
    I want to see a fiew fields and facets in the search results

    @search
    @search-fields
    Scenario Outline: View fields in search results
        Given I browse collection nicknamed '<nickname>'
            And I search for asset '<asset_title>'
            Then the first search result should have field '<field_name>' starting '<content>'

    Examples:
    | nickname | asset_title | field_name | content |
    # | bastides | Hastingues: Distant View Detail | Creator | Reps, John William (American urban planning historian) |
    | bastides | Hastingues: Distant View Detail | Collection | John Reps Collection - Bastides |
    | bastides | Hastingues: Distant View Detail | Date | 2001 |

