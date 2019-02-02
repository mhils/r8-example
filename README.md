# r8-example

This is an example project containing r8 challenges.

 - `setup.py`: Python setup file. Tells r8 to look here for challenges.
 - `r8_example/__init__.py`: Imports all files in this package that contain challenges so that they can self-register.
 - `r8_example/helloworld.py`: Contains an example challenge.
 
Optional:

 - `example.sql`: Contains configuration for your r8 instance.
 - `modd.conf`: A modd configuration file to auto-reload the r8 server when challenges change.
