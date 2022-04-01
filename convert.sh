#!/bin/bash
shopt -s nullglob

num=0
for filename in ./timelapse/*
do
  new=$(printf "./timelapse/%05d.jpg" "$num")
  let num=num+1
  mv -iv -- $filename $new
done
shopt -u nullglob
