#! /bin/bash

set -e

# Need to remove the old config to make sure it doesn't get packed into the final product
if [[ ! -f .circleci/config.yml ]]; then
  rm .circleci/config.yml
fi
circleci config pack .circleci > .circleci/config.yml
