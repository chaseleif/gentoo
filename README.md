# Overlay

## lxde-base/lxpanel

lxpanel-0.10.1-r2 latest official includes gtk problems that have been fixed
- created 0.11.1-r1 for newer version

Version 0.11.1 includes all patches applied to 0.10.1 and more.

Mostly copied the 0.10.1-r2 ebuild, modified for SRC_URI and src_prepare

---
# Patches

## lxde-base/lxpanel-0.10.1

### smooth-scroll.patch
Patch cherrypicks a gtk smoothscrolling fix from v0.11.1

## media-sound/moc

### llvm-pthread.patch
Fixes:
Bug 831179 - media-sound/moc-2.6_alpha3-r6 fails to compile
https://bugs.gentoo.org/831179

The issue is with clang/llvm failing the configure script for pthreads.
Warn as error is set and the configure generates an unused parameter warning.

Another comment notes "generally all" m4 scripts are outdated.
