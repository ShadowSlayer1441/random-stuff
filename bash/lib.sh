#!/bin/bash
set -eou pipefail

for_each_user() {
    local callback="$1" uid_min uid_max
    uid_min=$(grep -Po '^\s*UID_MIN\s+\K\d+' /etc/login.defs)
    uid_max=$(grep -Po '^\s*UID_MAX\s+\K\d+' /etc/login.defs)

    local username uid home _;
    getent passwd | while IFS=: read -r username _ uid _ _ home _; do
        if (( uid >= uid_min && uid <= uid_max )); then
            "$callback" "$username" "$uid" "$home"
        fi
    done
}
