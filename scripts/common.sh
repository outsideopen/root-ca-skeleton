#!/bin/sh

get_cert_name() {
        _input=

        # No need to take down user names if this is a configuration saving run.
        [ -n "$configflag" ] && return

        while : ; do
                if [ -z "$fflag" ]; then
                        echo -n "Certificate Name: "
                        read _input
                else
                        _input="`echo "$fileline" | cut -f1 -d:`"
                fi

                # There *must* be a username. If this is an interactive
                # session give the user an opportunity to retry.
                #
                if [ -z "$_input" ]; then
                        err "You must enter a Certificate Name!"
                        [ -z "$fflag" ] && continue
                fi
                break
        done
        certfile="$_input"
}