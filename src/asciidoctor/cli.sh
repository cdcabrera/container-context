#!/bin/sh
#
#
# main()
#
{
  EXEC="asciidoctor -h"
  FILES="adoc,json,js"
  WATCH=false

  while getopts p:f:e:w option;
    do
      case $option in
        p ) PORT=$OPTARG;;
        f ) FILES=$OPTARG;;
        e ) EXEC="$OPTARG";;
        w ) WATCH=true;;
      esac
  done

  if [ "$WATCH" = true ]; then
    nodemon -e $FILES --watch ../data --exec "$EXEC"
  else
    $EXEC
  fi
}
