# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Judit Novak <Judit.Novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # php, 13.9.0, 1, 20130911-1927
      #

unique template components/php/config-common;

include { 'components/php/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/php';

#'version' = '13.9.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
