Test suite
==========

This test suite is implemented on top of the [Bats](https://github.com/sstephenson/bats/blob/master/README.md) test framework.

It is intended to verify the correct behavior of the Docker image `foxboxsnet/nginx-proxy-alpine-letsencrypt:bats`.

Running the test suite
----------------------

Make sure you have Bats installed, then run:

    docker build -t foxboxsnet/nginx-proxy-alpine-letsencrypt:bats .
    bats test/
