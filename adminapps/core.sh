#!/bin/sh

CASKROOM="$(brew --caskroom)"
if [ -d "$CASKROOM"/whatsyoursign ]; then
    find "$CASKROOM"/whatsyoursign -name WhatsYourSign\ Installer.app -print0 \
        | xargs -0 open
fi

"$(dirname "$0")/../extras/install-oversight"
