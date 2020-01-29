function [Answer,Cancelled] = modal()
    Title = 'Agregar nuevo �ndice';

    Prompt = {
       'Nombre','Nombre','*'
       'Funci�n','Funcion','*'
       };
   
    DefAns = struct([]);

    Formats(1,1).required = 'on'; % Nombre
    Formats(1,1).span = [1 4];
    Formats(1,1).callback = @(~,~,handles,k)(set(handles(k), 'String', upper(get(handles(k),'String') ) )  );

    Formats(2,1).required = 'on'; % Funcion
    Formats(2,1).span = [1 4];
    DefAns(1).Funcion = '()';


    Prompt(end+1,:) = {'+ (adici�n)','',''};
    Formats(3,1).type = 'button';
    Formats(3,1).callback = @(~,~,handles,k)(set(handles(2), 'String', strcat(get(handles(2),'String'),'+') ) );
    %Formats(3,1).callback = @(hObj,~,~,~)(uicontrol(hObj));

    Prompt(end+1,:) = {'- (sustracci�n)','',''};
    Formats(3,2).type = 'button';
    Formats(3,2).callback = @(~,~,handles,k)(set(handles(2), 'String', strcat(get(handles(2),'String'),'-') ) );

    Prompt(end+1,:) = {'* (multiplicaci�n)','',''};
    Formats(3,3).type = 'button';
    Formats(3,3).callback = @(~,~,handles,k)(set(handles(2), 'String', strcat(get(handles(2),'String'),'*()') ) );

    Prompt(end+1,:) = {'/ (divisi�n)','',''};
    Formats(3,4).type = 'button';
    Formats(3,4).callback = @(~,~,handles,k)(set(handles(2), 'String', strcat(get(handles(2),'String'),'/()') ) );

    Options.AlignControls = 'on';

    [Answer,Cancelled] = inputsdlg2(Prompt,Title,Formats,DefAns,Options);
end
