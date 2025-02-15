if(USE_EXISTING_SRC_DIR)
  unset(LIBUV_URL)
endif()
ExternalProject_Add(libuv
  URL ${LIBUV_URL}
  URL_HASH SHA256=${LIBUV_SHA256}
  DOWNLOAD_NO_PROGRESS TRUE
  DOWNLOAD_DIR ${DEPS_DOWNLOAD_DIR}/libuv
  CMAKE_ARGS ${DEPS_CMAKE_ARGS}
    -D CMAKE_INSTALL_LIBDIR=lib
    -D BUILD_TESTING=OFF
    -D LIBUV_BUILD_SHARED=OFF
  CMAKE_CACHE_ARGS ${DEPS_CMAKE_CACHE_ARGS})

list(APPEND THIRD_PARTY_DEPS libuv)
