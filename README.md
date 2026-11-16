# Overlay

## dev-vcs/git

Modified gentoo:: dev-vcs/git ebuild for rust-free git

### v2.55.0
The [Libre-WD-40 fork of git](https://github.com/Libre-WD-40/git)
- dev-vcs/git will require rust beginning in Git 3.0

### Later versions
Brought over [my own fork of git](https://github.com/chaseleif/git)
- Kept tags for versions required for a test (v2.28.0,v2.29.0)
- Next stable is v2.56.1

With the number of new changes, using original git as upstream.

Updated patches for 2.56.1 -- the curl patch was merged upstream.

## lxde-base/lxpanel

lxpanel-0.10.1-r2 latest official includes gtk problems that have been fixed
- created ebuild for newer version 0.11.1

Version 0.11.1 includes all patches applied to 0.10.1 and more.

Mostly copied the 0.10.1-r2 ebuild, modified for `SRC_URI` and `src_prepare`

## www-client/librewolf

Copy of [librewolf ebuild repo](https://codeberg.org/librewolf/gentoo)

- Modified the dependency for pgo from xorg to xorg _or_ xlibre
- No other changes

## x11-misc/fracplanet

Package was removed from Gentoo.

- No upstream updates since 2017
- QT5 dependency, needed update to QT6

I started from the original source and updated the package to use QT6.

Uses [my fracplanet repo](https://github.com/chaseleif/fracplanet)

---
# Patches

## lxde-base/lxpanel-0.10.1

### smooth-scroll.patch
Patch cherrypicks a gtk smoothscrolling fix from v0.11.1

## media-sound/moc-2.6

### llvm-pthread.patch
Fixes:
Bug 831179 - media-sound/moc-2.6_alpha3-r6 fails to compile
https://bugs.gentoo.org/831179

The issue is seen on llvm systems where clang fails to configure for pthreads.
Warn as error is set and the configure generates an unused parameter warning.

Another comment notes "generally all" m4 scripts are outdated.

## sys-apps/util-linux-2.42.3

### static-issue.patch

Makes the "check if /etc/issue changed" function to unconditionally return no.

This "fixes" the recent bug where /etc/issue is printed multiple times.

Including \t in /etc/issue, among other cases(?), makes it appear to have changed.

If we just don't check it, we have a static issue file.

---
# Special

## x11-terms/st-0.9.3

Patches obtained from suckless site with varying amount of modification

- Patch group in patches directory
- Saved configuration in savedconfig directory

Patches are applied lexographically,
savedconfig configuration provides settings used by some patches.

