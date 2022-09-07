#!/bin/sh -
VERSION=0.0.01
OLDPATH=$PATH
PROGRAM=`basename $0`
PATH="/bin:/usr/bin"

usage(){
    echo "Usage: $PROGRAM [--?] [--help] [--version]" 
}
usage_and_exit(){
    usage
    exit $1
}
version(){
    echo "$PROGRAM version $VERSION"
}
error(){
    echo "$@" 1>%2
    usage_and_exit 1    
}

while [ $# > 0 ]
do
case $1 in
--help | --hel | --he | --h | -help | -hel | -he | -h )
usage
;;
--version | --versio | --versi | --vers |--ver | --ve | --v |\
-version | -versio | -versi | -vers | -ver | -ve | -v )
version
;;
--? | -? )
usage
;;
-* )
error "Unrecognize Option $1"
;;
*)
break
;;
esac
shift
done
