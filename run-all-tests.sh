#!/bin/bash
set -e
# run the tests like the Jenkins job does
bundle exec cucumber features/fields/image.feature 2> /dev/null
bundle exec rspec 2> /dev/null
echo "Done."