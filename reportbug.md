# How to Report a Bug

Bug reports are a good way to help improving optiminer.
However, to be useful you need to follow a few steps:

# 1. Make sure that your problem is reproducable. 

Does it still happen after a reboot?
Is it related to some local problem, e.g., is your internet connection working?
If you observe that some GPU randomly freeze or stop mining this is almost always
related to a hardware problem. Try changing the risers, switching the order of the GPU,
search the forum for tips. This is not worth reporting a bug unless it happens
reproducable with multiple GPUs in multiple rigs.
   
# 2. Collect as much information as possible.

Add at least following information to the bug report:

* Which OS are you using? Exact version.
* Which version of the miner are you using (shown by `optiminer-zcash --version`).
* Which graphic driver are you using?
* What GPUs are you using. Post the output of `optiminer-zcash --list-devices`.
* How often is this problem happening? Everytime? Sporadically? Related to some other events?
* What is the expected behavior and what is the actual behavior.
* Try different settings:
  * Does changing the intensity make any difference (`-i`).
  * If you have multiple GPUs just run on one (`-d`). Also try to remove
    GPUs from the system.
  * Try a different mining pool.
* Enable logging (`--log-file`) and attach log file when reporting the bug.

# 3. Open an issue.

If you have followed step 1 and 2 you are ready to open a new Issue here:
https://github.com/Optiminer/OptiminerZcash/issues/new
