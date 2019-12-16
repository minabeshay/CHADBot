# -*- coding: utf-8 -*-
from __future__ import print_function
import argparse
import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/kinetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/kinetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in "/home/cc/ee106a/fa19/class/ee106a-afu/ros_workspaces/Thanos/devel;/home/cc/ee106a/fa19/class/ee106a-afu/ros_workspaces/arTagTests/devel;/home/cc/ee106a/fa19/class/ee106a-afu/catkin_ws/devel;/scratch/shared/baxter_ws/devel;/opt/ros/kinetic".split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/cc/ee106a/fa19/class/ee106a-afu/ros_workspaces/Thanos/devel/env.sh')

output_filename = '/home/cc/ee106a/fa19/class/ee106a-afu/ros_workspaces/Thanos/build/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)