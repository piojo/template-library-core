# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   German Cancio <German.Cancio@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # state, 13.9.0, 1, 20130911-1927
      #

declaration template components/state/schema;

include { 'quattor/schema' };

type state_config = {
    'dummy' : string = 'OK'
} = nlist();

type state_component = {
    include structure_component
    'config' : state_config
};

bind '/software/components/state' = state_component;
