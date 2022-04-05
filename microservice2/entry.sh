#!/bin/sh

hypercorn -w 1 -b 0.0.0.0:10000 microservice2.main
