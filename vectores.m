clc;
clear all;
%creamos u obtenemos los datos que queremos enviar hacia le memoria
%compartida
vector = [2,2,5,8,2,2];

%importar la dll de la memoria
loadlibrary('smClient64.dll','./smClient.h');

%abrir la memoria compartida de tipo enteros
calllib('smClient64','openMemory','memoriaEnteros',1);

multiplicador =2;
while true
    %recorremos el array vector
    for pos = 1:length(vector)
        %obtenemos el indice de las memoria( matlab inicia en 1)
        indice_memoria = (pos-1);
        %obtenemos el valor a enviar
        valor = vector(pos)*multiplicador
        %escribimos en la memoria
        calllib('smClient64','setInt','memoriaEnteros',indice_memoria,valor)
    end
    multiplicador= multiplicador + 1
end

%leemos desde memoria
retInt = calllib('smClient64','getInt','memoriaEnteros',1)

%liberar memoria compartida
calllib('smClient64','freeViews')
unloadlibrary smClient64