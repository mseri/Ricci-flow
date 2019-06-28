.RECIPEPREFIX = >
release:
>gcc -c -o ricci.o ricci.c -D FREEGLUT_STATIC -I"freeglut\include" 
>gcc -o ricci.exe ricci.o -L"freeglut\lib" -lfreeglut_static -lopengl32 -lwinmm -lgdi32 -Wl,--subsystem,windows
>ricci.exe 
debug:
>gcc -c -o ricci.o ricci.c -D FREEGLUT_STATIC -I"freeglut\include" -g
>gcc -o ricci.exe ricci.o -L"freeglut\lib" -lfreeglut_static -lopengl32 -lwinmm -lgdi32 -Wl,--subsystem,windows
>gdb ricci.exe