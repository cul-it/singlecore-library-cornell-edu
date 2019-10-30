# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### changed
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