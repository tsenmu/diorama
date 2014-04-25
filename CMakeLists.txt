# Root CmakeLists.txt for Minerva
CMAKE_MINIMUM_REQUIRED(VERSION 2.8 FATAL_ERROR)

# Project details
SET(PACKAGE diorama)
PROJECT(${PACKAGE})
SET(PROJECT_MAJOR "0")
SET(PROJECT_MINOR "1")
SET(PROJECT_PATCH "0")
SET(VERSION "${PROJECT_MAJOR}.${PROJECT_MINOR}.${PROJECT_PATCH}")

# Setup build configuration and compiler flags
SET(WARNLEVEL "1") # Adjust compiler warning level. 0 - minimum, 1 - maximum
INCLUDE(${CMAKE_SOURCE_DIR}/cmake/Snippets/BuildConfig.cmake)

# Find all needed packages
INCLUDE(${CMAKE_SOURCE_DIR}/cmake/FindPackages.cmake)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR} ${EXTERN_INCS} ${CMAKE_SOURCE_DIR}/src/main)

# Add source subdirectories
ADD_SUBDIRECTORY(src/main)

ADD_EXECUTABLE(${PACKAGE} ${MAIN_SRC})
TARGET_LINK_LIBRARIES(${PACKAGE} ${EXTERN_LIBS})

