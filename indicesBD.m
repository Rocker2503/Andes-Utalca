function [indicesMap] = indicesBD(reflectancia)
        %ARI = round(( (1/reflectancia(550-349))-(1/reflectancia(700-349)) ), 5);
        
        %getBd 'indice'
        %
        query = 'Select * from indice';
        data = databaseConnectionSelect(query);
        
        cur_data = data;
        disp('size');
        dataSize = size(cur_data,1);

        row_changed = 1;
        id_affected = cur_data(row_changed, 1);
        dist_affected = cur_data(row_changed, 2);
        dist_affected2 = cur_data(row_changed, 3);

        disp(id_affected);
        disp(dist_affected);
        disp(dist_affected2);

        disp(cur_data(:,2));
            
        
        %cruce
        %
        
        %calcular
        %
        
        %rellenar indicesMap
        %cambiar foranea por el nombre
        %rellenar hasmap con : map(nombre, map(valor, id))
        %
        
        
        keySet = {};
        valueSet = {};
        indicesMap = containers.Map(keySet,valueSet);
end