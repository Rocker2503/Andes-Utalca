function [indicesMap] = indicesBD(reflectancia)
        %ARI = round(( (1/reflectancia(550-349))-(1/reflectancia(700-349)) ), 5);
        
        %getBd 'indice'
        query = 'Select * from indice';
        data = databaseConnectionSelect(query);
        disp(data);
        
        %cruce
        
        %calcular
        
        %rellenar indicesMap
        
        
        keySet = {};
        valueSet = {};
        indicesMap = containers.Map(keySet,valueSet);
end