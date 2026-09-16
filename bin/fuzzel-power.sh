#!/bin/sh

choice=$(
    printf '%s\n' \
        '󰗼 Quit graphical session' \
        '󰐥 Power off' \
        '󰜉 Restart' \
        '󰤄 Suspend' \
        '󰒲 Hibernate' |
    fuzzel --dmenu
)

case "$choice" in
    '󰗼 Quit graphical session')
        hyprshutdown
        ;;
    '󰐥 Power off')
        loginctl poweroff
        ;;
    '󰜉 Restart')
        loginctl reboot
        ;;
    '󰤄 Suspend')
        loginctl suspend
        ;;
    '󰒲 Hibernate')
        loginctl hibernate
        ;;
esac
