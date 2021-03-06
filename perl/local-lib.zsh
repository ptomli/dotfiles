if [[ -e $HOME/.perl5 ]];
then
  export PERL_MB_OPT="--install_base \"$HOME/.perl5\""
  export PERL_MM_OPT="INSTALL_BASE=$HOME/.perl5"
  export PERL5LIB="$HOME/.perl5/lib/perl5"
  export PATH="$HOME/.perl5/bin:$PATH"
  export PERL_LOCAL_LIB_ROOT="$HOME/.perl5:$PERL_LOCAL_LIB_ROOT"
  eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
fi
