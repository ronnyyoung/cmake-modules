FIND_PATH(MLPACK_INCLUDE_DIR core.hpp /usr/include/mlpack /usr/local/include/mlpack)
FIND_LIBRARY(MLPACK_LIBRARY NAMES mlpack PATH /usr/lib /usr/local/lib)

IF (MLPACK_INCLUDE_DIR AND MLPACK_LIBRARY)
    SET(MLPACK_FOUND TRUE)
ENDIF()

IF (MLPACK_FOUND)
    IF (NOT MLPACK_FIND_QUIETLY)
        MESSAGE(STATUS "Found MLAPCK: ${MLPACK_LIBRARY}")
    ENDIF()
ELSE (MLPACK_FOUND)
    IF (MLPACK_FIND_QUIETLY)
        MESSAGE(FATAL_ERROR "Could not find MLPACK library")
    ENDIF()
ENDIF(MLPACK_FOUND)