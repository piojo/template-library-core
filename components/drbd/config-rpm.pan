# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


############################################################
#
# type definition components/drbd
#
#
############################################################
 
unique template components/drbd/config-rpm;
include { 'components/drbd/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-drbd", "13.9.0-1", "noarch");

 
'/software/components/drbd/version' ?= '13.9.0';

"/software/components/drbd/dependencies/pre" ?= list("spma");
"/software/components/drbd/active" ?= true;
"/software/components/drbd/dispatch" ?= true;
 
