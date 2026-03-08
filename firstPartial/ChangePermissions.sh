#! /bin/bash

echo "============================="
echo "List of files and directories"
echo "============================="
ls -la | more

echo "Name with extention of file you what to change permission"
read NAME

if [ ! -f "$NAME" ]; then
    echo "File '$NAME' does not exist!"
    exit 1
fi

echo ""

echo "To who do you want change permission?"
echo "1) Owner"
echo "2) Groups"
echo "3) Neighbor child, la chusma uwu"
echo "4) All"
read USER
#case for who is given the permission
WHO=""
case $USER in
    1)
    WHO="u"
    ;;
    2)
    WHO="g"
    ;;
    3)
    WHO="o"
    ;;
    4)
    WHO="a"
    ;;
    *)
    echo "option was not valid"
    exit 1
    ;;
esac

echo "Which permission?"
echo "1) Execution"
echo "2) Write"
echo "3) Write + Execution"
echo "4) Read"
echo "5) Read + Execution"
echo "6) Read + Write"
echo "7) Read + Write + Execution"
read PERMISSION

PERMS=""
case $PERMISSION in
    1)
    PERMS="x"
    ;;
    2)
    PERMS="w"
    ;;
    3)
    PERMS="wx"
    ;;
    4)
    PERMS="r"
    ;;
    5)
    PERMS="rx"
    ;;
    6)
    PERMS="rw"
    ;;
    7)
    PERMS="rwx"
    ;;
    *)
    echo "That was not a valid option unu, try again!"
    exit 1
    ;;
esac

echo "What do you want to do with the permission?"
echo "1) Add"
echo "2) Remove"
read ACTION

ACT=""
case $ACTION in
    1)
    ACT="+"
    ;;
    2)
    ACT="-"
    ;;
    *)
    echo "There are just two options and you got it wrong... OMG O.o"
    exit 1
    ;;
esac

chmod "${WHO}${ACT}${PERMS}" "$NAME"
echo "The permission was successfully changed!!!!"
echo "use ls -la to see that indeed, it has change!!!"
