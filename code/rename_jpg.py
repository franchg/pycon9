#! /usr/bin/env python
# -*- coding: utf-8 -*-

"""
Rename all jpg files in the given folder according to last modification time

USAGE:   rename_jpeg.py folder_name

"""
import os, sys, shutil, datetime
for f in os.listdir(sys.argv[1]):
    if f.lower().endswith('.jpg'):
        t = datetime.datetime.fromtimestamp(os.path.getmtime(
            os.path.join(sys.argv[1], f)))
        o = "{}.jpg".format(t.strftime("%Y-%m-%d_%H-%M-%S"))
        shutil.move(os.path.join(sys.argv[1], f), os.path.join(sys.argv[1], o))
