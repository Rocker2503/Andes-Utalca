function [Answer,Cancelled,resp] = modalcorrelacion(etiquetas)

    Title = 'Agregar Correlación';

    Prompt = {
        'Tratamiento', 'List', ''
        'Nombre','Nombre','*'
        'Valor', 'Valor','*'
    };
    DefAns = struct([]);
    global resp;
    resp = struct([]);
    %%Formats = struct('type',{'list','edit','edit'});
    Formats(1).style = 'popupmenu';
    Formats(1).items = etiquetas;
    
    Formats(2).required = 'on';
    
    Formats(3).required = 'on';
    Formats(3).format = 'float';
    
    Prompt(4,:) = {'Agregar','',''};
    Formats(4).type = 'button';
    Formats(4).callback = @(~,~,handles,k)(agregarStruct(handles));

    Formats = Formats';
    Options.AlignControls = 'on';

    [Answer,Cancelled] = inputsdlg2(Prompt,Title,Formats,DefAns,Options);
end

function [resp] = agregarStruct(handles)
    val = get(handles(1),'Value');
    str = get(handles(1),'String');
    tratamiento = str(val);
    st = struct('Tratamiento',tratamiento,'Nombre',(get(handles(2),'String')),'Valor',str2double((get(handles(3),'String')) ));
    %disp(st)
    global resp;
    resp = [resp , st];
    %disp(resp);
end