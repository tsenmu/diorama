# Boost
SET(Boost_MULTITHREADED TRUE)
#add_definitions (-DBOOST_FILESYSTEM_VERSION=3 -DBOOST_FILESYSTEM_NO_DEPRECATED)
IF(MSVC)
  MESSAGE("Using Boost static libraries")
  SET(Boost_USE_STATIC_LIBS ON)
ELSE()
  SET(Boost_USE_STATIC_LIBS OFF)
ENDIF()

# NOTE: Version 1.49 of Boost has a JSON bug. See https://svn.boost.org/trac/boost/ticket/6785
# It's safer to use 1.50+ or fix the above bug in lower versions
FIND_PACKAGE(Boost 1.49.0 REQUIRED COMPONENTS system filesystem thread date_time iostreams chrono regex)

IF(Boost_FOUND)
  MESSAGE(STATUS "Found Boost includes at ${Boost_INCLUDE_DIR}")
ENDIF()
