# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### changed
- for each of the non-compound r*_xxx_tesim fields, make a copyfield that combines all the r*_xxx_tesim into xxx_tesim,
(unless xxx_tesim already exists):
   - r1_alternate_title_tesim
   - r1_annotation_tesim
   - r1_bibliography_tesim (already exists)
   - r1_cataloger_tesim
   - r1_condition_tesim
   - r1_country_tesim
   - r1_culture_tesim
   - r1_description_tesim (already exists)
   - r1_event_name_tesim
   - r1_exhibition_tesim
   - r1_inscription_tesim
   - r1_kaltura_id_s -> kaltura_id_sim
   - r1_kaltura_playlist_s -> kaltura_playlist_sim
   - r1_keywords_subject_tesim
   - r1_language_tesim
   - r1_location_tesim
   - r1_mat_tech_tesim (already exists)
   - r1_notes_tesim
   - r1_ocr_transcription_tesim
   - r1_provenance_tesim
   - r1_reference_tesim
   - r1_related_work_tesim
   - r1_relationships_tesim
   - r1_rights_tesim
   - r1_series_tesim
   - r1_site_tesim
   - r1_source_tesim
   - r1_species_tesim
   - r1_subject_tesim (already exists)
   - r1_title_tesim (only add the r1_title, not *_title_tesim to the copyfield)
   - r1_transcription_tesim
   - r1_translation_as_tesim
   - r1_translation_of_tesim
   - r1_translation_tesim
   - r1_venue_tesim
- replaced the index section with an alpha list of the index fields specified in the MAP spreadsheet
- replaced the facet section of catalog_controller.rb with new fields
- replaced the config.add_show_field section of catalog_controller.rb with an alpha list of the new fields
- added copyfields to managed-schema on [dev solr](http://digcoll-dev.internal.library.cornell.edu:8983/solr/#/digitalcollections2)

```
curl -X POST -H 'Content-type:application/json' --data-binary '{
  "add-copy-field":{
     "source":"r1_title_tesim",
     "dest":[ "title_tesim" ]}
}' http://digcoll-dev.internal.library.cornell.edu:8983/solr/digitalcollections2/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
  "add-copy-field":{
     "source":"r1_agent_tesim",
     "dest":[ "creator_tesim" ]}
}' http://digcoll-dev.internal.library.cornell.edu:8983/solr/digitalcollections2/schema


curl -X POST -H 'Content-type:application/json' --data-binary '{
  "add-copy-field":{
     "source":"r1_rights_tesim",
     "dest":[ "rights_tesim" ]}
}' http://digcoll-dev.internal.library.cornell.edu:8983/solr/digitalcollections2/schema

```

## [v1.0.16] - 2019-10-17