# Example plugin for Slipm honeypot.

# Plugin settings:
# These must ONLY use the variables shown below. Other variables may be
# used inside bash functions, if they are declared as local.

# To use TCP, set this to 1. To use UDP, set it to 0.
tcp=1

# What port should the plugin be run on? Eg, to emulate Apache, the best
# bet would probably be 80. To emulate a telnet server, try 23. Be aware
# that ports below 1025 need elevated privelages.
port=5555

# This is optional, and should only be used if you know what you are
# doing. Specify command-line arguments to netcat here. Be sure they do
# not conflict with the other arguments passed by the honeypot script.
ncopts="-T"

# This is the function that will be called when the plugin is run.
# Anything echoed to the shell will be sent through netcat to the
# attacker. Anything read from stdin will come from netcat. To send
# information to the log, write to stderr (like: echo hi >&2).
start() {
    echo "Example!"
    local somevariable
    read somevariable
    echo $somevariable >&2
    echo "$somevariable"
}
