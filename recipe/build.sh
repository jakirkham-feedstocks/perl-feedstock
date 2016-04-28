#!/bin/bash
sh Configure -de -Dprefix=$PREFIX -Duserelocatableinc
make
make test
make install

# Configure CPAN.
export PERL_MM_USE_DEFAULT=1
perl -MCPAN -eshell

# Add LWP as this is very useful.
perl -MCPAN -e 'install Bundle::LWP'
