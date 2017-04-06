#!/bin/bash

teams=(
  testintegration
  feature-monsters
)

for team in ${teams[*]}; do
  ./bin/seal.rb $team
done
