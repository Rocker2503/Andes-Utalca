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
        
        %parsear funcion
        %
        split = regexp(funcion, '[-+*/()]', 'split');
        disp('size');
        disp(split);
        disp(length(split));
        for sub = 1:length(split)
            disp('prints');
            %disp(cell2mat(split));
            %disp(cellrsplit(sub));
            local = cell2mat(split(sub));
            local = str2double(local);
            
            disp('if');
            if( (~isnan(local)) && (local >= minimo) && (local <= maximo) )
                disp(sub);
                disp(local);
            end
        end
        
        %indices(nombre) = funcion;
        
        
end