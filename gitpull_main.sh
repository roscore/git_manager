#!/bin/bash

git config --global credential.helper 'cache --timeout=120'

cd ~/catkin_ws/src/ALICE
cd OTHER/
echo "Pull OTHER================="
git submodule update
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master

cd ~/catkin_ws/src/ALICE
cd ROBOTIS_FILE/
echo "Pull ROBOTIS_FILE================"
git submodule update
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master

cd ~/catkin_ws/src/ALICE
cd HERoEHS-ALICE-MPC/
echo "Pull MPC_FILE================"
git submodule update
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master

cd ~/catkin_ws/src/ALICE
cd ROBOTIS-Framework-PositionControl/
echo "Pull ROBOTIS-Framework-PositionControl----------------"e
git pull origin master

cd ~/catkin_ws/src/ALICE
cd ROBOTIS-Optimization-Scilab/
echo "Pull ROBOTIS-Optimization-Scilab----------------"
git pull origin master


