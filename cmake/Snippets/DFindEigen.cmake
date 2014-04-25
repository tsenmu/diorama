# Eigen, header only
SET(Eigen_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/extern/eigen3 ${CMAKE_SOURCE_DIR}/extern/eigen3/unsupported) # The second one is a hack
MESSAGE(STATUS "Set Eigen includes directory to ${Eigen_INCLUDE_DIR}")
