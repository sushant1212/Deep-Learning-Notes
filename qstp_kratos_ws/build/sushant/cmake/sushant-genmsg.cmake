# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sushant: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sushant_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" NAME_WE)
add_custom_target(_sushant_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushant" "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" ""
)

get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" NAME_WE)
add_custom_target(_sushant_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushant" "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" ""
)

get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" NAME_WE)
add_custom_target(_sushant_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushant" "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushant
)
_generate_srv_cpp(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushant
)
_generate_srv_cpp(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushant
)

### Generating Module File
_generate_module_cpp(sushant
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushant
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sushant_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sushant_generate_messages sushant_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" NAME_WE)
add_dependencies(sushant_generate_messages_cpp _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" NAME_WE)
add_dependencies(sushant_generate_messages_cpp _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" NAME_WE)
add_dependencies(sushant_generate_messages_cpp _sushant_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushant_gencpp)
add_dependencies(sushant_gencpp sushant_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushant_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushant
)
_generate_srv_eus(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushant
)
_generate_srv_eus(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushant
)

### Generating Module File
_generate_module_eus(sushant
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushant
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sushant_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sushant_generate_messages sushant_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" NAME_WE)
add_dependencies(sushant_generate_messages_eus _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" NAME_WE)
add_dependencies(sushant_generate_messages_eus _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" NAME_WE)
add_dependencies(sushant_generate_messages_eus _sushant_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushant_geneus)
add_dependencies(sushant_geneus sushant_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushant_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushant
)
_generate_srv_lisp(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushant
)
_generate_srv_lisp(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushant
)

### Generating Module File
_generate_module_lisp(sushant
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushant
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sushant_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sushant_generate_messages sushant_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" NAME_WE)
add_dependencies(sushant_generate_messages_lisp _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" NAME_WE)
add_dependencies(sushant_generate_messages_lisp _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" NAME_WE)
add_dependencies(sushant_generate_messages_lisp _sushant_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushant_genlisp)
add_dependencies(sushant_genlisp sushant_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushant_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushant
)
_generate_srv_nodejs(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushant
)
_generate_srv_nodejs(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushant
)

### Generating Module File
_generate_module_nodejs(sushant
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushant
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sushant_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sushant_generate_messages sushant_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" NAME_WE)
add_dependencies(sushant_generate_messages_nodejs _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" NAME_WE)
add_dependencies(sushant_generate_messages_nodejs _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" NAME_WE)
add_dependencies(sushant_generate_messages_nodejs _sushant_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushant_gennodejs)
add_dependencies(sushant_gennodejs sushant_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushant_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant
)
_generate_srv_py(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant
)
_generate_srv_py(sushant
  "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant
)

### Generating Module File
_generate_module_py(sushant
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sushant_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sushant_generate_messages sushant_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Bonus.srv" NAME_WE)
add_dependencies(sushant_generate_messages_py _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate.srv" NAME_WE)
add_dependencies(sushant_generate_messages_py _sushant_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sushant/qstp_kratos_ws/src/sushant/srv/Calculate2.srv" NAME_WE)
add_dependencies(sushant_generate_messages_py _sushant_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushant_genpy)
add_dependencies(sushant_genpy sushant_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushant_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushant)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushant
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sushant_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushant)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushant
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sushant_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushant)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushant
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sushant_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushant)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushant
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sushant_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushant
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sushant_generate_messages_py std_msgs_generate_messages_py)
endif()
