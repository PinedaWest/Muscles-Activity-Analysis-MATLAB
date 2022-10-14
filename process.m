function process(vt, t, fm, signal)
close all
absoluta = abs(signal);
bucle=1;
    while bucle==1
          revisa=1;
          while revisa==1
              ventana=input("\n Digita la longitud de ventana deseada: ");
              if ventana>length(signal)
                  fprintf("%d es el valor máximo de ventana", lenght(signal));
                  revisa=1;
              else
                  revisa=0;
              end
          end
          mejora=envelope(absoluta, ventana, 'peak');
          plot(vt, mejora)
          hold on 
          plot(vt, absoluta)
            p = questdlg('Cambiar el valor de ventana?','Longitud de ventana','Sí','No','No');
                    if strcmp(p,'Sí')
                        bucle = 1;
                        close all;
                        clc;
                    else 
                        bucle = 2;
                        clc;
                    end
    end
 transformada= abs(fft(mejora));
 vf= 1/t:1/t:fm;
 transformada(1)= [];
 vf(1)=[];
 extremo= max(transformada(1:100));
 for m=1:100
     if extremo==transformada(m)
         fund= vf(m);
     end
 end
    fprintf("\n Su frecuencia fundamental es: %f", fund);
end