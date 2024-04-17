cmake_minimum_required(VERSION 3.17)

project(monokde LANGUAGES CXX)

include(ExternalProject)

function(kde_project ARG_PATH)
  cmake_parse_arguments(ARG "" "" DEPENDS ${ARGN})
  get_filename_component(ARG_NAME ${ARG_PATH} NAME)

  set(ENV${XDG_DATA_DIRS} $ENV{DESTDIR}/usr/share)
  set(ENV${CMAKE_EXPORT_COMPILE_COMMANDS} ON)

  ExternalProject_Add(
    ${ARG_NAME}
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/src/${ARG_PATH}
    BINARY_DIR ${PROJECT_BINARY_DIR}/${ARG_PATH}
    STAMP_DIR ${PROJECT_BINARY_DIR}/${ARG_PATH}/stamp
    TMP_DIR ${PROJECT_BINARY_DIR}/${ARG_PATH}/tmp
    LOG_DIR ${PROJECT_BINARY_DIR}/${ARG_PATH}/log
    PREFIX ${PROJECT_BINARY_DIR}/${ARG_PATH}
    CMAKE_GENERATOR Ninja
    CMAKE_ARGS
        -DCMAKE_PREFIX_PATH=$ENV{DESTDIR}/usr
        -DCMAKE_INSTALL_PREFIX=/usr
        -DBUILD_SHARED_LIBS=ON
        -DCMAKE_BUILD_TYPE=Release
        -DBUILD_TESTING=OFF
        -DBUILD_QT5=OFF
    BUILD_COMMAND ninja
    BUILD_ALWAYS ON
    LOG_CONFIGURE ON
    LOG_BUILD ON
    LOG_INSTALL ON
    LOG_OUTPUT_ON_FAILURE ON
    LOG_MERGED_STDOUTERR ON
    DEPENDS ${ARG_DEPENDS}
    CONFIGURE_HANDLED_BY_BUILD ON
  )
endfunction()

include(projects.cmake)
