# OptiminerZ/Zcash

GPU miner for Zcash.

## v1.0.1
[Download Linux
64bit](https://github.com/Optiminer/OptiminerZcash/raw/master/optiminer-zcash-1.0.1.tar.gz)
<!--
[Download Windows 64bit](https://github.com/Optiminer/OptiminerZcash/raw/master/optiminer-zcash-0.6.0.zip)
-->

### Features

Supports:
- Linux 64bit only.
- AMD GCN cards only.

Expected speed (stock card):
- R9 Nano: 260 S/s
- R9 290: 200 S/s
- RX 480: 195 S/s

Windows support may be added in a future version.

No NVIDIA support planned at the moment.

The miner contains a fee for supporting the dev. All shown hash rates are
net rate, i.e., with fee deducted. What you see is what You get!

## Usage:
Run from the archive root directory:
$ ./optiminer-zcash -s eu1-zcash.flypool.org:3333 -u t1Yszagk1jBjdyPfs2GxXx1GWcfn6fdTuFJ.example -p password

For a list of all options run with '-h':
$ ./optiminer-zcash -h

There are also 'mine.sh' and 'start.bat' scripts for running it under
Windows and Unix. Just edit the pool and user settings before running!

### Secure connection
Since version 1.0.0, the miner supports ZStratum protocol over TLS to
encrypt the connection to the mining pool. Currently, this is only supported
with flypool.

Use "zstratum+tls://" as prefix to the pool address, e.g.,
$ ./optiminer-zcash -s zstratum+tls://eu1-zcash.flypool.org:3443 -u t1Yszagk1jBjdyPfs2GxXx1GWcfn6fdTuFJ.example -p password


## Troubleshooting

### Intensity
Starting with version 0.5.0, there is an intensity option (-i). Higher
intensity generally means faster hashing. But if it is too high, the miner
might crash or have very poor performance. The miner tries to auto-detect
the best intensity for your card but you can experiment with different
values.

E.g., adding '-i 2' to command line sets intensity to 2 for all cards. If
you have multiple card you can specify one '-i' for each card, e.g., if you
have four cards '-i 3 -i 4 -i 4 -i 3' (same order as -d). An intensity value
of 0 means auto-detect.

### `GLIBCXX_3.4.20' not found on Ubuntu 14.04
Install the required libstc++:
```shell
sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
sudo apt-get update
sudo apt-get install libstdc++6
```

### Failed to read bin/base.bin
You need to run the miner from the directroy where optiminer-zcash is in
otherwise it will not find the opencl kernel.

### libOpenCL.so.1 cannot open object
There is a problem with your OpenCL installation. Make sure that there is a
symlink /usr/lib/libOpenCL.so.1 that points to the OpenCL library on your
system.

## Changelog
- [1.0.1] Change default directory for openssl certificates.
- [1.0.0] Add --nodevfee option.
- [1.0.0] Minor optimizations.
- [0.9.1] Add support for zstratum+tls protocol.
- [0.9.1] Multi-threading issues fixes.
- [0.9.0] Switched to new async I/O communication.
- [0.9.0] Switched to different logging library. Now supports log rotation.
- [0.6.0] 20-30% speed improvements.
- [0.5.0] Add intensity for increased hash rates.
- [0.4.0] Async solution validation and reporting.
- [0.4.0] Added monitoring port (see -m).
- [0.3.4] Add GPU watchdog (--watchdog-timeout and --watchdog-cmd).
- [0.3.4] Fix deadlock in stratum client.
- [0.3.3] Fix VM_CONTEXT1_PROTECTION_FAULT_ADDR.
- [0.3.2] Re-enable file logging though --log-file.
- [0.3.2] Fix bug in extranonce subscription.
- [0.3.2] Improve stratum client stability.
- [0.3.2] Reduced dev fee.
- [0.3.1] Slight improvement on hashing speed on some cards.
- [0.3.1] Turn off writing to log file.
- [0.3.1] Enable thread-safe mode for logging library.
- [0.3.1] Support for extranonce.subscribe for improved compatibility with
  NiceHash
- [0.3.0] New way of distributing kernels.
- [0.2.1] Fix invalid machine instruction error.
- [0.2.0] Filter invalid solutions on GPU.
- [0.1.1] Fix startup crash.
