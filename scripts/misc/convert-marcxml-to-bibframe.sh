#!/bin/bash
SAXON_JAR=$1
QUERY=$2
SOURCE=$(pwd)/$3

BASE=http://libris.lkd.local/bib/
java -cp $SAXON_JAR net.sf.saxon.Query $QUERY marcxmluri=$SOURCE baseuri=$BASE serialization=rdfxml
