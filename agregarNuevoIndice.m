function [indices] = agregarNuevoIndice(indices, reflectancia, nombre, funcion)
        minimo = 350;
        maximo = 2500;

        %parsear funcion y obtener longitudes de onda
        longitudesOnda = [];
        
        split = regexp(funcion, '[-+*/()]', 'split');

        for sub = 1:length(split)            
            local = cell2mat(split(sub));
            local = str2double(local);
            
            if( (~isnan(local)) && (local >= minimo) && (local <= maximo) )
                disp(sub);
                disp(local);
                
                if(isempty(longitudesOnda) )
                    longitudesOnda = [longitudesOnda local];
                elseif(contiene(ismember(longitudesOnda, local)) == 0 )
                    longitudesOnda = [longitudesOnda local];
                end
            end
        end
        
        
        %remplazar valores de longitudes de onda
        %
        
        localFuncion = funcion;
        for i = 1:length(longitudesOnda)
            disp('REEMPLAZO');
            subSplit = regexp(localFuncion, num2str(longitudesOnda(i)), 'split');
            disp(subSplit);
                        
            for s = 1:(length(subSplit) - 1 )
                %format long;
                long = reflectancia(longitudesOnda(i) - 349 );
                disp('long reflectanciaaaaaa!!!!!!!!!!!!!!!!!!!');
                disp(long);
                %format long;
                newSub = strcat(subSplit(s), num2str(long) );
                %format long;
                subSplit(s) = newSub;
                
                disp('newSub');
                disp(newSub);
            end
            %concatenar y continuar ciclo
            localFuncion = unificar(subSplit);
            disp(localFuncion);
                        
        end
        
        disp('Funcion Final');
        disp(localFuncion);
        disp(class(localFuncion));
    
        %Transformar 
        %
        indiceFinal = str2num(localFuncion);
        %aproximar a la 5ta decima
        indiceFinal = round(indiceFinal, 5);
        disp('indiceFinal');
        disp(indiceFinal);
        
        
        indices(nombre) = indiceFinal;
        
        
end

function [flag] = contiene(array)
    flag = 0;
    for i = 1:length(array)
       if(array(i) == 1)
          flag = 1;
       end
    end
end

function [finalArray] = unificar(array)
    local = [];
    for i = 1:length(array)
        local = strcat(local, array(i));
    end
    finalArray = local{1};
end