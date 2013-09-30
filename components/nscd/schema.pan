# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan.Iven@cern.ch <Jan.Iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/nscd/schema;

include {'quattor/schema'};

type componend_nscd_service_type = {
     "enable-cache"           ? string with match (SELF, '(yes|no)')
     "positive-time-to-live"  ? long
     "negative-time-to-live"  ? long
     "suggested-size"         ? long
     "check-files"            ? string with match (SELF, '(yes|no)')
     "persistent"             ? string with match (SELF, '(yes|no)')
     "shared"                 ? string with match (SELF, '(yes|no)')
     "max-db-size"            ? long
     "auto-propagate"         ? string with match (SELF, '(yes|no)')
};

type component_nscd_type = {
    include structure_component

    "logfile"          ? string
    "debug-level"      ? string
    "threads"          ? long
    "max-threads"      ? long
    "server-user"      ? string
    "stat-user"        ? string
    "reload-count"     ? string
    "paranoia"         ? string with match (SELF, '(yes|no)')
    "restart-interval" ? long

    "passwd" ? componend_nscd_service_type
    "group"  ? componend_nscd_service_type
    "hosts"  ? componend_nscd_service_type
};

bind "/software/components/nscd" = component_nscd_type;
