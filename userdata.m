function [vt, t, fm, signal] = userdata
clc;
close all
clear all
fprintf(' Bienvenido al programa para procesar una bioseñal\n');
n=2;
pause(n)
input('\n Presiona [Enter] para seleccionar el archivo de texto ');
[path,file] = uigetfile("*.txt");    
largui= length(path);  z=0;
    while z==0
        if path(largui)=='t'&&path(largui-1)=='x'&&path(largui-2)=='t'
            rev=load([file, path]);
            z=1;
        else
            fprintf(" El archivo seleccionado es inválido, seleccione un archivo de texto");
            [path,file] = uigetfile("*.txt");
            largui=length(path);
            z=0;
        end
    end

clc;
tamano = size(rev,2);
if tamano > 1
    z = 0;
    while z == 0
        fprintf(' Tu vector tiene %.0f columnas \n', tamano);
        opc = input(' ¿Cuál columna del vector deseas utilizar? : ');
        if opc <= tamano
            rev = rev(:,opc);
            z = 1;
        else
            clc;
            fprintf(' Columna inexistente \n');
            z = 0;
        end
    end
end
clc;
fprintf('\n Su archivo se ha cargado correctamente\n');

  datos=strcat(file, path);
  carga=load(datos);
  signal=carga;
  fm=input("\n Por favor, ingrese la frecuencia de muestreo (en KHz): ");
  fm=fm*1000;
  t=length(signal)/fm;
  vt= 1/fm:1/fm:t;
end