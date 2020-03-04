test_deps_install SDL freetype
download_and_extract http://www.libsdl.org/projects/SDL_ttf/release/SDL_ttf-2.0.11.tar.gz SDL_ttf-2.0.11
apply_patch SDL_ttf-2.0.11-PSP
sed -i '139iLIBS="$LIBS -lm"' configure.in 
run_autogen_build --with-sdl-prefix=$(psp-config --psp-prefix) --with-freetype-prefix=$(psp-config --psp-prefix) --without-x

