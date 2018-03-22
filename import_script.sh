#!/usr/bin/env bash
for i in endpoints/*.json; do
    [ -f "$i" ] || break
    mongoimport --db thinger --collection endpoints_templates --file "$i"
done