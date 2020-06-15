# encoding: UTF-8
Feature: Support for DLXS collections
@dlxs

    @dlxs-collection-fields
    Scenario Outline: Check fields for a page, book, issue, etc. for each collection
        Given I go to asset '<asset_id>'
            Then the field labeled '<field>' should begin with '<starting>'

    Examples:
    | asset_id | field | starting |
    | bol0001 | Title | Manifiesto dirijido por la representación |
    | bol0001 | Collection | Alfredo Montalvo Bolivian Digital Pamphlets Collection |
    | bol0001 | Creator | Fernández, Hilarión |
    | bol0001 | Site | Sucre |
    | bol0001 | Language |  Spanish |
    | bol0001 | Subject | Bolivia - Pamphlets |
    | bol0001 | Extent | 16 300dpi JPEG page images|
    | bol0001 | Publisher | Imprenta |
    | bol0001 | Publication Place | Sucre |
    | bol0001 | Publication Date | 1848 |
    | bol0001 | Repository | Division of Rare and Manuscript Collections |
    | bol0001 | Rights | The content in the Alfredo Montalvo Bolivian Digital |
    | chla1043101_01_100 | Title | Rural New Yorker, Vol. 01, No. 01, January 3, 1850 |
    | chla1043101_01_100 | Collection | Core Historical Literature of Agriculture |
    | chla1043101_01_100 | Subject | Agriculture |
    | chla1043101_01_100 | Extent | 424 |
    | ezra0001_1 | Title | Correspondence: June 17, 1828 - September 22, 1830 |
    | ezra0001_1 | Collection | Ezra Cornell Letters |
    | ezra0001_1 | Extent | 35 |
    | flow1685158 | Title | Symbolorum et emblematum centuriae |
    | flow1685158 | Collection | Language of Flowers |
    | flow1685158 | Creator | Camerarius, Joachim, 1534-1598 |
    | flow1685158 | Catalog Record | 1685158 |
    | flow1685158 | Subject | Emblems |
    | flow1685158 | Extent | 432 300dpi JPG page images |
    | flow1685158 | Note | 432 p. |
    | flow1685158 | Publisher | Typis Voegelinanis |
    | flow1685158 | Publication Place | Leipzig |
    | hivebees5017167 | Title | Langstroth on the hive and the honey-bee |
    | hivebees5017167 | Collection | Core Historical Literature of Agriculture |
    | hivebees5017167 | Creator | Langstroth, L.L. 1810-1895. |
    | hivebees5017167 | Date | 1853 |
    | hivebees5017167 | Identifier | hivebees5017167 |
    | hivebees5017167 | Subject | Bees |
    | hivebees5017167 | Extent | 390 300dpi JPEG page images |
    | hivebees5017167 | Publisher | Hopkins, Bridgman |
    | hivebees5017167 | Publication Place |  Northampton |
    | hearth1891092_102_103 | Title | Vol. 102, No. 1-6, January-June, 1923 |
    | hearth1891092_102_103 | Date | 1923 |
    | hearth1891092_102_103 | Issue Date | 1923 |
    | hearth1891092_102_103 | Identifier | hearth1891092_102_103 |
    | hearth1891092_102_103 | Catalog Record | 1891092 |
    | hearth1891092_102_103 | Subject | Dressmaking |
    | hearth1891092_102_103 | Extent | 1138 300dpi JPG page images |
    | hearth1891092_102_103 | Note | Digitization funded by Institute of Museum |
    | hearth1891092_102_103 | Publisher | The Butterick company, inc. |
    | hearth1891092_102_103 | Publication Place | New York |
    | hunt0001_102 | Title | Arte de el idioma mexicano |
    | hunt0001_102 | Creator | Perez, Manuel |
    | hunt0001_102 | Site | Mexico |
    | hunt0001_102 | Language | English |
    | hunt0001_102 | Keywords | Nahuatl language - Grammar |
    | hunt0001_102 | Extent | 450 300dpi JPEG page images |
    | hunt0001_102 | Note | 450 p. |
    | hunt0001_102 | Publisher | F. de Ribera Calderon |
    | hunt0001_102 | Publication Place | Mexico |
    | hunt0001_102 | Publication Date | 1713 |
    | hunt0001_102 | Repository | Cornell University Library |
    | hunt0001_102 | Rights | The images in this collection are in the public domain |
    | izquierda001 | Title | Los Libros |
    | izquierda001 | Collection | History of the Left in Latin America |
    | izquierda001 | Subject | Publications -- Latin America |
    | izquierda001 | Publisher | Los Libros |
    | izquierda001 | Publication Place | Tucuman, Argentina |
    | liber001_26 | Title | Constitution and Laws of the Commonweath |
    | liber001_26 | Collection | Liberian Law Collection |
    | liber001_26 | Creator | President Barclay |
    | liber001_26 | Language | English |
    | liber001_26 | Subject | Liberian Law Collection |
    | liber001_26 | Keywords | Liberia |
    | liber001_26 | Extent | 56 300dpi JPEG page images |
    | liber001_26 | Publisher | Legislative Council, Commwealth of Liberia |
    | liber001_26 | Publication Place | Moravia, Liberia |
    | may814201_117 | Title | UNS 115 |
    | may814201_117 | Collection | Samuel J. May Anti-Slavery Collection |
    | may814201_117 | Identifier | may814201_117 |
    | nur00419 | Title | R & A No. 3081 |
    | nur00419 | Collection | Donovan Nuremberg Trials Collection |
    | nur00419 | Creator | The authors name is not given |
    | nur00419 | Subject | Donovan Nuremberg Trials Collection |
    | nur00419 | Extent | 56 300dpi JPEG page images |
    | nur00419 | Publisher | International Military Tribunal |
    | nur00419 | Publication Place | Nuremberg, Germany |
    | sea001_106 | Title | An official guide to eastern Asia v.5 |
    | sea001_106 | Creator | Japan. Tetsud¯osh¯o |
    | sat0101 | Title | The trial of Thomas Paine, for a libel |
    | sat0101 | Collection | Trial Pamphlets Collection |
    | sat0101 | Creator | Paine, Thomas, 1737-1809, defendant. |
    | sat0101 | Catalog Record | 3264788 |
    | sat0101 | Subject | Trial Pamphlets Collection |
    | sat0101 | Extent | 43 300dpi JPEG page images |
    | sat0101 | Publisher | Printed in Boston by I. Thomas |
    | sat0101 | Publication Place | Boston |
    | scott1001 | Title | State v. Patterson et al. March 1931 |
    | scott1001 | Collection | Scottsboro Trials Collection |
    | scott1001 | Creator | Circuit Court, Jackson County |
    | scott1001 | Subject | Scottsboro Trials Collection |
    | scott1001 | Extent | 63 300dpi JPEG page images |
    | scott1001 | Publication Place | Scottsboro, AL |
    # skipping witchcraft for now
    | words1214796 | Title | Philological museum |
    | words1214796 | Collection | Wordsworth Collection |
    | words1214796 | Subject | Classical philology |
    | words1214796 | Publication | Cambridge, Printed by J. Smith for Deightons  |
    | words1214796 | Repository | Division of Rare and Manuscript Collections |

    Scenario Outline: Check each of the dlxs fields
        Given I go to asset '<asset_id>'
            Then the field labeled '<field>' should begin with '<starting>'

        Examples:
        | internal | field | asset_id | starting |
        # | accession_tesim | Accession | xxx | yyy |
        # | acq_date_tesim | Acquisition Date | xxx | yyy |
        # | acq_note_tesim | Acquisition Note | xxx | yyy |
        # | addresscreator_tesim | Address (Creator) | xxx | yyy |
        # | adler_creator_tesim | Author | xxx | yyy |
        # | admission_cost_tesim | Cost of Admission | xxx | yyy |
        # | alternate_title_tesim | Alternate Title | xxx | yyy |
        # | analysis_plan_tesim | Analysis of Plan | xxx | yyy |
        # | annotation_tesim | Annotation | xxx | yyy |
        # | archaeological_date_tesim | Archaeological Date | xxx | yyy |
        # | archaeological_style_period_tesim | Archaeological Period | xxx | yyy |
        # | architect_creator_tesim | Architect | xxx | yyy |
        # | architectural_firm_creator_tesim | Architectural Firm | xxx | yyy |
        # | archival_collection_tesim | Archival Collection | xxx | yyy |
        # | arranger_creator_tesim | Arranger | xxx | yyy |
        # | art_bio_tesim | Artist Biography | xxx | yyy |
        | author_tesim | Creator | hunt0001_1 | Perez, Manuel |
        # | bam_number_tesim | Bam Number | xxx | yyy |
        # | berlin_catalog_tesim | Berlin Catalog | xxx | yyy |
        | bibid_tesim | Catalog Record | chla1043101_01 | 1043101 |
        # | bibliography_tesim | Bibliography | xxx | yyy |
        # | box_box_folder_tesim | Box | xxx | yyy |
        # | box_tesim | Box # 20| xxx | yyy |
        # | call_number_tesim | Call Number | xxx | yyy |
        # | canticle_tesim | Canticle | xxx | yyy |
        # | canto_tesim | Canto | xxx | yyy |
        # | card_number_tesim | Card Number | xxx | yyy |
        # | catalog_number_tesim | Catalog Number | xxx | yyy |
        # | cataloger_tesim | Cataloger | xxx | yyy |
        # | century_tesim | Century | xxx | yyy |
        # | cite_as_tesim | Cite As | xxx | yyy |
        # | city_location_tesim | Location | xxx | yyy |
        # | collecting_program_tesim | Collecting Program | xxx | yyy |
        # | collection_number_tesim | Collection Number | xxx | yyy |
        | collection_tesim | Collection | hearth1891092 | Home Economics Archive |
        # | collector_tesim | Collector | xxx | yyy |
        # | collectors_notes_tesim | Collectors Notes| xxx | yyy |
        # | column_no_tesim | Column Number | xxx | yyy |
        # | common_name_tesim | Common Name | xxx | yyy |
        # | composer_creator_tesim | Composer | xxx | yyy |
        # | condition_tesim | Condition | xxx | yyy |
        # | context_tesim | Context | xxx | yyy |
        # | coordinates_tesim | Coordinates | xxx | yyy |
        # | country_location_tesim | Country | xxx | yyy |
        # | country_tesim | Country | xxx | yyy |
        | creation_site_location_tesim | Site | xxx | yyy |
        | creation_site_orig_tesim | Original Site | xxx | yyy |
        | creator_bio_tesim | Creator Biography | xxx | yyy |
        | creator_orig_tesim | Original Creator | xxx | yyy |
        | creator_tesim | Creator | xxx | yyy |
        | culture_orig_tesim | Original Culture | xxx | yyy |
        | culture_tesim | Culture | xxx | yyy |
        | date_created_on_ssi | Date posted | xxx | yyy |
        | date_creator_birth_tesim | Creator Birth Date | xxx | yyy |
        | date_creator_death_tesim | Creator Death Date | xxx | yyy |
        | date_display_tesim | Issue Date | xxx | yyy |
        | date_orig_tesim | Original Date | xxx | yyy |
        | date_tesim | Date | xxx | yyy |
        | deity_tesim | Central Deity | xxx | yyy |
        | denomination_tesim | Denomination | xxx | yyy |
        | description_tesim | Description | xxx | yyy |
        | devanagari_description_tesim | Description (Devanagari) | xxx | yyy |
        | devanagari_hamlet_tesim | Hamlet (Devanagari) | xxx | yyy |
        | dig_coll_tesim | Digital Collection | xxx | yyy |
        | directions_tesim | Directions | xxx | yyy |
        | disclaimer_tesim | Disclaimer | xxx | yyy |
        | donor_tesim | Donor | xxx | yyy |
        | dress_code_tesim | Dress Code | xxx | yyy |
        | edition_tesim | Edition | xxx | yyy |
        | election_tesim | Election | xxx | yyy |
        | elevation_tesim | Elevation | xxx | yyy |
        | ensemble_note_tesim | Ensemble Note | xxx | yyy |
        | event_name_tesim | Event Name | xxx | yyy |
        | excavation_date_tesim | Excavation Date | xxx | yyy |
        | exhibit_number_tesim | Exhibit Number | xxx | yyy |
        | exhibition_tesim | Exhibition | xxx | yyy |
        | expedition_tesim | Expedition | xxx | yyy |
        | extent_orig_tesim | Original Extent | xxx | yyy |
        | extent_tesim | Extent #| xxx | yyy |
        | fd_27325_tsi | Date taken | xxx | yyy |
        | figure_subject_tesim | Political Figure | xxx | yyy |
        | filename_s | File Name # 63| xxx | yyy |
        | first_line_no_tesim | First Line Number | xxx | yyy |
        | folder_box_folder_tesim | Folder | xxx | yyy |
        | folder_tesim | Folder # 17| xxx | yyy |
        | founder_tesim | Founder | xxx | yyy |
        | full_text_date_tesim | Date | xxx | yyy |
        | glacier_tesim | Glacier | xxx | yyy |
        | guests_tesim | Guests | xxx | yyy |
        | id_number_tesim | ID Number | xxx | yyy |
        | identifier2_tesim | Topographic Map | xxx | yyy |
        | identifier_blaschka_isi | Blaschka Number | xxx | yyy |
        | identifier_cornell_isi | Cornell Number | xxx | yyy |
        | identifier_tesim | Identifier #| xxx | yyy |
        | illustrator_creator_tesim | Creator | xxx | yyy |
        | image_view_desc_tesim | Image View Description | xxx | yyy |
        | image_view_type_tesim | Image View Type | xxx | yyy |
        | img_view_desc_tesim | Image View Description | xxx | yyy |
        | img_view_type_tesim | Image View Type | xxx | yyy |
        | inscription_tesim | Inscription | xxx | yyy |
        | internal_number_tesim | Internal Number | xxx | yyy |
        | israel_grid_tesim | Israel Grid | xxx | yyy |
        | item_number_tesim | Item Number | xxx | yyy |
        | kaltura_id_ssm | Kaltura ID # 3| xxx | yyy |
        | kaltura_playlist_ssm | Kaltura Playlist # 1| xxx | yyy |
        | keywords_subject_tesim | Keywords # 3| xxx | yyy |
        | keywords_tesim | Keywords | xxx | yyy |
        | lang_tesim | Language | xxx | yyy |
        | language_tesim | Language # 12| xxx | yyy |
        | last_line_no_tesim | Last Line Number | xxx | yyy |
        | latitude_tsi | Latitude | xxx | yyy |
        | letter_height_tesim | Letter Height | xxx | yyy |
        | lines_tesim | Lines | xxx | yyy |
        | local_name_location_tesim | Place Name (Local) | xxx | yyy |
        | location_facet_tesim | Location | xxx | yyy |
        | location_repo_tesim | Repository Location | xxx | yyy |
        | location_tesim | Location | xxx | yyy |
        | longitude_tsi | Longitude | xxx | yyy |
        | lyricist_creator_tesim | Lyricist | xxx | yyy |
        | manufacturer_tesim | Manufacturer | xxx | yyy |
        | map_identifier2_tesim | Context | xxx | yyy |
        | map_identifier3_tesim | Original File Name | xxx | yyy |
        | map_measurement2_tesim | Measurement 2 | xxx | yyy |
        | map_measurement3_tesim | Measurement 3 | xxx | yyy |
        | map_measurement4_tesim | Measurement 4 | xxx | yyy |
        | map_measurement5_tesim | Measurement 5 | xxx | yyy |
        | map_measurement_tesim | Measurement | xxx | yyy |
        | map_relationships_tesim | Relationships | xxx | yyy |
        | map_scale_tesim | Scale | xxx | yyy |
        | map_sheet_tesim | Sheet | xxx | yyy |
        | map_site_tesim | Site | xxx | yyy |
        | map_source_tesim | Source | xxx | yyy |
        | map_species_tesim | Species | xxx | yyy |
        | map_title_language2_tesim | Translated Title Language | xxx | yyy |
        | map_title_language_tesim | Title Language | xxx | yyy |
        | mat_tech_orig_tesim | Original Materials and Techniques | xxx | yyy |
        | mat_tech_tesim | Materials/Techniques | xxx | yyy |
        | measurement_units_tesim | Measurement Units | xxx | yyy |
        | metal_abbrev_tesim | Metal Abbrev. | xxx | yyy |
        | metric_depth_tesim | Metric Depth | xxx | yyy |
        | metric_diameter_tesim | Metric Diameter | xxx | yyy |
        | metric_height_tesim | Metric Height | xxx | yyy |
        | metric_unit_tesim | Metric Unit | xxx | yyy |
        | metric_width_tesim | Metric Width | xxx | yyy |
        | mint_location_tesim | Mint Location | xxx | yyy |
        | musician_creator_tesim | Musician | xxx | yyy |
        | national_name_location_tesim | Place Name (National) | xxx | yyy |
        | note_tesim | Note | xxx | yyy |
        | notes_2_tesim | Note | xxx | yyy |
        | notes_tesim | Notes | xxx | yyy |
        | obverse_tesim | Obverse | xxx | yyy |
        | occasion_tesim | Occasion | xxx | yyy |
        | old_catalog_number_tesim | Old Catalog Number | xxx | yyy |
        | organization_tesim | Organization | xxx | yyy |
        | original_blaschka_species_tesim | Original Blaschka Species Name | xxx | yyy |
        | original_extent_tesim | Original Dimensions | xxx | yyy |
        | other_creator_tesim | Other Creator(s) | xxx | yyy |
        | other_location_tesim | Site | xxx | yyy |
        | page_tesim | Page | xxx | yyy |
        | party_subject_tesim | Political Party | xxx | yyy |
        | performer_creator_tesim | Performer | xxx | yyy |
        | performer_matrix_tesim | Performer | xxx | yyy |
        | photographer_creator_tesim | Photographer | xxx | yyy |
        | photographer_tesim | Photographer | xxx | yyy |
        | pj_full_title_tesim | Full Title | xxx | yyy |
        | plan_number_isi | Plan Number | xxx | yyy |
        | principle_performer_creator_tesim | Principal Performer | xxx | yyy |
        | project_location_tesim | Location | xxx | yyy |
        | project_owner_tesim | Project Owner | xxx | yyy |
        | project_title_tesim | Project Title | xxx | yyy |
        | promoter_tesim | Promoter | xxx | yyy |
        | provenance_tesim | Provenance | xxx | yyy |
        | pubdate_tesim | Publication Date | xxx | yyy |
        | publication_location_tesim | Location of Publication | xxx | yyy |
        | publication_tesim | Publication | xxx | yyy |
        | publisher_tesim | Publisher | xxx | yyy |
        | pubplace_tesim | Publication Place | xxx | yyy |
        | r2_transcription_tesim | Transcription 2 | xxx | yyy |
        | railroad_reporting_mark_tesim | Railroad Reporting Mark | xxx | yyy |
        | recipient_tesim | Recipient | xxx | yyy |
        | reference_id_tesim | Reference Identifier | xxx | yyy |
        | reference_tesim | References | xxx | yyy |
        | region_location_tesim | Region | xxx | yyy |
        | related_work_tesim | Related Work # 3| xxx | yyy |
        | relation_tesim | Relation | xxx | yyy |
        | relationships_tesim | Relationships | xxx | yyy |
        | repo_orig_tesim | Original Repository | xxx | yyy |
        | repository_tesim | Repository | xxx | yyy |
        | reverse_tesim | Reverse | xxx | yyy |
        | rights_img_tesim | Image Rights | xxx | yyy |
        | rights_tesim | Rights | xxx | yyy |
        | role_tesim | Creator Role | xxx | yyy |
        | roman_hamlet_tesim | Hamlet (Roman Characters) | xxx | yyy |
        | romanized_yiddish_title_tesim | Romanized Title (Yiddish) | xxx | yyy |
        | second_creator_tesim | Creator | xxx | yyy |
        | senechal_tesim | Senechal | xxx | yyy |
        | serial_pub_date_range_ssi | Publication Date Range | xxx | yyy |
        | series_relation_tesim | Series | xxx | yyy |
        | series_tesim | Series # 7| xxx | yyy |
        | set_title_tesim | Set | xxx | yyy |
        | site_location_tesim | Location | xxx | yyy |
        | site_tesim | Site | xxx | yyy |
        | source_tesim | Source | xxx | yyy |
        | species_tesim | Species # 2| xxx | yyy |
        | state_location_tesim | State | xxx | yyy |
        | station_yard_tesim | Station/Yard | xxx | yyy |
        | stosch_cat_tesim | Stosch Catalog Number | xxx | yyy |
        | style_orig_tesim | Original Style | xxx | yyy |
        | style_period_tesim | Style/Period | xxx | yyy |
        | sub_coll_tesim | Subcollection | xxx | yyy |
        | subject_reps_tesim | Reps Subject | xxx | yyy |
        | subject_tesim | Subject | xxx | yyy |
        | system_tesim | System | xxx | yyy |
        | title_tesim | Title | xxx | yyy |
        | track_isi | Track | xxx | yyy |
        | track_ssi | Track | xxx | yyy |
        | transcription_tesim | Transcription | xxx | yyy |
        | translation_as_tesim | Translated as | xxx | yyy |
        | translation_of_tesim | Translation of | xxx | yyy |
        | translation_tesim | Translation | xxx | yyy |
        | translation_title_tesim | Translated Title | xxx | yyy |
        | type_tesim | Work Type | xxx | yyy |
        | venue1_address_tesim | Address 1 | xxx | yyy |
        | venue1_tesim | Venue 1 | xxx | yyy |
        | venue2_address_tesim | Address 2 | xxx | yyy |
        | venue2_tesim | Venue 2 | xxx | yyy |
        | venue3_address_tesim | Address 3 | xxx | yyy |
        | venue3_tesim | Venue 3 | xxx | yyy |
        | venue_tesim | Venue # 4| xxx | yyy |
        | village_tesim | Village | xxx | yyy |
        | voigt_cat_no_tesim | Voigt Catalog Number | xxx | yyy |
        | vol_issue_no_tesim | Volume/Issue # 3| xxx | yyy |
        | volume_tesim | Volume | xxx | yyy |
        | where_ssim | Coordinates | xxx | yyy |
        | winckelmann_no_tesim | Winckelmann Number | xxx | yyy |
        | writer_creator_tesim | Writer | xxx | yyy |
        | yiddish_creator_tesim | Creator (Yiddish) | xxx | yyy |
        | yiddish_title_tesim | Title (Yiddish) | xxx | yyy |
