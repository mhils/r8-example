#!/usr/bin/env python3

from setuptools import setup, find_packages

setup(
    name='r8-example',
    packages=find_packages(),
    entry_points={
        "r8.challenges": [
            "dir = r8_example"
        ]
    },
    install_requires=[
        "r8",
    ],
)
