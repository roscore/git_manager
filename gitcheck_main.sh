#!/bin/bash

git config --global credential.helper 'cache --timeout=120'

cd ~/catkin_ws/src/ALICE
cd OTHER/
echo "Check OTHER================="
git status --porcelain

cd ~/catkin_ws/src/ALICE
cd ROBOTIS_FILE/
echo "Check ROBOTIS_FILE================"
git status --porcelain

cd ~/catkin_ws/src/ALICE
cd HERoEHS-ALICE-MPC/
echo "Check MPC_FILE================"

echo "Check ControlGUI ================"
cd HERoEHS-ALICE-ControlGUI/
git checkout master
git status --porcelain

echo "Check DisplayGUI================"
cd ../HERoEHS-ALICE-DisplayGUI/
git checkout master
git status --porcelain

echo "Check Footstep================"
cd ../HERoEHS-ALICE-Footstep/
git checkout master
git status --porcelain

echo "Check Math================"
cd ../HERoEHS-ALICE-Math/
git checkout master
git status --porcelain

echo "Check Motion================"
cd ../HERoEHS-ALICE-Motion/
git checkout master
git status --porcelain

echo "Check Msgs================"
cd ../HERoEHS-ALICE-Msgs/
git checkout master
git status --porcelain

echo "Check Operation================"
cd ../HERoEHS-ALICE-Operation/
git checkout master
git status --porcelain

echo "Check Sensor================"
cd ../HERoEHS-ALICE-Sensor/
git checkout master
git status --porcelain

echo "Check Simulation================"
cd ../HERoEHS-ALICE-Simulation/
git checkout master
git status --porcelain

echo "Check Walking================"
cd ../HERoEHS-ALICE-Walking/
git checkout master
git status --porcelain

cd ~/catkin_ws/src/ALICE
cd ROBOTIS-Framework-PositionControl/
echo "Check ROBOTIS-Framework-PositionControl----------------"
git status --porcelain


cd ~/catkin_ws/src/ALICE
cd ROBOTIS-Optimization-Scilab/
echo "Check ROBOTIS-Optimization-Scilab----------------"
git status --porcelain





