#!/bin/sh
echo "Container name?"
read _name
echo "Container port?"
read _iport
echo "External port?"
read _eport

_storage=$PWD/public/

docker run -dit --name $_name -p $_eport:$_iport -v $_storage:/usr/local/apache2/htdocs/ httpd:2.4

if [ $? != 0 ]; then
    echo -e "\e[31m Error: Container startup failed \e[0m"
    exit
else
    echo -e "\e[32mContainer $_name started on port $_iport mapped to external port $_eport \e[0m"
    echo "Add .html files to $_storage"
fi

