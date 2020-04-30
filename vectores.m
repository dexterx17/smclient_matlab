%creamos u obtenemos los datos que queremos enviar hacia le memoria
%compartida
vector = [3,4,5,2,3,4];

%importar la dll de la memoria
loadlibrary('smClient64.dll','./smClient.h');

%abrir la memoria compartida de tipo enteros
calllib('smClient64','openMemory','memoriaEnteros',1);


%escribimos en la memoria
calllib('smClient64','setInt','memoriaEnteros',1,5)

%leemos desde memoria
retInt = calllib('smClient64','getInt','memoriaEnteros',1)

%liberar memoria compartida
calllib('smClient64','freeViews')
unloadlibrary smClient64