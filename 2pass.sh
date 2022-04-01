#!/bin/bash
ffmpeg -i input.webm -c:v libvpx-vp9 -b:v 2M -pass 1 -an -f null /dev/null && \
ffmpeg -i input.webm -c:v libvpx-vp9 -b:v 2M -pass 2 2pass.webm
