#!/bin/bash
function scriptdir {
	MYDIR=$(basename $(readlink -f $1))
	echo $MYDIR
}
