#! /usr/bin/env bash

reponame="chaseleif"
repodir="/var/db/repos/$reponame"

if [ ! -d "$repodir" ] ; then
  read -r -p "Create non-existent directory $repodir? [y/N] " confirm
  printf "\n"
  [[ "$confirm" =~ ^[yY].* ]] || exit
  sudo mkdir "$repodir" || exit
  sudo chown "$USER" "$repodir" || exit
fi

cd overlay || exit

for category in * ; do
  [ -d "$category" ] || continue
  [ -d "${repodir}/${category}" ] || mkdir "${repodir}/${category}"
  pushd "$category" >/dev/null || exit
  for atom in * ; do
    [ -d "$atom" ] || continue
    printf "  %s/%s::%s\n" "$category" "$atom" "$reponame"
    rm -rf "${repodir:?}/${category}/${atom}"
    cp -R "$atom" "${repodir}/${category}/"
  done
  popd >/dev/null || exit
done

printf "If a manifest is incomplete use sudo pkgdev manifest -m\n"
