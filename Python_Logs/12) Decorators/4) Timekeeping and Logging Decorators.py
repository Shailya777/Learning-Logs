import time
from datetime import datetime
import logging

def type_conv(func):

    def wrapper(a, b):

        # Get Start time:
        st = datetime.now()

        # Sleep:
        time.sleep(1) # Put execution to sleep for 1 sec.

        result = func(int(a), int(b))

        # Get End Time:
        et = datetime.now()

        # Total Execution Time:
        ext = et - st

        logging.basicConfig(filename= 'example.log', level= logging.DEBUG)
        log = logging.getLogger(func.__name__)
        msg = f'Start Time: {st}'
        log.info(msg)
        msg = f'End Time: {et}'
        log.info(msg)
        msg = f'Execution Time: {ext}'
        log.info(msg)
        msg = f'Parameters Passed are {a} and {b}'
        log.info(msg)

        print(f'Execution Time: {ext}')

        return result

    return wrapper

@type_conv          # Useful when we have full access to source code of function.
def add(a, b):
    return a + b

@type_conv          # Useful when we have full access to source code of function.
def sub(a, b):
    return a - b

arg1 = '2'
arg2 = 3

print(add(arg1, arg2))
print(sub(arg1, arg2))