%https://www.mathworks.com/help/instrument/communicate-using-tcpip-server-sockets.html
clc;
clear all;

%creamos u obtenemos los datos que queremos enviar hacia le memoria
%compartida
vector = [2,2,5,8,2,2];

valor = "2:2:5:8:2:2";

tcpipClient = tcpip('127.0.0.1',55001,'NetworkRole','Client');
set(tcpipClient,'Timeout',30);
fopen(tcpipClient);

fwrite(tcpipClient,valor);

fclose(tcpipClient);
