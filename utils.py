""" Generic Python utilities.
"""

import sys
import time


def get_num_nullops(max_sample=1.0):
    """ Return number of do-nothing loop iterations necessary to consume
    one second of CPU time.
    """
    for num_nullops in (2**x for x in range(100)):  # 1,2,4,8,...
        
        # Measure the time elapsed to run a do-nothing loop
        # the given number of times.
        begin = time.time()
        for ii in range(num_nullops):
            pass
        elapsed = time.time() - begin

        # If elapsed time exceeded maximum permitted, break.
        if elapsed > max_sample:
            break

    result = num_nullops / elapsed
    return result


def call_commandline_function():
    """ Parse command line parameters and interpret them as
       <function> [params...]
    Run the given function-params combination and return the result.
    """
    method = sys.argv[1]
    params = sys.argv[2:] if len(sys.argv) > 1 else []
    def convert(text):
        try:
            return eval(text)
        except:
            return text
    result = eval(method)(*[convert(x) for x in params])
    return result


if __name__ == '__main__':
    """ Call the function and parameters given on the command line.
    """
    print(call_commandline_function())
