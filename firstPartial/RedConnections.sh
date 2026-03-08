#! /bin/bash

# Get a list of all established TCP connections (both IPv4 and IPv6)
echo "Established TCP connections:"
#-t only TCP connections
#-n numeric IP
#-p proccess connections
#state established filter active connections
#ss command is a modern utility to investigate sockets
ss -tnp state established
