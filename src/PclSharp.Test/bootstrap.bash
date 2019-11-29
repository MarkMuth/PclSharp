#!/bin/bash

# Execute this file from a linux environment such as WSL
# AFTER having built the PclSharp.Test project and
# BEFORE running the tests in your Visual Studio Test Explorer.

# Copy OpenNI dependencies to output folder.
# Otherwise you will encounter a PclSharp.Extern.dll not found exception when trying to run the tests.
if [ -d "./bin/Debug" ] ; then
    cp -R "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2" "./bin/Debug/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI.ini" "./bin/Debug/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.dll" "./bin/Debug/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.jni.dll" "./bin/Debug/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.jni.pdb" "./bin/Debug/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.pdb" "./bin/Debug/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/org.openni.jar" "./bin/Debug/"
fi
if [ -d "./bin/Release" ] ; then
    cp -R "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2" "./bin/Release/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI.ini" "./bin/Release/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.dll" "./bin/Release/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.jni.dll" "./bin/Release/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.jni.pdb" "./bin/Release/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/OpenNI2.pdb" "./bin/Release/"
    cp "/mnt/c/Program Files/OpenNI2/Redist/org.openni.jar" "./bin/Release/"
fi

mkdir ../../data/tutorials
wget https://github.com/PointCloudLibrary/data/raw/master/tutorials/table_scene_lms400.pcd
mv table_scene_lms400.pcd ../../data/tutorials/
wget https://github.com/PointCloudLibrary/pcl/raw/master/test/table_scene_mug_stereo_textured.pcd
mv table_scene_mug_stereo_textured.pcd ../../data/tutorials/
