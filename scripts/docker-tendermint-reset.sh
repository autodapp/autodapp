#!/bin/bash

docker run --rm -it \
  --network devnet \
  -v "/tmp/tendermint:/tendermint" \
  --name tendermint \
  tendermint/tendermint:v0.32.8 \
  init

docker run --rm -it \
  --network devnet \
  -v "/tmp/tendermint:/tendermint" \
  --name tendermint \
  tendermint/tendermint:v0.32.8 \
  unsafe_reset_all
 
