#! /usr/bin/env python
# -*- coding: utf-8 -*-

"""
Exctact jpeg image from a video source

USAGE:   extract_frame.py input_video frame_index
EXAMPLE: extract_frame.py video.mp4 100

"""

import imageio, sys
vid = imageio.get_reader(sys.argv[1], 'ffmpeg')
img = vid.get_data(int(sys.argv[2]))
imageio.imwrite('frame-%04d.jpg' % int(sys.argv[2]), img)
