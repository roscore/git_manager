#!/bin/bash

git config --global credential.helper 'cache --timeout=120'

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-OTHER/
echo "Check OTHER================="
git status --porcelain

cd ~/hn_ws/src/
cd ROBOTIS_FILE/
echo "Check ROBOTIS_FILE================"
git status --porcelain

echo "Check GUI================"
cd ../HERoEHS-HENN_NA-GUI/
git checkout master
git status --porcelain

echo "Check DisplayGUI================"
cd ../HERoEHS-HENN_NA-Display/
git checkout master
git status --porcelain

echo "Check Math================"
cd ../HERoEHS-HENN_NA-Math/
git checkout master
git status --porcelain

echo "Check Motion================"
cd ../HERoEHS-HENN_NA-Motion/
git checkout master
git status --porcelain

echo "Check Msgs================"
cd ../HERoEHS-HENN_NA-Msgs/
git checkout master
git status --porcelain

echo "Check Operation================"
cd ../HERoEHS-HENN_NA-Operation/
git checkout master
git status --porcelain

echo "Check Sensor================"
cd ../HERoEHS-HENN_NA-Sensor/
git checkout master
git status --porcelain

echo "Check Simulation================"
cd ../HERoEHS-HENN_NA-Simulation/
git checkout main
git status --porcelain

cd ~/hn_ws/src
cd ROBOTIS-Framework_for_HENN_NA/
echo "Check ROBOTIS-Framework-PositionControl----------------"
git status --porcelain
