# NOTES

## New Todo

- [ ] Create new master setup script to use su to run the admin components via an admin user if one is specified and the current user is not
- [ ] Identify which apps I run at login, and of those, which will automatically start at login if I run them now, vs others which requires user intervention. For the latter, consider whether to do so manually or automatically, and if manual, print a message to the console reminding me to do so. Alternatively, print messages, but have a separate script to do so automatically as well.
- [ ] Update the non-admin user setup script to install ~/.brew and ignore /opt/homebrew. Actually, should probably stop adding the /opt/homebrew bits to the system environment paths, as it's only being used for casks now.

## Test

- setup - Master script, can be run by either the admin or non-admin user, but must specify the users involved.
  - setup-admin - Configure system settings for and by the admin user, sets up the system homebrew install and installs clt/xcode
  - install-system-casks - Install system apps with brew-cask as the admin user
  - install-apps - Install mas apps and user apps with brew-cask as the non-admin user
  - setup-user - General user preferences and default apps for a non-admin user
    - setup-apps - Set up default apps, etc
  - setup-user-extra - Personal preferences and configuration for a non-admin user

## Installed Apps I Don't Use

- Firefox
- Safari Technology Preview
- Unofficial Wineskin Winery
- Typora
- unpkg
- Motrix
- Steam
- Suspicious Package
- TaskPaper
- Secretive
- Transmission Remote GUI
- Ao
- HistoryHound
- Mark Text
- [Various games]
- Privileges - https://github.com/SAP/macOS-enterprise-privileges

## Apps I actually use

### Occasional, Media (as needed?)

- HandBrake
- MusicBrainz Picard
- XLD

### Maybe

#### Outbound firewall

- Little Snitch

NOTES

TODO: merge the Brewfile, Caskfile, and Masfile. If the tools can't handle it, the script can.
Apps/
    core
        cask 'alfred'
        cask 'captin'
        cask 'carbon-copy-cloner'
        cask 'fantastical1' TODO: FIXME
        cask 'iterm2'
        mas 'Magnet', id: 441258766
        cask 'path-finder'
        mas 'PopClip', id: 445189367
        cask 'syncthing'
        cask 'vlc'
    core.sh
        ./extras/install-paste # mas 'Paste', id: 967805235
    development
        cask 'dash' # mas 'Dash', id: 458034879
        cask 'slack'
        cask 'visual-studio-code'
    extra
        mas 'Bear', id: 1091189122
        cask 'calibre'
        mas 'GoodLinks', id: 1474335294
        cask 'omnioutliner'
        mas 'Reeder 5.', id: 1529448980
        mas 'Spark', id: 1176895641
        mas 'Textual 7', id: 1262957439
        mas 'Todoist', id: 585829637
        cask 'vivaldi'
    hardware
        mas 'WiFi Signal', id: 525912054
    hardware,laptops
        cask 'coconutbattery'
        mas 'UnPlugged', id: 423123087 # or cask 'unplugged'
    hardware,utilities
        mas 'WiFi Explorer', id: 494803304
    safari-extensions
        mas 'Shut Up', id: 1015043880
        mas 'AdGuard for Safari', id: 1440147259
        mas 'Tampermonkey', id: 1482490089
        mas 'Tab Count', id: 1487406555
        mas 'PiPer', id: 1421915518
    utilities
        mas 'Deliveries', id: 290986013
        cask 'keepingyouawake'
        mas 'LilyView', id: 529490330
        cask 'the-unarchiver'

AdminApps/
    core
        cask '1password'
        cask 'appcleaner'
        cask 'bartender'
        cask 'blockblock'
        cask 'karabiner-elements'
        cask 'oversight'
        cask 'reikey'
    development
        cask 'docker'
    hardware,extra
        cask 'parallels'
    utilities
        cask 'daisydisk'
        cask 'send-to-kindle'
        cask 'zoomus'

Categories apply to Brewfile, Caskfile, and Masfile.
Primary system: core, safari extensions, extra, hardware, laptops, utilities, development
Unused: gaming, game-wrappers

### Core **

- 1Password
- Alfred
- AppCleaner
- Bartender
- BlockBlock
- Captin
- Carbon Copy Cloner
- Fantastical (Just for the menu bar item)
- iTerm
- Karabiner Elements
- Magnet
- Oversight
- Paste
- Path Finder
- PopClip
- ReiKey
- Syncthing
- VLC: QuickTime can't play everything.

### Extra **

- Bear
- Calibre
- GoodLinks
- OmniOutliner
- Reeder
- Spark
- Textual
- Todoist
- Vivaldi

### Hardware **

- WiFi Signal

### Hardware, Extra **

- Parallels

### Hardware, Laptops **

- coconutBattery
- UnPlugged

### Development **

- Dash
- Docker
- Slack
- Visual Studio Code

### Safari extensions **

- AdGuard
- PiPer
- Shut Up
- Tab Count
- Tampermonkey

### Utilities **

- DaisyDisk
- Deliveries
- KeepingYouAwake
- LilyView
- Privileges
- Send to Kindle
- The Unarchiver
- zoom.us

### Hardware, Utilities **

- WiFi Explorer

## Remnant

- Left out of the setup:

  - TaskExplorer: really slow at getting certain bits of info, and limited in other ways vs Activity Monitor
  - DHS: informative, but there isn't much a user can do about it
  - RansomWhere: performance impact, and I'm not that paranoid (yet)
  - Lockdown: the underlying lockdown script is superceded by osx-config-check

http://forums.macrumors.com/threads/can-a-mac-be-hacked-how-do-i-know-if-it-happens-security-advise-welcome.1087922/page-3#post-11835313

The below is via https://github.com/drduh/macOS-Security-and-Privacy-Guide

Consider hosts file level blocking of malware, etc, since it'll block it
everywhere, not just in my primary browser

Programs such as Little Snitch, Hands Off, Radio Silence and Security Growler
provide a good balance of usability and security. See also LuLu.

Google Chrome

  Create at least three profiles, one for browsing trusted Web sites (email,
  banking), another for mostly trusted Web sites (link aggregators, news
  sites), and a third for a completely cookie-less and script-less experience.

  One profile without cookies or Javascript enabled (e.g., turned off in
  chrome://settings/content) which should be the preferred profile to visiting
  untrusted Web sites. However, many pages will not load at all without
  Javascript enabled.

  One profile with uMatrix or uBlock Origin (or both). Use this profile for
  visiting mostly trusted Web sites. Take time to learn how these firewall
  extensions work. Other frequently recommended extensions are Privacy Badger,
  HTTPSEverywhere and CertPatrol (Firefox only).

  One or more profile(s) for secure and trusted browsing needs, such as
  banking and email only.

  Adobe Flash, Oracle Java, Adobe Reader, Microsoft Silverlight (Netflix now
  works with HTML5) and other plugins are security risks and should not be
  installed.

Some protocols, such as PPTP, should be avoided in favor of OpenVPN, for
example.

Look to Yubikey for a two factor and private key (e.g., ssh, gpg) hardware
token. See drduh/YubiKey-Guide and trmm.net/Yubikey. One of two Yubikey's
slots can also be programmed to emit a long, static password (which can be
used in combination with a short, memorized password, for example).

Always encrypt files locally before backing them up to external media or
online services.

macOS remembers access points it has connected to. Like all wireless devices,
the Mac will broadcast all access point names it remembers (e.g.,
MyHomeNetwork) each time it looks for a network, such as when waking from
sleep. This is a privacy risk, so remove networks from the list in System
Preferences > Network > Advanced when they're no longer needed.

If you wish, disable Diagnostics & Usage Data.

Consider creating a second, non-administrator account for Web browsing and
general use which doesn't require elevated privileges. See issue #9.

If you want to play music or watch videos, use VLC media player which is free
and open source.

If you want to use torrents, use Transmission which is free and open source
(note: like all software, even open source projects, malware may still find
its way in). You may also wish to use a block list to avoid peering with known
bad hosts - see Which is the best blocklist for Transmission and
johntyree/3331662.

In systems prior to macOS Sierra (10.12), enable the tty_tickets flag in
/etc/sudoers to restrict the sudo session to the Terminal window/tab that
started it. To do so, use sudo visudo and add the line Defaults tty_tickets.

Disable Handoff and Bluetooth features, if they aren't necessary.
