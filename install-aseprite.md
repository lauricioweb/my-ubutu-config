link da versão 1.3.13

https://github.com/aseprite/aseprite/releases/download/v1.3.13/Aseprite-v1.3.13-Source.zip

baixe a versão 102 do skia

https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-Linux-Release-x64-libc++.zip

depois rode o seguinte comando:
cd ~/Documentos/aseprite/aseprite/build
export CC=clang
export CXX=clang++
cmake \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_CXX_FLAGS:STRING=-stdlib=libc++ \
  -DCMAKE_EXE_LINKER_FLAGS:STRING=-stdlib=libc++ \
  -DLAF_BACKEND=skia \
  -DSKIA_DIR=../../skia \
  -DSKIA_LIBRARY_DIR=../../skia/out/Release-x64 \
  -DSKIA_LIBRARY=../../skia/out/Release-x64/libskia.a \
  -G Ninja \
  ..
ninja aseprite
