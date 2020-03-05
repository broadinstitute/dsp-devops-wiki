#!/usr/bin/env bash
linkFiles=`find . -name "*.md"|grep 'Links' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
techFiles=`find . -name "*.md"|grep 'Technologies' | sed 's|^.||' | sed -e 's/\.md//g' |sort`
confFiles=`find . -name "*.md"|grep 'ConferencesPaper' | sed 's|^.||' | sed -e 's/\.md//g' |sort`
processFiles=`find . -name "*.md"|grep 'Process' | sed 's|^.||' | sed -e 's/\.md//g'| sort`
repo=https://github.com/broadinstitute/dsp-devops-wiki/wiki

printf "Welcome to the dsp-devops-wiki wiki!

# Table of Contents
01. [Overview](#Overview)
02. [Process](#Process)
03. [Projects](#Projects)
04. [Technologies](#Technologies)
05. [Conferences and Papers](#ConferencesPapers)

# Overview
The purpose of this wiki is to provide a common ground for tools, technologies, projects, techniques and other items of interest to doing DevOps at the Broad Institute.\n" >> Home.md

printf "# Technologies\n\n" >> Home.md
for file in $techFiles
  do
    echo "$file"
      title=$(echo $file | awk -F/ {'print $3'} | sed 's/\.md//g')
      printf "  - [$title]($repo$file)\n" >> Home.md
done
printf "# ConferencesPapers\n\n" >> Home.md
for file in $confFiles
  do
    echo "$file"
      title=$(echo $file | awk -F/ {'print $3'} | sed 's/\.md//g')
      printf "  - [$title]($repo$file)\n" >> Home.md
done
printf "# Process\n" >> Home.md
for file in $processFiles
  do
    echo "$file"
      title=$(echo $file | awk -F/ {'print $3'} | sed 's/\.md//g')
      printf "  - [$title]($repo$file)\n" >> Home.md
done
printf "# Links\n\n" >> Home.md
for file in $linkFiles
  do
    echo "$file"
      title=$(echo $file | awk -F/ {'print $3'} | sed 's/\.md//g')
      printf "  - [$title]($repo$file)\n" >> Home.md
done

cat Home.md
