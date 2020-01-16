
%Proyecto Nuevo ANDESVER_hoja

mkdir 'C:\HYPER'

cd 'C:\HYPER'
mkdir INDICES
cd 'C:\HYPER\INDICES'
mkdir T1
cd 'C:\HYPER\INDICES'
mkdir T2
cd 'C:\HYPER\INDICES'
mkdir T3
cd 'C:\HYPER\INDICES'
mkdir T4

cd 'C:\HYPER'
fileName = 'T1R1_HO.sig';

%Lectura del archivo .sig
[wavelength, data, new_wave, new_data] = LeerArchivo(fileName);

%Interpolacion lineal de los datos
[wave_new, data_new] = Interpolar(wavelength,data,new_wave, new_data);

%Calcular reflectancia para valores enteros
[reflectancia] = CalculoReflectancia(wave_new,data_new);


function [wavelength, data, new_wave, new_data] = LeerArchivo(nombreArchivo)
    [tar, ref]=importsvc(nombreArchivo);
    R_rel = relativereflectance(tar, ref);
    wavelength = R_rel.wavelength;
    data       = R_rel.data;
    new_wave = zeros(2500-340+1,1);
    new_data = zeros(2500-340+1,1);
end

function [new_wave, new_data] = Interpolar(wavelength,data,new_wave,new_data)
    for wave = 340:2500
    anterior = wavelength(wavelength<=wave);
    posterior = wavelength(wavelength>=wave);
    anterior = anterior(end);
    posterior = posterior(1);
    wavelength_real = [anterior posterior];
    anterior_wave = anterior;
    posterior_wave = posterior;
    
    anterior = data(wavelength<=wave  );
    posterior = data(wavelength>=wave);
    anterior = anterior(end);
    posterior = posterior(1);
    data_real = [anterior posterior];
    
    if anterior_wave ~= wave && posterior_wave ~= wave
        data_inter = interp1(wavelength_real,data_real,wave,'Linear');
        new_wave(wave-339,1) = wave;
        new_data(wave-339,1) = data_inter;
    elseif anterior_wave == wave || posterior_wave == wave
        new_wave(wave-339,1) = wavelength(wavelength==wave);
        new_data(wave-339,1) = data(wavelength==wave);
    end
    clearvars anterior posterior wavelength_real data_real anterior_wave posterior_wave;
    end
end

function [reflectancia] = CalculoReflectancia(wave_new,data_new)
    reflectancia = zeros(2150,1);
    for index = 1:2151
    reflectancia(index) = data_new(wave_new==349+index);
    end
end
