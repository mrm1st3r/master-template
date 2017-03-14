#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Usage: $0 filename";
    exit 1;
fi

ARGS="-r"
FILE=$1

if [ $# -gt 1 ]; then
	if [ $1 == "do" ]; then
		ARGS="$ARGS -i"
		FILE=$2
	fi
fi
# Sections
sed ${ARGS} 's/^\\section\{([^}]*)\}$/\\section\{\1\} \\label\{sec:\1\}/p' ${FILE}
# Subsections
sed ${ARGS} 's/^\\[sub]+section\{([^}]*)\}$/\\subsection\{\1\} \\label\{sc:\1\}/' ${FILE}
