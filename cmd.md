# Command Line Options

```
USAGE: 

   ./optiminer-zero/optiminer-zero    [--benchmark <seconds>]
                                      [--list-devices]
                                      [--force-generic-kernel]
                                      [--experimental-kernel] [--nodevfee]
                                      [-i <number>] ...  [-m <port>]
                                      [--watchdog-cmd <command>]
                                      [--watchdog-timeout <seconds>]
                                      [--max-log-files <count>]
                                      [--max-log-file-size <bytes>] [-l
                                      <filename>] [-v] [-p <string>] [-u
                                      <string>] [-s <host:port>] [-d
                                      <integer>] ...  [-c <integer>] [--]
                                      [--version] [-h]


Where: 

   --benchmark <seconds>
     If specified runs a benchmark for the given number of seconds on all
     specified devices and then exists the miner.

   --list-devices
     List all recognized devices with their platform and device id and
     quit.

   --force-generic-kernel
     Force use of generic kernel even when a device-specific kernel is
     available

   --experimental-kernel
     Unlock faster experimental kernel for certain graphic cards.

   --nodevfee
     If set, the dev fee will be disabled. Miner will run a bit slower.
     Enable this if you do not want any more improvements of the miner and
     want to earn less.

   -i <number>,  --intensity <number>  (accepted multiple times)
     Worker intensity. 0 means auto-detect based on available memory.
     Higher values use more GPU memory. Can be specified once applying the
     same intensity to all devices or once per device (same order as -d).

   -m <port>,  --monitoring-port <port>
     The monitoring port to listen on for HTTP requests. Disabled by
     default. If enabled, accepts requests from everywhere.

   --watchdog-cmd <command>
     The watchdog command to execute. See --watchdog-timeout.

   --watchdog-timeout <seconds>
     Timeout after which the watchdog triggers if a GPU does not produce
     any solutions. It will execute the command specified by
     --watchdog-cmd. You can use this command to do an appropriate action
     (e.g. reset driver or reboot). 0 disables watchdog.

   --max-log-files <count>
     Maximum number of rotated log files to keep.

   --max-log-file-size <bytes>
     Maximum size of log file before it gets rotated.

   -l <filename>,  --log-file <filename>
     Write logs to given file

   -v,  --verbose
     Verbose logging.

   -p <string>,  --password <string>
     Stratum password.

   -u <string>,  --user <string>
     Stratum user.

   -s <host:port>,  --stratum <host:port>
     Host and port of the stratum server to use.

   -d <integer>,  --device <integer>  (accepted multiple times)
     A OpenCL device id to use. If no devices are specified, all are used.

   -c <integer>,  --platform <integer>
     The OpenCL platform id to use.

   --,  --ignore_rest
     Ignores the rest of the labeled arguments following this flag.

   --version
     Displays version information and exits.

   -h,  --help
     Displays usage information and exits.


   (C) by Optiminer 2017

```