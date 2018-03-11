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
provide a good balance of usability and security.

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
