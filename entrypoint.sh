#!/bin/sh

crond -f & nc -lk 8080
