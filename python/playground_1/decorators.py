def use_global(value):
    def decorator(func):
        def wrapper(*args, **kwargs):
            print("Decorator sees value =", value)
            return func(*args, **kwargs)
        return wrapper
    return decorator
