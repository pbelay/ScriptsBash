#!/bin/bash

ffmpeg -i VIDEOFILE -acodec libmp3lame -metadata TITLE="Name of Song" OUTPUTFILE.mp3

