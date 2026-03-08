#!/bin/bash

echo "============================="
echo "      Existing users"
echo "============================="
#Internal Field Separator IFS:= how to separate fields when reading
#GECOS is a really ancient field that used to save user info
#These days saves user info with format: Full name, ofice, work tel, home tel
#tr -d ',' means translate delete — basically says: delete all characteres that are ,
while IFS=: read -r USERNAME _ USER_ID GID_NUM GECOS HOME_DIR LOGIN_SHELL; do
    GECOS=$(echo "$GECOS" | tr -d ',')
    echo ""
    echo "User:       $USERNAME"
    echo "UID:           $USER_ID"
    echo "GID:           $GID_NUM"
    echo "Name:        $GECOS"
    echo "Home:          $HOME_DIR"
    echo "Shell:         $LOGIN_SHELL"
    echo "-----------------------------"
done < <(getent passwd)
