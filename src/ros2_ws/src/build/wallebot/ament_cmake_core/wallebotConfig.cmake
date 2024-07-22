# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_wallebot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED wallebot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(wallebot_FOUND FALSE)
  elseif(NOT wallebot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(wallebot_FOUND FALSE)
  endif()
  return()
endif()
set(_wallebot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT wallebot_FIND_QUIETLY)
  message(STATUS "Found wallebot: 0.0.0 (${wallebot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'wallebot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT wallebot_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(wallebot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${wallebot_DIR}/${_extra}")
endforeach()
