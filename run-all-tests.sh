#!/bin/bash
set -e
# run the tests like the Jenkins job does
COVERAGE=true bundle exec cucumber 2> /dev/null
COVERAGE=true bundle exec rspec 2> /dev/null
COVERAGE=true rake spec 2> /dev/null
echo "Done."