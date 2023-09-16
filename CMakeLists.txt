cmake_minimum_required(VERSION 3.0.2)
project(mobile_message_generation_artifacts_core)

find_package(catkin REQUIRED COMPONENTS genmobile)

generate_mobile_message_generation_artifacts_core(
  PACKAGES
  std_msgs
  rosgraph_msgs            # ros/ros_comm_msgs
  std_srvs
  rosmobile_test_msgs        # rosmobile/rosmobile_test_msgs
  actionlib_msgs           # ros/common_msgs
  common_msgs
  diagnostic_msgs
  geometry_msgs
  nav_msgs
  sensor_msgs
  shape_msgs
  stereo_msgs
  trajectory_msgs
  visualization_msgs
  tf2_msgs                 # geometry_experimental/tf2_msgs
  ar_track_alvar_msgs      # sniekum/ar_track_alvar_msgs
  uuid_msgs                # ros-geographic-info/unique_identifier
  yocs_msgs                # yujinrobot/yocs_msgs
  concert_msgs             # robotics-in-concert/rocon_msgs
  concert_service_msgs
  gateway_msgs
  rocon_app_manager_msgs
  rocon_device_msgs
  rocon_interaction_msgs
  rocon_service_pair_msgs
  rocon_std_msgs
  rocon_tutorial_msgs
  world_canvas_msgs
  scheduler_msgs
  move_base_msgs           # ros-planning/navigation
  map_store                # ros-planning/map_store
  roscpp                   # !!!!!!! REMOVE THIS ONCE https://github.com/ros-planning/navigation/pull/312 is fixed! !!!!!!!!
)

catkin_package()

install(
  DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/mobile_message_generation_artifacts_core/
  DESTINATION ${CATKIN_GLOBAL_MAVEN_DESTINATION}/com/github/mobile_message_generation_artifacts_core
)
