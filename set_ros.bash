export ID=`id -g -n`
export MAIN_ROS_DIR=/home/${ID}/ros2_ws_ms

export ROS_DISTRO=humble

source /opt/ros/humble/setup.bash
source ${MAIN_ROS_DIR}/install/setup.bash

source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash
source /usr/share/vcstool-completion/vcs.bash
source /usr/share/colcon_cd/function/colcon_cd.sh

export _colcon_cd_root=${MAIN_ROS_DIR}

export ROS_DOMAIN_ID=7
export ROS_NAMESPACE=big_ex1

export CYCLONEDDS_URI=${MAIN_ROS_DIR}/cyclonedds.xml

#export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
#export RMW_IMPLEMENTATION=rmw_connext_cpp
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
#export RMW_IMPLEMENTATION=rmw_gurumdds_cpp

#export FASTRTPS_DEFAULT_PROFILES_FILE=/home/koceti/ros2_ws/ros_network.xml
#export FASTRTPS_DEFAULT_PROFILES_FILE=/home/koceti/works/dev_ws/FASTRTPS_DEFAULT_PROFILES.xml


#export RCUTILS_CONSOLE_OUTPUT_FORMAT='[{severity} {time}][{name}]: {message} ({function_name}() at {file_name}:{line_number})'
export RCUTILS_CONSOLE_OUTPUT_FORMAT='[{severity}]: {message}'
export RCUTILS_LOGGING_USE_STDOUT=0
export RCUTILS_LOGGING_BUFFERED_STREAM=0

alias cw='cd ${MAIN_ROS_DIR}'
alias cs='cd ${MAIN_ROS_DIR}/src'
alias ccd='colcon_cd'
alias sb='source install/setup.bash'

alias cb='cd ${MAIN_ROS_DIR} && colcon build --symlink-install'
alias cbs='colcon build --symlink-install'
alias cbp='colcon build --symlink-install --packages-select'
alias cbu='colcon build --symlink-install --packages-up-to'
alias ct='colcon test'
alias ctp='colcon test --packages-select'
alias ctr='colcon test-result'

alias rt='ros2 topic list'
alias re='ros2 topic echo'
alias rn='ros2 node list'

alias killgazebo='killall -9 gazebo & killall -9 gzserver & killall -8 gzclient'

alias af='ament_flake8'
alias ac='ament_cpplint'

alias testpub='ros2 run demo_nodes_cpp talker'
alias testsub='ros2 run demo_nodes_cpp listener'
alias testpubimg='ros2 run image_tools cam2image'
alias testsubimg='ros2 run image_tools showimage'
