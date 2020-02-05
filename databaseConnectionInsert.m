function [] = databaseConnectionInsert(query)
    %% Make connection to database
    conn = database('MySQL','root','');

    %Set query to execute on the database
    %obtener auto id agregado
    query = sprintf('INSERT INTO andes(nombre) VALUES(%s%s%s) SELECT LAST_INSERT_ID();', "'", 'test0',  "'" );
    disp(query);

    %% Execute query and fetch results
    fetch(exec(conn,query));    

    %% Close connection to database
    close(conn)

    %% Clear variables
    clear conn query
end