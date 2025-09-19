declare -a file=()
file+=("kitten")
file+=("fish")
echo "${file[@]}/"
exit
echo "Otherwise, it will only apply to the currently logged in user ($SUDO_USER)."
read -r REPLY
if [[ "$REPLY" == [Nn]* ]]; then
	echo "inside if"
fi
echo "done"
exit
user=$USER
user_home=$(bash -c "cd ~$(printf %q "$user") && pwd")
set -eou pipefail
uid_min=$(grep -Po '^\s*UID_MIN\s+\K\d+' /etc/login.defs)
uid_max=$(grep -Po '^\s*UID_MAX\s+\K\d+' /etc/login.defs)
username=$(getent passwd | awk -F':' -v max="$uid_max" -v min="$uid_min" 'max >= $3 && $3 >= min {print $1}' | tr '\n' ',' | sed 's/,*$//')
echo "$username"
changed="locked"
if [ "$changed" == "locked" ]; then
	echo "dog"
fi
