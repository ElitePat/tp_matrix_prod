# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-src"
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-build"
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix"
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix/tmp"
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix/src"
  "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/patrick/tp_matrix_prod/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
