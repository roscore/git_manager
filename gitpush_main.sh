#!/bin/bash

git config --global credential.helper 'cache --timeout=300'


self_check() 
{
  echo "======================================================================"
  echo "=    Update $PWD"
  echo "======================================================================"
  #CHANGED=$(git diff  --name-only --diff-filter=ACDMRTUXB* )
  #CHANGED=$(git status -s | sed s/^...//)
  CHANGED=$(git status -s )

  if [ -n "$CHANGED" ]; then
    echo "------------------------------------------------------------------------"
    echo "Modified files exist "
    echo "$CHANGED"
    echo "------------------------------------------------------------------------"
    read -p "Do you wish to push this file[y/n]?" yn_pushfile
    echo "------------------------------------------------------------------------"
    case $yn_pushfile in
      [Yy]* )
        read -p "Do you wish to push this total file[y/n]?" yn_pushtotalfile 
        
        case $yn_pushtotalfile in
          [Yy]* ) 
            read -p "Commit name : " varname
            git add . 
            git commit -m "$varname"
            git push origin master;;
            
          [Nn]* )

            FILE_LIST=($CHANGED)
            len=${#FILE_LIST[@]}
            for (( i=1; i<$len; i=i+2 )); do 
              echo "------------------------------------------------------------------------"
              echo "Getting each file : ${FILE_LIST[$i-1]} |  ${FILE_LIST[$i]}"
              echo "------------------------------------------------------------------------"
              read -p "Do you wish to push or check this file[y(push)/n(no)/c(check)]?" yn_pushonefile
              
              case $yn_pushonefile in
              
                [Yy]* )
                  read -p "Commit name : " commit_name_onefile
                  git add ${FILE_LIST[$i]}
                  git commit -m "$commit_name_onefile"
                  git push origin master;;
                  
              
                [Cc]* )
                  git diff origin/master -- ${FILE_LIST[$i]}
                  read -p "Do you wish to push this file[y(push)/n(no)]?" yn_pushonefileaftercheck
                  case $yn_pushonefileaftercheck in
                    [Yy]* )
                      read -p "Commit name : " commit_name_onefile
                      git add ${FILE_LIST[$i]}
                      git commit -m "$commit_name_onefile"
                      git push origin master;;
                      
                    [Nn]* ) ;;
                      
                    * ) ;;   
                  esac
                  ;;
                [Nn]* ) ;;
                * ) echo "Please answer yes or no. Skipping";;
              esac
            done
            echo "Finish Pushing File :$PWD";;
          *) echo "Please answer yes or no. Skipping";;        
        esac
        ;;
      [Nn]* ) 
        exit
        ;;
      * ) 
        echo "Please answer yes or no. Skipping";;
    esac

    
  else 
    echo "------------------------------------------------------------------------"
    echo "No Modified files"
    echo "------------------------------------------------------------------------"
    
  fi
}



#cd ~/catkin_ws/src/OTHER/
#self_check

#cd ~/catkin_ws/src/ROBOTIS_FILE/
#self_check

cd ~/catkin_ws/src/ALICE
cd HERoEHS-ALICE-MPC/

cd HERoEHS-ALICE-ControlGUI/
git checkout master
self_check

cd ../HERoEHS-ALICE-DisplayGUI/
git checkout master
self_check

cd ../HERoEHS-ALICE-Footstep/
git checkout master
self_check

cd ../HERoEHS-ALICE-Math/
git checkout master
self_check

cd ../HERoEHS-ALICE-Motion/
git checkout master
self_check

cd ../HERoEHS-ALICE-Msgs/
git checkout master
self_check

cd ../HERoEHS-ALICE-Operation/
git checkout master
self_check

cd ../HERoEHS-ALICE-Sensor/
git checkout master
self_check

cd ../HERoEHS-ALICE-Simulation/
git checkout master
self_check

cd ../HERoEHS-ALICE-Walking/
git checkout master
self_check


cd ~/catkin_ws/src/ALICE
cd ROBOTIS-Framework-PositionControl/
git checkout master
self_check

cd ~/catkin_ws/src/ALICE
cd ROBOTIS-Optimization-Scilab/
git checkout master
self_check


