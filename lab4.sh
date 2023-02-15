#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"
if [$# -gt 3]; then
    n=$#
    touch excess.txt
    for ((i=4 ; i<n+1 ; i++)) 
    do
        echo "$i\n" > excess.txt
    done
if [$# -eq 3]; then
    if [ "$2" -eq 1 ] ; then
        if [! -e $3]; then 
            touch $3
            echo "$USER" > $3
        fi
    fi
    elif [ "$2" -eq 2 ] ; then
        if [ -e $3]; then 
            if [! -d "$backup" ]; then
                mkdir backup
            fi
        cp WDIR/$3 $WDIR/backup
        fi
    fi
    elif [ "$2" -eq 3 ] ; then
        if [ -d "$backup" ]; then
            cd "$WDIR/bcakup"
            if [ -e $3]; then 
            cp backup/$3 $WDIR
            rm $3
            fi
        fi
    fi
else       
    if [ "$2" -eq 1 ] ; then
        if [! -e file1.txt]; then 
            touch file1.txt
            echo "$USER" > file1.txt
        fi
    fi
    elif [ "$2" -eq 2 ] ; then
        if [ -e file1.txt]; then 
            if [! -d "$backup" ]; then
                mkdir backup
            fi
        cp WDIR/file1.txt $WDIR/backup
        fi
    fi
    elif [ "$2" -eq 3 ] ; then
        if [ -d "$backup" ]; then
            cd "$WDIR/bcakup"
            if [ -e file1.txt]; then 
            cp backup/file1.txt $WDIR
            rm file1.txt
            fi
        fi
    fi
if
echo "Finished"
