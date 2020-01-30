function [indices] = agregarNuevoIndice(indices, reflectancia, nombre, funcion)
        minimo = 350;
        maximo = 2500;
        
        disp(nombre);
        disp(class(nombre));
        disp(funcion);
        disp(class(funcion));
        
        
        %(500-350)/(500-350)
        %(1.2*(1.2*((reflectancia(880-349)))-(reflectancia(554-349)))-2.5*(reflectancia(758-349)-reflectancia(554-349)))
        %(0.5*(120*(reflectancia(758-349)-reflectancia(554-349))-200*(reflectancia(674-349)-reflectancia(554-349))))
        
        %parsear funcion y obtener longitudes de onda
        longitudesOnda = [];
        
        split = regexp(funcion, '[-+*/()]', 'split');
        disp('size');
        disp(split);
        disp(length(split));
        for sub = 1:length(split)
            disp('prints');
            
            local = cell2mat(split(sub));
            local = str2double(local);
            
            disp('if');
            if( (~isnan(local)) && (local >= minimo) && (local <= maximo) )
                disp(sub);
                disp(local);
                
                if(isempty(longitudesOnda) )
                    longitudesOnda = [longitudesOnda local];
                    %disp('contiene0');
                    %disp(contiene(ismember(longitudesOnda, local)) );
                elseif(contiene(ismember(longitudesOnda, local)) == 0 )
                    %disp('contiene2');
                    %disp(contiene(ismember(longitudesOnda, local)) );
                    longitudesOnda = [longitudesOnda local];
                end
            end
        end
        disp('long');
        disp(longitudesOnda);              
        
        
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
            
            disp('INDICEBG1');
            disp(indices('BGI1'));
            
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