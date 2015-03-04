# Find all dependencies. To enable reuse, each package is in it's own file in Snippets
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/cmake/Modules/)

# OpenGL
INCLUDE(${CMAKE_SOURCE_DIR}/cmake/Snippets/DFindOpenGL.cmake) # The prefix D is to prevent conflict with system cmake files
# Qt
INCLUDE(${CMAKE_SOURCE_DIR}/cmake/Snippets/DFindQt.cmake)
# GLUT and GLEW (together is fine)
INCLUDE(${CMAKE_SOURCE_DIR}/cmake/Snippets/DFindGluGlut.cmake)
# OpenMP
INCLUDE(${CMAKE_SOURCE_DIR}/cmake/Snippets/DFindOpenMP.cmake)

# Set variables
SET(EXTERN_INCS
  ${OPENGL_INCLUDE_DIR}
  ${QT4_INCLUDE_DIR}
  ${GLUT_ROOT_PATH}
  ${GLUT_INCLUDE_DIR}
  ${GLEW_ROOT_PATH}
  )
SET(EXTERN_LIBS
  ${OPENGL_LIBRARIES}
  ${QT_LIBRARIES}
  ${GLUT_LIBRARIES}
  ${GLEW_LIBRARIES}
  )
