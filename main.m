function main
todo=1;
p=2;
    while todo==1
    [vt, t, fm, signal] = userdata;
    process(vt, t, fm, signal);
    repetir=1;
        while repetir == 1
            ask=input('\n ¿Procesar otra señal? 1(Sí)  2(No) : ');
            switch ask
                case 1
                   todo = 1;
                    repetir = 0;
                case 2
                    todo = 0;
                    repetir = 0;
                    fprintf('\n Gracias por utilizar el programa! ');
                    pause(p);
                    clc
                    close all
                otherwise
                    clc
                    fprintf('\n ¡Opción Incorrecta!\n');
                    todo = 0;
            end
        end
    end
end