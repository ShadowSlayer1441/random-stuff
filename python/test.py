import grp
import os
import pwd
from dec import dect

global_list = "adddd"

@dect("dedede")
def test():
    print("test")

def main():
    test()
    return
    wheel = grp.getgrnam("wheel")
    print(wheel[3])
    #print(grp.getgrall())
    home_dir = get_home_directory("Simba")
    print(home_dir)


def get_home_directory(username):
    try:
        user_info = pwd.getpwnam(username)
        return user_info.pw_dir
    except KeyError:
        return None  # User not found

main()
