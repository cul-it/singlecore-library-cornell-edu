# encoding: UTF-8
Feature: Some fields should link to a facet search

@DIGCOLL-1585
Scenario Outline: Some item record fields should link to a facet search
    Given I go to Forum asset id '<id>'
    Then the field labeled '<label>' should begin '<starting>' and link to a facet search

Examples:
    | label | id | facet | starting |
    | Author | 9468621 | creator_facet_tesim | Touchstone Pictures | # adler_creator_tesim
    | Archaeological Date | 19102655 | archaeological_date_tesim | ca. 3200 BCE |
    | Architect | 18860196 | architect_creator_tesim | Alvar Aalto |
    | Architectural Firm | 18860225 | architectural_firm_creator_tesim | Studio Granda |
    | Archival Collection | 20632840 | archival_collection_tesim | International Workers Order (IWO) Records |
    # none found | Arranger | 13450404 | arranger_creator_tesim | start |
    | Creator | 13450404 | author_tesim | start |
    | Collecting Program | 13450404 | collecting_program_tesim | start |
    | Collection | 13450404 | collection_tesim | start |
    | Composer | 13450404 | composer_creator_tesim | start |
    | Country | 13450404 | country_location_tesim | start |
    | Site | 13450404 | creation_site_location_tesim | start |
    | Creator | 13450404 | creator_tesim | start |
    | Culture | 13450404 | culture_tesim | start |
    | Date posted | 13450404 | date_created_on_ssi | start |
    | Date | 13450404 | date_tesim | start |
    | Central Deity | 13450404 | deity_tesim | start |
    | Designer | 13450404 | designer_creator_tesim | start |
    | Excavation Date | 13450404 | excavation_date_tesim | start |
    | Date taken | 13450404 | fd_27325_tsi | start |
    | Founder | 13450404 | founder_tesim | start |
    | Creator | 13450404 | illustrator_creator_tesim | start |
    | Keywords | 13450404 | keywords_tesim | start |
    | Location | 13450404 | location_tesim | start |
    | Lyricist | 13450404 | lyricist_creator_tesim | start |
    | Manufacturer | 13450404 | manufacturer_creator_tesim | start |
    | Site | 13450404 | map_site_tesim | start |
    | Materials/Techniques | 13450404 | mat_tech_tesim | start |
    | Musician | 13450404 | musician_creator_tesim | start |
    | Site | 13450404 | other_location_tesim | start |
    | Performer | 13450404 | performer_creator_tesim | start |
    | Photographer | 13450404 | photographer_creator_tesim | start |
    | Principal Performer | 13450404 | principle_performer_creator_tesim | start |
    | Region | 13450404 | region_location_tesim | start |
    | Repository | 13450404 | repository_tesim | start |
    | Creator | 13450404 | second_creator_tesim | start |
    | Senechal | 13450404 | senechal_tesim | start |
    | Set | 13450404 | set_title_tesim | start |
    | Subcollection | 13450404 | sub_coll_tesim | start |
    | Subject | 13450404 | subject_tesim | start |
    | System | 13450404 | system_tesim | start |
    | Work Type | 13450404 | type_tesim | start |
    | Village | 13450404 | village_tesim | start |
    | Coordinates | 13450404 | where_ssim | start |