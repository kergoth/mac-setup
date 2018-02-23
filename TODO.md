Updates:

- Kap
- Unplugged
- Magnet
- Captin
- coconutBattery?
- Firefox as default
- Oversight
- Docker
- Migrate away from Wunderlist and uninstall it

- Re-visit https://github.com/kristovatlas/osx-config-check
- https://gist.github.com/johan/6108880
- Fix opening of the newly installed apps, as spotlight likely hasn't indexed
  them all - look for the apps directly, instead
- Add numerous `defaults` configurations to the setup, both more
  security-related bits and general personal preferences, ideally separating
  the two for easier sharing with others
  - Change default open with behavior in Path Finder (text files, terminal)
  - Finder: show path bar, status bar

- Add bits I prefer to install with language-specific package managers
  - Add bits I like to install into isolated areas rather than global

Consider / maybe:

- Add cask to extra: malwarebytes anti-malware
- Drop brew-bundle usage in favor of direct shell scripting, as it's just
  a wrapper, and I keep having to do extra beyond what it can handle anyway

- Certain mas apps can't be installed until I login, but I can't split out the
  bits that do from those that don't without ending up with numerous
  Brewfiles. Might just leave it as is, and if I forget to sign in, and want
  to on that machine, I'll do so and re-run install-apps.

For the two-user setup:

- Validate that most of the apps I rely on on a daily basis work fine on
  a non-admin user. Use the VM to install both core and extras, and possibly
  a bit more, and run all the apps.
- Arrange to hide the admin user account and move its homedir and whatnot, as
  documented at https://support.apple.com/en-us/HT203998 and referenced by
  https://github.com/drduh/macOS-Security-and-Privacy-Guide/pull/149/files
  - Related: remove the admin user's access to FileVault: `sudo fdesetup remove -user Username`
- Can I script adding the second admin user and demoting the current/existing
  user, and doing the rest of the above setup, for a freshly installed mac?
  Then the second step would be to log out of the standard user and log back
  in, then use `login` at a shell to switch the shell to the admin user, then
  run `setup-admin` and `install-apps` there.
- Determine if it's worth changing the default app install dir for casks to
  ~/Applications. I'll have to switch to the admin user to install .pkg apps
  anyway, and those write to /Applications directly, so only a subset would go
  to ~/Applications.
