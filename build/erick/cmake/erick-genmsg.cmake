# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "erick: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ierick:/home/erick/erick_wsp/src/erick/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(erick_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" NAME_WE)
add_custom_target(_erick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "erick" "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" ""
)

get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/Num.msg" NAME_WE)
add_custom_target(_erick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "erick" "/home/erick/erick_wsp/src/erick/msg/Num.msg" ""
)

get_filename_component(_filename "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" NAME_WE)
add_custom_target(_erick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "erick" "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(erick
  "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erick
)
_generate_msg_cpp(erick
  "/home/erick/erick_wsp/src/erick/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erick
)

### Generating Services
_generate_srv_cpp(erick
  "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erick
)

### Generating Module File
_generate_module_cpp(erick
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erick
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(erick_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(erick_generate_messages erick_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" NAME_WE)
add_dependencies(erick_generate_messages_cpp _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/Num.msg" NAME_WE)
add_dependencies(erick_generate_messages_cpp _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" NAME_WE)
add_dependencies(erick_generate_messages_cpp _erick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erick_gencpp)
add_dependencies(erick_gencpp erick_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erick_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(erick
  "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erick
)
_generate_msg_eus(erick
  "/home/erick/erick_wsp/src/erick/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erick
)

### Generating Services
_generate_srv_eus(erick
  "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erick
)

### Generating Module File
_generate_module_eus(erick
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erick
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(erick_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(erick_generate_messages erick_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" NAME_WE)
add_dependencies(erick_generate_messages_eus _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/Num.msg" NAME_WE)
add_dependencies(erick_generate_messages_eus _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" NAME_WE)
add_dependencies(erick_generate_messages_eus _erick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erick_geneus)
add_dependencies(erick_geneus erick_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erick_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(erick
  "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erick
)
_generate_msg_lisp(erick
  "/home/erick/erick_wsp/src/erick/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erick
)

### Generating Services
_generate_srv_lisp(erick
  "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erick
)

### Generating Module File
_generate_module_lisp(erick
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erick
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(erick_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(erick_generate_messages erick_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" NAME_WE)
add_dependencies(erick_generate_messages_lisp _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/Num.msg" NAME_WE)
add_dependencies(erick_generate_messages_lisp _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" NAME_WE)
add_dependencies(erick_generate_messages_lisp _erick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erick_genlisp)
add_dependencies(erick_genlisp erick_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erick_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(erick
  "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erick
)
_generate_msg_nodejs(erick
  "/home/erick/erick_wsp/src/erick/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erick
)

### Generating Services
_generate_srv_nodejs(erick
  "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erick
)

### Generating Module File
_generate_module_nodejs(erick
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erick
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(erick_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(erick_generate_messages erick_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" NAME_WE)
add_dependencies(erick_generate_messages_nodejs _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/Num.msg" NAME_WE)
add_dependencies(erick_generate_messages_nodejs _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" NAME_WE)
add_dependencies(erick_generate_messages_nodejs _erick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erick_gennodejs)
add_dependencies(erick_gennodejs erick_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erick_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(erick
  "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick
)
_generate_msg_py(erick
  "/home/erick/erick_wsp/src/erick/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick
)

### Generating Services
_generate_srv_py(erick
  "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick
)

### Generating Module File
_generate_module_py(erick
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(erick_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(erick_generate_messages erick_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/mensaje01Roger.msg" NAME_WE)
add_dependencies(erick_generate_messages_py _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/msg/Num.msg" NAME_WE)
add_dependencies(erick_generate_messages_py _erick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/erick/erick_wsp/src/erick/srv/servCuadrado.srv" NAME_WE)
add_dependencies(erick_generate_messages_py _erick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erick_genpy)
add_dependencies(erick_genpy erick_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erick_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erick
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(erick_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erick
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(erick_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erick
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(erick_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erick
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(erick_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erick
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(erick_generate_messages_py std_msgs_generate_messages_py)
endif()
