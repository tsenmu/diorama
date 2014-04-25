# Neatly glob files *.cpp, *.hpp and *.ui into variables based on required filters (used for MSVC only)
FILE(GLOB G_MAIN_SRC
			main.cpp
	)
#FILE(GLOB G_MISC_SRC
#	)
	
#FILE(GLOB UI_FILES gui/*.ui)

# Set some variables of the globs with parent scope
SET(MAIN_SRC ${G_MAIN_SRC} PARENT_SCOPE)
#SET(MAIN_MISC_SRC ${G_MISC_SRC} PARENT_SCOPE)

