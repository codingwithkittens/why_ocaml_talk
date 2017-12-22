#!/usr/bin/env python


def main():
    total = 0
    for i in range(0, 10 * 1000 * 1000):
        total = (total + i) % 19
    print total


main()
