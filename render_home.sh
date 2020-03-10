#!/usr/bin/env bash
linkFiles=`find . -name "*.md"| grep 'Links' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
techFiles=`find . -name "*.md"| grep 'Technologies' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
confFiles=`find . -name "*.md"| grep 'Conferences_And_Papers' | sed 's|^.||' | sed -e 's/\.md//g' | sort`
processFiles=`find . -name "*.md"| grep 'Process' | sed 's|^.||' | sed -e 's/\.md//g'|  sort`
repo=https://github.com/broadinstitute/dsp-devops-wiki/wiki


render_files(){
  files=$1
  destination=$2

  for file in $files
  do
      title=$(echo "${file}" | awk -F/ {'print $4'})
      if [ -z "${title}" ];
      then
        title=$(echo "${file}" | awk -F/ {'print $3'})
      fi

      scrubbed_title=$(echo "$title" | sed -e "s/\_/ /g")

      if [ "${destination}" == "Home" ]
      then
        case "$title" in
          *_home)
            printf "  - [%s](%s/%s)\n" "${scrubbed_title}" "${repo}" "${title}" >> "${destination}".md
            ;;
        esac
      else
        printf "  - [%s](%s/%s)\n" "${scrubbed_title}" "${repo}" "${title}" >> "${destination}".md
      fi
  done
}

render_subfolders(){
  folder=$1
  subfolders=$(find "${folder}" -mindepth 1 -maxdepth 1 -type d)

  for subfolder in $subfolders
  do
    overview_page=`find ${subfolder} -name "*.md" | grep '_home' | sed -e 's/\.md//g'`;

    # Checks to see if there is an overview page for that subfolder and creates it if none is found
    if [ -z "$overview_page" ]
    then
      title=$(echo "${subfolder}" | awk -F/ {'print tolower($2)'})
      echo "Creating section home page at ${subfolder}/${title}_home.md"
      touch "${subfolder}/${title}_home.md"
    fi

    # Populates the overview page with links to the other pages in that subfolder
    if [ -n "$overview_page" ]
    then
      cheat_sheets=`find ${subfolder} -name "*.md"| grep '_cheat_sheet' | sed -e 's/\.md//g' | sort`
      references=`find ${subfolder} -name "*.md"| grep '_reference' | sed -e 's/\.md//g' | sort`
      how_tos=`find ${subfolder} -name "*.md"| grep '_how_to' | sed -e 's/\.md//g' | sort`
      others=`find ${subfolder} -name "*.md"| grep -vE '_cheat_sheet|_reference|_how_to|_home' | sed -e 's/\.md//g' | sort`

      printf "# Cheat Sheets\n" > "${overview_page}".md
      render_files  "${cheat_sheets}" "${overview_page}"
      printf "\n" >> "${overview_page}".md

      printf "# How To Guides\n" >> "${overview_page}".md
      render_files  "${how_tos}"
      printf "\n" >> "${overview_page}".md

      printf "# References\n" >> "${overview_page}".md
      render_files  "${references}" "${overview_page}"
      printf "\n" >> "${overview_page}".md

      printf "# Other\n" >> "${overview_page}".md
      render_files  "${others}" "${overview_page}"
      printf "\n" >> "${overview_page}".md
    fi
  done
}

render_folders(){

  render_subfolders "Technologies"

  render_subfolders "Conferences_And_Papers"

  render_subfolders "Process"

  render_subfolders "Links"
}

render_main_page(){
  # Render the Main Home page
  printf "Welcome to the dsp-devops-wiki wiki!

# Table of Contents
  01. [Overview](#Overview)
  02. [Process](#Process)
  03. [Projects](#Projects)
  04. [Technologies](#Technologies)
  05. [Conferences and Papers](#ConferencesPapers)

# Overview
The purpose of this wiki is to provide a common ground for tools, technologies, projects, techniques and other items of interest to doing DevOps at the Broad Institute.\n\n" > Home.md

  printf "# Technologies\n" >> Home.md
  render_files  "${techFiles}" "Home"
  printf "\n\n" >> Home.md

  printf "# Conferences And Papers\n" >> Home.md
  render_files  "${confFiles}" "Home"
  printf "\n\n" >> Home.md

  printf "# Process\n" >> Home.md
  render_files  "${processFiles}" "Home"
  printf "\n\n" >> Home.md

  printf "# Links\n" >> Home.md
  render_files  "${linkFiles}" "Home"
  printf "\n\n" >> Home.md
}


render_folders

render_main_page

