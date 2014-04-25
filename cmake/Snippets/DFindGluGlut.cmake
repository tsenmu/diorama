# GLUT
SET(GLUT_ROOT_PATH ${CMAKE_SOURCE_DIR}/extern/glut)
FIND_PACKAGE(GLUT)
IF(GLUT_FOUND)
  MESSAGE(STATUS "Found GLUT includes at ${GLUT_INCLUDE_DIR} and libs at ${GLUT_LIBRARIES}")
ENDIF()

# GLEW
SET(GLEW_ROOT_PATH ${CMAKE_SOURCE_DIR}/extern/glut/include/GL)
FIND_LIBRARY(GLEW_LIBRARIES NAMES glew GLEW glew32 glew32s PATHS ${CMAKE_SOURCE_DIR}/extern/glut/lib DOC "The GLEW library")
IF(GLEW_LIBRARIES)
  MESSAGE(STATUS "Found GLEW includes at ${GLEW_ROOT_PATH} and libs at ${GLEW_LIBRARIES}")
ENDIF(GLEW_LIBRARIES)

