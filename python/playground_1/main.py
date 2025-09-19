from decorators import use_global

MY_GLOBAL = "hello"

@use_global(MY_GLOBAL)
def foo():
    print("foo running")

foo()
