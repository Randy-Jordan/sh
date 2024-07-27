#!/bin/bash

baseDir=~/tgt 

if [[ -d "$baseDir" ]]; then
    for dir in "$baseDir"/*/; do
        if [[ -f "${dir}/inscope.txt" ]]; then  
            programName=$(basename "$dir")
            echo "Grabbing domains for $programName:"
            cat "${dir}/inscope.txt" | xargs -I{} echo "{} is in scope." 
        else
            programName=$(basename "$dir")  
            echo "No root domains found for $programName!"
        fi
    done
else
    echo "Directory '$baseDir' does not exist."
fi

