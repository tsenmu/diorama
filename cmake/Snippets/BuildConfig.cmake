
SET(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "possible configurations" FORCE)
# In case the user does not setup CMAKE_BUILD_TYPE, assume it's Debug
IF("${CMAKE_BUILD_TYPE}" STREQUAL "")
  SET(CMAKE_BUILD_TYPE Debug CACHE STRING "build type default to Debug, set to Release to improve performance" FORCE)
ENDIF()

# Release/Debug specific flags
IF(CMAKE_BUILD_TYPE STREQUAL "Release" OR CMAKE_BUILD_TYPE STREQUAL "RelWithDebInfo")
  ADD_DEFINITIONS("-DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG")
ENDIF()

# Compiler flags and output directories
# NOTE: It is good pracice to append CMAKE_CXX_FLAGS instead of overwriting
IF(MSVC)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -fexceptions -fident -mthreads -O3 ") # Set optimization flags and optimization
  SET(CMAKE_EXE_LINKER_FLAGS "-fexceptions -fident -mthreads -mwindows --large-address-aware")
  # This is possibly needed for MSVC. See http://social.msdn.microsoft.com/forums/en-US/Vsexpressvc/thread/4cf463c1-5fee-4daa-b135-be8b06ab7f8f/
  ADD_DEFINITIONS(-DGLUT_BUILDING_LIB)
  # Another MSVC quirk. http://stackoverflow.com/questions/6832666/lnk2019-when-including-asio-headers-solution-generated-with-cmake
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc /MP") # For multi-threaded compilation on MSVC
  # More MSVC quirks. http://stackoverflow.com/questions/3457013/visual-studio-2008-creates-a-additional-bin-debug-folder-although-i-have-no-pre
  SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
ELSE()
  IF("${WARNLEVEL}" STREQUAL "1")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wno-unused-parameter -O3") # Enable lots of warning flags and optimization
  ELSE()
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w -O3") # Disable all warnings and enable optimization
  ENDIF()
  IF(APPLE)
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++") # C++11 support on Apple clang
  ELSE()
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")# C++11 support on GCC
  ENDIF()
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fpermissive") # Downgrade some diagnostics about nonconformant code from errors to warnings
  SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${CMAKE_BUILD_TYPE})
ENDIF()
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
