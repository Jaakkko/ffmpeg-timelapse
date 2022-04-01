#!/bin/bash
ffmpeg -r 60 -pattern_type glob -i "timelapse/*.jpg" -b:v 20M -row-mt 1 -row-mt 1 -threads 15 output.webm
