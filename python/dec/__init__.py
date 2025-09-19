#!/usr/bin/python3

import subprocess
import inspect
import textwrap

def dect(input):
    def dec(func):
        def wrapper():
            command = [
               "python3",
                "-"]
            source = inspect.getsource(func)
            lines = source.splitlines()
            body = textwrap.dedent("\n".join(lines[2:]))
            print(body)
            print(input)
            return subprocess.run(command, input=str(body), text=True, check=True) 
        return wrapper
    return dec
