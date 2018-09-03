#! /bin/bash

set -e

circleci config pack .circleci/orbs > .circleci/config.yml
cat .circleci/config-jobs-only.yml >> .circleci/config.yml

