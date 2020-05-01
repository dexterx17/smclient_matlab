clc;
clear all;
%importar la dll de la memoria
loadlibrary('smClient64.dll','./smClient.h');

%abrir la memoria compartida de tipo enteros
calllib('smClient64','openMemory','memoriaEnteros',1);

while true
    %leemos la posicion 3 de la memoria
    retInt = calllib('smClient64','getInt','memoriaEnteros',3)
end

