import os

def say_hello():
    return "Hello World"

def test(message):
    directory = os.getcwd()
    return message + ": " + directory
