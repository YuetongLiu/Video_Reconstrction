import os
##change to your path
file_path = '/Users/zhongqian/Desktop/CS_Dataset/'
code_path = '/Users/zhongqian/Desktop/DeepLearning/Final_project/'
for video in os.listdir(file_path):
    command = 'python ' + code_path + 'read_frames_fast.py --video '+file_path+ video
    os.system(command)

