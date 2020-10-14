# encoding: UTF-8
Feature: Some fields should link to a facet search

@DIGCOLL-1585
Scenario Outline: Some item record fields should link to a facet search
    Given I go to asset '<id>'
    Then the field labeled '<label>' should begin '<starting>' and link to a facet search

Examples:
    | label | id | facet | starting |
    | Author | ss:9468621 | creator_facet_tesim | Touchstone Pictures | # adler_creator_tesim
    | Archaeological Date | ss:19102655 | archaeological_date_tesim | ca. 3200 BCE |
    | Architect | ss:18860196 | architect_creator_tesim | Alvar Aalto |
    | Architectural Firm | ss:18860225 | architectural_firm_creator_tesim | Studio Granda |
    | Archival Collection | ss:20632840 | archival_collection_tesim | International Workers Order (IWO) Records |
    # none found | Arranger | ss:3213121 | arranger_creator_tesim | start |
    | Creator | may907301 | author_tesim | White, Andrew Dickson |
    | Collecting Program | ss:925172 | collecting_program_tesim | Cornell Collections of Antiquities |
    | Collection | ss:3213121 | collection_tesim | Selections from the Cornell Anthropology Collections |
    | Composer | ss:21811711 | composer_creator_tesim | Lindsay Cooper |
    | Country | ss:3862439 | country_location_tesim | India |
    | Site | ss:28624591 | creation_site_location_tesim | Townley-Read |
    | Creator | ss:22568697 | creator_tesim | Kurt A. Jordan |
    | Culture | ss:3213121 | culture_tesim | Native Amazonian |
    | Date posted | ss:19343228 | date_created_on_ssi | 2017-04-14 |
    | Date | ss:25566540 | date_tesim | 1999 |
    | Central Deity | ss:9390495 | deity_tesim | Unidentified Deity |
    | Designer | ss:372506 | designer_creator_tesim | Reuleaux, F. (Franz), 1829-1905 |
    | Excavation Date | ss:19102626 | excavation_date_tesim | 1929 |
    # none found | Date taken | ss:3213121 | fd_27325_tsi | start |
    | Founder | ss:3851176 | founder_tesim | Louis IX |
    | Creator | ss:265777 | illustrator_creator_tesim | Flaxman, John |
    | Keywords | hunt0050_741 | keywords_tesim | Choctaw language |
    | Location | ss:22142868 | location_tesim | Coeymans, Albany |
    # none found | Lyricist | ss:3213121 | lyricist_creator_tesim | start |
    | Manufacturer | ss:372506 | manufacturer_creator_tesim | Gustav Voigt Werkstatt |
    | Site | ss:1334105 | map_site_tesim | Peru |
    | Materials/Techniques | ss:1265574 | mat_tech_tesim | photomontages |
    | Musician | ss:21811897 | musician_creator_tesim | Dean Brodrick |
    | Site | ss:290915 | other_location_tesim | Chuschi (Peru) |
    | Performer | ss:24415882 | performer_creator_tesim | Albertin |
    | Photographer | ss:319746 | photographer_creator_tesim | F. Bodmer |
    | Principal Performer | ss:9904702 | principle_performer_creator_tesim | Para Niyaga Mangkunegaran |
    | Region | ss:2600802 | region_location_tesim | Alaska |
    | Repository | words6016990 | repository_tesim | Division of Rare and Manuscript Collection |
    # none found | Creator | ss:3213121 | second_creator_tesim | start |
    | Senechal | ss:3851336 | senechal_tesim | Eustache de Beaumarchais |
    | Set | ss:11086940 | set_title_tesim | Mimure |
    | Subcollection | ss:544126 | sub_coll_tesim | University Archives |
    | Subject | chla5077679_4170_002_61 | subject_tesim | Entomology |
    | System | ss:3698368 | system_tesim | The Painters System |
    | Work Type | ss:3213121 | type_tesim | jars |
    # none found | Village | ss:3213121 | village_tesim | start |
    | Coordinates | ss:18860175 | where_ssim | 64.138123,-21.946869 |

@DIGCOLL-1585
Scenario Outline: Some index fields should link to a facet search
    Given I search for title '<asset_title>'
    Then the index field labeled '<label>' should begin '<starting>' and link to a facet search

Examples:
    | label | asset_title | facet | starting |
    | Author | Ad for EP by Busy Bee | adler_creator_tesim | Jazzchild Records | # :creator_facet_tesim
    | Creator | Norræna húsið | architect_creator_tesim | Alvar Aalto |
    | Creator | Notices of the Indian Archipelago | author_tesim | Moor, J. H |
    | Collection | Raspberry or Blackberry seed | collection_tesim | Onöndowa |
    | Site | Chahta vba isht taloa holisso | creation_site_location_tesim | New York |
    | Creator | Filled-in Test Units on the West Lawn | creator_tesim | Peregrine A. Gerard-Little |
    | Creator | Illustrazioni sulla Divina commedia | illustrator_creator_tesim | Scaramuzza, Francesco |
    | Location | Elderberry seed | location_tesim | White Springs |
    | Creator | Flavor Flav, Crazy Legs | photographer_creator_tesim | Paniccioli, Ernie |
    | Principal Performer | Rangkep: Bondet--to gerong without seseg | principle_performer_creator_tesim | Bp. Soekanto Sastrodarsono |
    | Set | Evrard Ventilator | set_title_tesim | I. Chamber Wheel Mechanisms |
