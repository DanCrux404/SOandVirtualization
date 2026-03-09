#! /bin/bash

echo "===================================="
echo "           List of process          "
echo "===================================="

ps -A

echo "Enter the process ID you want to delete "
read IDPROCESS
# 2>/dev... is to not show a system message and show my own
if ! kill -0 "$IDPROCESS" 2>/dev/null; then
    echo "Process '$IDPROCESS' does not exists"
    echo "I showed you the list..."
    echo "I left it simple for you... just an ID that is in the list..."
    echo "And this is how you repay me?!?!?!?!?!?"
    echo "trying to kill a procees that is not been executed? really? -.-  "
    exit 1
fi

kill -9 "$IDPROCESS"
echo "The procees passed to a better life..."
echo "Go check the process with ps- A to see that no longer exists D:"

