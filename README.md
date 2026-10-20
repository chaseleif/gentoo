# Overlay

## lxde-base/lxpanel

lxpanel-0.10.1-r2 latest official includes gtk problems that have been fixed
- created 0.11.1-r1 for newer version

Version 0.11.1 includes all patches applied to 0.10.1 and more.

Mostly copied the 0.10.1-r2 ebuild, modified for `SRC_URI` and `src_prepare`

## x11-misc/fracplanet

Package was removed from Gentoo.

- No upstream updates since 2017
- QT5 dependency, needed update to QT6

I started from the original source and updated the package to use QT6.

See repo at https://github.com/chaseleif/fracplanet

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
