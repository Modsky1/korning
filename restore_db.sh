#!/bin/sh
dropdb korning_development
createdb korning_development
psql korning_development < korning_development.sql
