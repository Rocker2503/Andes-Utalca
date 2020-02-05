function [data] = databaseConnectionInsert(query)
    %% Make connection to database
    conn = database('MySQL','root','');

    %Set query to execute on the database
    %obtener auto id agregado
    query = sprintf('INSERT INTO andes(nombre) VALUES(%s%s%s);', "'", 'test1',  "'" );
    query2 = sprintf('SELECT LAST_INSERT_ID();');
    disp(query);
    disp(query2);
    
    %% Execute query and fetch results
    fetch(exec(conn,query));
    data = cell2mat(table2cell(fetch(conn,query2)));
    disp(data);

    %% Close connection to database
    close(conn)

    %% Clear variables
    clear conn query
end