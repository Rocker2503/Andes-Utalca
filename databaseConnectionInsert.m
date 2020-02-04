function [] = databaseConnectionInsert(query)
    %% Make connection to database
    conn = database('MySQL','root','');

    %Set query to execute on the database
     %query = sprintf('INSERT INTO andes VALUES(%i,%s%s%s)',4, "'", 'test',  "'" );
     disp(query)

    %% Execute query and fetch results
    fetch(exec(conn,query));

    %% Close connection to database
    close(conn)

    %% Clear variables
    clear conn query
end