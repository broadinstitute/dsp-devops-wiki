#!/usr/bin/env bash
linkFiles=`find . -name "*.md"|grep 'Links' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
techFiles=`find . -name "*.md"|grep 'Technologies' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
confFiles=`find . -name "*.md"|grep 'ConferencesPaper' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
processFiles=`find . -name "*.md"|grep 'Process' | sed 's|^.||' | sed -e 's/\.md//g'|  sort`
repo=https://github.com/broadinstitute/dsp-devops-wiki/wiki


render_section(){
  files=$1
  destination=$2

  for file in $files
  do
      title=$(echo "${file}" | awk -F/ {'print $4'})
      if [ -z "${title}" ];
      then
        title=$(echo "${file}" | awk -F/ {'print $3'})
      fi

      echo "Title: ${title}"
      echo "New Title: ${title//_/ }"
      
      scrubbed_title=$(echo "$title" | sed -e "s/\_/ /g")
      
      case "$title" in 
        *_home)
          printf "  - [%s](%s/%s)\n" "${scrubbed_title}" "${repo}" "${title}" >> "${destination}".md
          ;;
      esac

  done
}

# Render the Main Home page
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
render_section  "${techFiles}[@]" "Home"

printf "# ConferencesPapers\n\n" >> Home.md
# render_section  "${confFiles}[@]" "Home"

printf "# Process\n" >> Home.md
# render_section  "${processFiles}[@]" "Home"

printf "# Links\n\n" >> Home.md
# render_section  "${linkFiles}[@]" "Home"

