#!/bin/sh

hypercorn -w 1 -b 0.0.0.0:9999 microservice.main
