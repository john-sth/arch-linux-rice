#!/bin/bash

FILE=$(echo "$DUNST_BODY" | tail -n 1)

# Handle PDF and image files with Firefox
if [[ "$DUNST_BODY" =~ \.(pdf|png|jpe?g)$ ]]; then
    ACTION=$(notify-send --replace-id="$DUNST_ID" -a firefox "$FILE" --action="firefox" --icon=/usr/share/pixmaps/firefox.png)

    case "$ACTION" in
    "0")
        vivaldi "$HOME/Downloads/$FILE"
        ;;
    "2")
        ;;
    esac
# Handle LibreOffice files (Excel/CSV)
elif [[ "$DUNST_BODY" =~ \.(xlsx|csv)$ ]]; then
    ACTION=$(notify-send --replace-id="$DUNST_ID" -a LibreOffice "$FILE" --action="libreoffice" --icon=/usr/share/icons/hicolor/64x64/apps/libreoffice-calc.png)

    case "$ACTION" in
    "0")
        libreoffice --calc "$HOME/Downloads/$FILE"
        ;;
    "2")
        ;;
    esac
fi
