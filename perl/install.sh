#!/bin/sh
#
# Perl local::lib
#
# This installs local::lib into $HOME/.perl5
#
if ! [[ -e $HOME/.perl5 ]];
then
  TMP=$(mktemp -d /tmp/temp.XXXX)
  cd $TMP
  curl -O http://www.cpan.org/authors/id/H/HA/HAARG/local-lib-2.000015.tar.gz
  tar xzf local-lib-2.000015.tar.gz
  cd local-lib-2.000015
  perl Makefile.PL --bootstrap=~/.perl5
  make test && make install
  cd /tmp
  rm -rf $TMP
fi
