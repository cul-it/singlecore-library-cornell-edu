# encoding: UTF-8
Feature: Some fields should link to a facet search

@DIGCOLL-1585
Scenario Outline: Some item record fields should link to a facet search
    Given I go to asset '<id>'
    # Then the field labeled '<label>' should begin '<starting>' and link to facet '<facet>'
    Then the field labeled '<MAP_label>' should begin '<starting>' and link to facet '<MAP_facet>'

Examples:
    | label | id | starting | facet | MAP_facet | MAP_label |
    | Author | ss:9468621 | Touchstone Pictures | creator_facet_tesim | agent_tesim | Creator | # adler_creator_tesim
    | Archaeological Date | ss:19102655 | ca. 3200 BCE | archaeological_date_tesim | date_facet_tesim | Archaeological Date |
    | Architect | ss:18860196 | Alvar Aalto | architect_creator_tesim | agent_tesim | Creator |
    | Architectural Firm | ss:18860225 | Studio Granda | architectural_firm_creator_tesim | agent_tesim | Architectural Firm |
    | Archival Collection | ss:20632840 | International Workers Order (IWO) Records | archival_collection_tesim | archival_collection_tesim | Archival Collection |
    # none found | Arranger | ss:3213121 | start | arranger_creator_tesim | arranger_creator_tesim | Arranger |
    | Creator | may907301 | White, Andrew Dickson | author_tesim | author_tesim | Creator | # not in MAP
    | Collecting Program | ss:925172 | Cornell Collections of Antiquities | collecting_program_tesim | collecting_program_tesim | Collecting Program |
    | Collection | ss:3213121 | Selections from the Cornell Anthropology Collections | collection_tesim | collection_tesim | Collection |
    | Composer | ss:21811711 | Lindsay Cooper | composer_creator_tesim | agent_tesim | Composer |
    | Country | ss:3862439 | India | country_location_tesim | country_tesim | Country |
    | Site | ss:28624591 | Townley-Read | creation_site_location_tesim | site_tesim | Site |
    | Creator | ss:22568697 | Kurt A. Jordan | creator_tesim | agent_tesim | Photographer |
    | Culture | ss:3213121 | Native Amazonian | culture_tesim | culture_tesim | Culture |
    | Date posted | ss:19343228 | 2017-04-14 | date_created_on_ssi | date_facet_tesim | Posted Date |
    | Date | ss:25566540 | 1999 | date_tesim | date_facet_tesim | Date |
    | Central Deity | ss:9390495 | Unidentified Deity | deity_tesim | legacy_value_tesim | Central Deity |
    | Designer | ss:372506 | Reuleaux, F. (Franz), 1829-1905 | designer_creator_tesim | agent_tesim | Designer |
    | Excavation Date | ss:19102626 | 1929 | excavation_date_tesim | date_facet_tesim | Date |
    # none found | Date taken | ss:3213121 | start | fd_27325_tsi | fd_27325_tsi | Date taken |
    | Founder | ss:3851176 | Louis IX | founder_tesim | agent_tesim | Founder |
    | Creator | ss:265777 | Flaxman, John | illustrator_creator_tesim | agent_tesim | Illustrator |
    | Keywords | hunt0050_741 | Choctaw language | keywords_tesim | keywords_tesim | Keywords | # not in MAP
    # none found | Lyricist | ss:3213121 | start | lyricist_creator_tesim | lyricist_creator_tesim | Lyricist |
    | Manufacturer | ss:372506 | Gustav Voigt Werkstatt | manufacturer_creator_tesim | agent_tesim | Manufacturer |
    | Site | ss:1334105 | Peru | map_site_tesim | site_tesim | Site |
    | Materials/Techniques | ss:1265574 | photomontages | mat_tech_tesim | mat_tech_tesim | Materials/Techniques |
    | Musician | ss:21811897 | Dean Brodrick | musician_creator_tesim | agent_tesim | Musician |
    | Site | ss:290915 | Chuschi (Peru) | other_location_tesim | location_facet_tesim | Location |
    | Performer | ss:24415882 | Albertin | performer_creator_tesim | agent_tesim | Performer |
    | Photographer | ss:20864765 | Plock, H.G. | photographer_creator_tesim | agent_tesim | Photographer |
    | Principal Performer | ss:9904702 | Para Niyaga Mangkunegaran | principle_performer_creator_tesim | agent_tesim | Performer |
    | Region | ss:2600802 | Alaska | region_location_tesim | location_facet_tesim | Location |
    | Repository | ss:3317897 | Poznan, Poland, National Museum (original) | repository_tesim | repository_tesim | Repository |
    # none found | Creator | ss:3213121 | start | second_creator_tesim | second_creator_tesim | Creator |
    | Senechal | ss:3851336 | Eustache de Beaumarchais | senechal_tesim | agent_tesim | Senechal |
    | Set | ss:11086940 | Mimure | set_title_tesim | set_title_tesim | Set |
    # pending | Subcollection | ss:544126 | University Archives | sub_coll_tesim | sub_coll_tesim | Subcollection |
    | Subject | chla5077679_4170_002_61 | Entomology | subject_tesim | subject_tesim | Subject |
    | System | ss:3698368 | The Painters System | system_tesim | subject_tesim | Subject |
    | Work Type | ss:3213121 | jars | type_tesim | type_tesim | Work Type |
    # none found | Village | ss:3213121 | start | village_tesim | village_tesim | Village |
    | Coordinates | ss:18860175 | 64.138123,-21.946869 | where_ssim | where_ssim | Coordinates |

@DIGCOLL-1585
Scenario Outline: Some index fields should link to a facet search
    Given I search for title '<asset_title>'
    # Then the index field labeled '<label>' should begin '<starting>' and link to facet '<facet>'
    Then the index field labeled '<MAP_label>' should begin '<starting>' and link to facet '<MAP_facet>'

Examples:
    | label | asset_title | starting | facet | MAP_facet | MAP_label |
    | Author | Ad for EP by Busy Bee | Jazzchild Records | creator_facet_tesim | agent_tesim | Creator | # :adler_creator_tesim
    | Creator | Norræna húsið | Alvar Aalto | architect_creator_tesim | agent_tesim | Creator |
    | Collection | Raspberry or Blackberry seed | Onöndowa | collection_tesim | collection_tesim | Collection |
    | Site | Chahta vba isht taloa holisso, or Choctaw | New York | creation_site_location_tesim | location_facet_tesim | Location |
    | Creator | Filled-in Test Units on the West Lawn | Peregrine A. Gerard-Little | creator_tesim | agent_tesim | Photographer |
    | Creator | Illustrazioni sulla Divina commedia | Scaramuzza, Francesco | illustrator_creator_tesim | agent_tesim | Illustrator |
    | Location | Elderberry seed | White Springs | location_tesim | location_facet_tesim | Location |
    | Creator | Flavor Flav, Crazy Legs | Paniccioli, Ernie | photographer_creator_tesim | agent_tesim | Photographer |
    | Principal Performer | Rangkep: Bondet--to gerong without seseg | Bp. Soekanto Sastrodarsono | principle_performer_creator_tesim | agent_tesim | Performer |
    | Set | Evrard Ventilator | I. Chamber Wheel Mechanisms | set_title_tesim | set_title_tesim | Set |
