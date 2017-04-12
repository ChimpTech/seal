#!/bin/bash

teams=(
  feature-monsters
)

for team in ${teams[*]}; do
  ./bin/seal.rb $team
done
