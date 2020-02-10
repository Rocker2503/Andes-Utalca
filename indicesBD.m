function [indicesMap] = indicesBD(reflectancia)
        %ARI = round(( (1/reflectancia(550-349))-(1/reflectancia(700-349)) ), 5);
        keySet = {};
        valueSet = {};
        
        %getBd 'indice'
        %
        query = 'Select * from indice';
        data = databaseConnectionSelect(query);
        
        cur_data = data;
        disp('size');
        dataSize = size(cur_data,1);
        disp(dataSize);
        
        for i = 1:dataSize
            row_changed = i;
            localNombre = table2cell(cur_data(row_changed, 1));
            localFormula = table2cell(cur_data(row_changed, 2));
            longInferior = table2cell(cur_data(row_changed, 3));
            longSuperior = table2cell(cur_data(row_changed, 4));
            
            %if cruce reflectancia con longOnda
            %
            %
            
            %calcular
            %remplazar valores de longitudes de onda
            %            
            localLongitudesOnda = getLongitudesOnda(localFormula{1});
            
            valorLocalIndice = calcularIndice(localFormula{1}, reflectancia, localLongitudesOnda);  
            disp('classvl');
            disp(localNombre{1});
            disp(valorLocalIndice);
            
            %rellenar
            keySet = [keySet, localNombre{1}];
            valueSet = [valueSet, valorLocalIndice];            
        end

        %disp(keySet);
        %disp(valueSet);
        
        indicesMap = containers.Map(keySet,valueSet);
end

function [indiceFinal] = calcularIndice(localFormula, reflectancia, longitudesOnda)
    localFuncion = localFormula;
    disp('calcucl');
    disp(length(longitudesOnda));
    for i = 1:length(longitudesOnda)
        disp('REEMPLAZO');
        disp(longitudesOnda(i));
        
        %separar
        disp(class(localFuncion));
        disp(localFuncion);
        [subSplit,matches] = split(localFuncion,["-","+","*","/","(",")"]);        

        %reemplazar valor reflectancia
        for s = 1:(length(subSplit))
            check = subSplit(s);
            check = str2double(check{1});
            if(check == longitudesOnda(i))
                format long;
                long = reflectancia(longitudesOnda(i) - 349 );
                disp('long reflectanciaaaaaa!!!!!!!!!!!!!!!!!!!');
                disp(long);
                %format long;
                %newSub = strcat(subSplit(s), num2str(long) );
                %newSub = str2cell(newSub);
                %format long;
                subSplit(s) = cellstr(num2str(long));

                %disp('newSub');
                %disp(newSub);
            end
        end
        %concatenar y continuar ciclo
        originalStr = join(subSplit,matches);
        disp('originalStr');
        disp(originalStr);
        localFuncion = originalStr;
    end

    disp('Funcion Final');
    disp(localFuncion);
    disp(class(localFuncion));

    %Transformar 
    %
    indiceFinal = str2num(localFuncion{1});
    %aproximar a la 5ta decima
    indiceFinal = round(indiceFinal, 5);
    disp('indiceFinal');
    disp(indiceFinal);
end

function [longitudesOnda] = getLongitudesOnda(funcion)
    split = regexp(funcion, '[-+*/()]', 'split');
    
    longitudesOnda = [];
    minimo = 350;
    maximo = 2500;

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