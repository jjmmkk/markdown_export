#!/bin/bash

if [[ -f $1 ]]; then

    input_file=$1;

    # Make output file path
    output_file=`echo $input_file | sed -e 's/\.[a-zA-Z]*$/.html/'`;

    # Convert Markdown to HTML
    html=`perl resources/Markdown.pl --html4tags $input_file`;

    # Get wraping HTML
    wrap=`cat resources/wrap.html`;

    # Split wrap in placeholder
    placeholder='{{placeholder}}';
    wrap_before=${wrap%$placeholder*};
    wrap_after=${wrap#*$placeholder};

    # Combine parts and output in file
    echo "$wrap_before$html$wrap_after" > $output_file;

fi
