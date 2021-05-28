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

cd ~/hn_ws

cd HERoEHS-HENN_NA-GUI/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Display/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Math/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Motion/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Msgs/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Operation/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Sensor/
git checkout master
self_check

cd ../HERoEHS-HENN_NA-Simulation/
git checkout main
self_check

cd ~/hn_ws/src
cd ROBOTIS-Framework_for_HENN_NA/
git checkout master
self_check

