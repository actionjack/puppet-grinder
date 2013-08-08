# Definition - grinder::properties {}
#
define grinder::properties(
  $grinder_processes                         = '1',
  $grinder_threads                           = '1',
  $grinder_runs                              = '1',
  $grinder_processincrement                  = '1',
  $grinder_processincrementinterval          = '60000',
  $grinder_initialprocesses                  = '1',
  $grinder_duration                          = undef,
  $grinder_script                            = 'grinder.py',
  $grinder_jvm                               = undef,
  $grinder_jvm_classpath                     = undef,
  $grinder_jvm_arguments                     = undef,
  $grinder_logdirectory                      = '/var/log/grinder',
  $grinder_hostid                            = undef,
  $grinder_consolehost                       = 'localhost',
  $grinder_consoleport                       = '6372',
  $grinder_useconsole                        = 'true',
  $grinder_reporttoconsole_interval          = undef,
  $grinder_initialsleeptime                  = undef,
  $grinder_sleeptimefactor                   = undef,
  $grinder_sleeptimevariation                = undef,
  $grinder_reporttimestoconsole              = undef,
  $grinder_debug_singleprocess               = undef,
  $grinder_debug_singleprocess_sharedclasses = undef

){ }