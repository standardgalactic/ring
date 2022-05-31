cls

clang -c general.c state.c ext.c hashlib.c rhtable.c vmgc.c os_e.c rstring.c rlist.c ritem.c ritems.c scanner.c parser.c stmt.c expr.c codegen.c vm.c vmexpr.c vmvars.c vmlists.c vmfuncs.c ringapi.c vmoop.c vmcui.c vmtry.c vmstr.c vmjump.c vmrange.c list_e.c meta_e.c vmperf.c vmexit.c vmstack.c vmstate.c genlib_e.c math_e.c file_e.c dll_e.c objfile.c -I ..\include 

clang -shared -o ..\..\lib\ring.dll general.o state.o ext.o hashlib.o rhtable.o vmgc.o os_e.o rstring.o rlist.o ritem.o ritems.o scanner.o parser.o stmt.o expr.o codegen.o vm.o vmexpr.o vmvars.o vmlists.o vmfuncs.o ringapi.o vmoop.o vmcui.o vmtry.o vmstr.o vmjump.o vmrange.o list_e.o meta_e.o vmperf.o vmexit.o vmstack.o vmstate.o genlib_e.o math_e.o file_e.o dll_e.o objfile.o

ar rcs ..\..\lib\libringstatic.lib general.o state.o ext.o hashlib.o rhtable.o vmgc.o os_e.o rstring.o rlist.o ritem.o ritems.o scanner.o parser.o stmt.o expr.o codegen.o vm.o vmexpr.o vmvars.o vmlists.o vmfuncs.o ringapi.o vmoop.o vmcui.o vmtry.o vmstr.o vmjump.o vmrange.o list_e.o meta_e.o vmperf.o vmexit.o vmstack.o vmstate.o genlib_e.o math_e.o file_e.o dll_e.o  objfile.o

clang ring.c ..\..\lib\ring.lib -o ..\..\bin\ring.exe -L ..\..\lib  -I ..\include 

copy ..\..\lib\ring.dll ..\..\bin\ring.dll