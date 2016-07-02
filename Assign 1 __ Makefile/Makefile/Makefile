# Compiler
cc = gcc

# Source File location
path_src = ./src_and_headers

# Object File location (Binaries)
path_obj = ./bin

# Executable location (exe)
path_exe = ./exec

# Source Files
src_hello = $(path_src)/Hello.c
src_world = $(path_src)/World.c
src_print = $(path_src)/Print.c

# Respective Object Files
obj_hello = $(path_obj)/Hello.o
obj_world = $(path_obj)/World.o
obj_print = $(path_obj)/Print.o

# Executable Name
exe = $(path_exe)/a.out

# Final Command Chain
use_this = $(obj_print) $(obj_hello) $(obj_world)

##################################################################################################
##################################################################################################

run: $(exe)
	$(exe)

$(exe): $(use_this)
	$(cc) -o $(exe) -Xlinker $(use_this)

$(obj_hello):
	$(cc) -o $(obj_hello) -c $(src_hello)

$(obj_world):
	$(cc) -o $(obj_world) -c $(src_world)
	
$(obj_print):
	$(cc) -o $(obj_print) -c $(src_print)

clean:
	rm -f $(use_this) $(exe)

