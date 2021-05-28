#!/bin/bash

git config --global credential.helper 'cache --timeout=120'

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-OTHER/
echo "Pull OTHER================="
git submodule update
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master
git pull origin master

cd ~/hn_ws/src
cd ROBOTIS_FILE/
echo "Pull ROBOTIS_FILE================"
git submodule update
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-GUI/
echo "Pull MPC_FILE================"
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Display/
echo "Pull MPC_FILE================"
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Math/
echo "Pull MPC_FILE================"
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Motion/
echo "Pull MPC_FILE================"
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Msgs/
echo "Pull MPC_FILE================"
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Operation/
echo "Pull MPC_FILE================"
git submodule update
git submodule update --remote
git submodule foreach git checkout main
git submodule foreach git pull origin main
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Sensor/
echo "Pull MPC_FILE================"
git submodule update
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master
git pull origin master

cd ~/hn_ws/src
cd HERoEHS-HENN_NA-Simulation/
echo "Pull MPC_FILE================"
git pull origin main

cd ~/hn_ws/src
cd ROBOTIS-Framework_for_HENN_NA/
echo "Pull ROBOTIS-Framework-PositionControl----------------"e
git pull origin master

