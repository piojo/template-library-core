# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/krb5clt/config-rpm;
include {'components/krb5clt/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-krb5clt", "13.9.0-1", "noarch");

 
"/software/components/krb5clt/dependencies/pre" ?= list("spma");
"/software/components/krb5clt/active" ?= true;
"/software/components/krb5clt/dispatch" ?= true;
 
