
import assert;

main {
    int n = 25;
    int result;

    //              fib(i-1),       fib(i-2)
    for (int i=2, int fib_i1 = 1, int fib_i2 = 0;
         i <= n;
         fib_i2 = fib_i1, fib_i1=fib_i, i = i+1) {
        int fib_i = fib_i1 + fib_i2;
        trace("fib", i, "=", fib_i);
        if (i == n) {
            assertEqual(fib_i, 75025, "fib_25 = 75025");
            result = fib_i;
        }
        assert(i <= n, "i <= n");
    }

    trace("fib_25", result);
    assertEqual(result, 75025, "result=75025");
}
