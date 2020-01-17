function [] = exportarIndices(fileNameIndice, indicesMap)
	    fid= fopen( fileNameIndice,'w');
        fprintf(fid, 'ARI;%f\n',indicesMap('ARI'));
        fprintf(fid, 'AI;%f\n',indicesMap('AI'));
        fprintf(fid, 'BI;%f\n',indicesMap('BI'));
        fprintf(fid, 'BGI1;%f\n',indicesMap('BGI1'));
        fprintf(fid, 'BGI2;%f\n',indicesMap('BGI2'));
        fprintf(fid, 'BRI1;%f\n',indicesMap('BRI1'));
        fprintf(fid, 'BRI2;%f\n',indicesMap('BRI2'));
        fprintf(fid, 'CaI;%f\n',indicesMap('CaI'));
        fprintf(fid, 'CWMI1;%f\n',indicesMap('CWMI1'));
        fprintf(fid, 'CWMI2;%f\n',indicesMap('CWMI2'));
        fprintf(fid, 'CWMI3;%f\n',indicesMap('CWMI3'));
        fprintf(fid, 'Ctr1;%f\n',indicesMap('Ctr1'));
        fprintf(fid, 'Ctr2;%f\n',indicesMap('Ctr2'));
        fprintf(fid, 'Ctr3;%f\n',indicesMap('Ctr3'));
        fprintf(fid, 'Ctr4;%f\n',indicesMap('Ctr4'));
        fprintf(fid, 'Ctr5;%f\n',indicesMap('Ctr5'));
        fprintf(fid, 'CuI;%f\n',indicesMap('CuI'));
        fprintf(fid, 'DSSI1;%f\n',indicesMap('DSSI1'));
        fprintf(fid, 'DSSI2;%f\n',indicesMap('DSSI2'));
        fprintf(fid, 'Datt1;%f\n',indicesMap('Datt1'));
        fprintf(fid, 'Datt2;%f\n',indicesMap('Datt2'));
        fprintf(fid, 'Datt3;%f\n',indicesMap('Datt3'));
        fprintf(fid, 'Datt4;%f\n',indicesMap('Datt4'));
        fprintf(fid, 'Datt5;%f\n',indicesMap('Datt5'));
        fprintf(fid, 'Datt6;%f\n',indicesMap('Datt6'));
        fprintf(fid, 'Datt7;%f\n',indicesMap('Datt7'));
        fprintf(fid, 'DLAI;%f\n',indicesMap('DLAI'));
        fprintf(fid, 'DD1;%f\n',indicesMap('DD1'));
        fprintf(fid, 'DD2;%f\n',indicesMap('DD2'));
        fprintf(fid, 'EVI1;%f\n',indicesMap('EVI1'));
        fprintf(fid, 'EVI2;%f\n',indicesMap('EVI2'));
        fprintf(fid, 'GM1;%f\n',indicesMap('GM1'));
        fprintf(fid, 'GM2;%f\n',indicesMap('GM2'));
        fprintf(fid, 'GrM;%f\n',indicesMap('GrM'));
        fprintf(fid, 'GRI;%f\n',indicesMap('GRI'));
        fprintf(fid, 'GI;%f\n',indicesMap('GI'));
        fprintf(fid, 'HREI1;%f\n',indicesMap('HREI1'));
        fprintf(fid, 'HREI2;%f\n',indicesMap('HREI2'));
        fprintf(fid, 'HWMI;%f\n',indicesMap('HWMI'));
        fprintf(fid, 'MCARIOSAVI;%f\n',indicesMap('MCARIOSAVI'));
        fprintf(fid, 'MTCI1;%f\n',indicesMap('MTCI1'));
        fprintf(fid, 'MTCI2;%f\n',indicesMap('MTCI2'));
        fprintf(fid, 'MTCI3;%f\n',indicesMap('MTCI3'));
        fprintf(fid, 'mCRI1;%f\n',indicesMap('mCRI1'));
        fprintf(fid, 'mCRI2;%f\n',indicesMap('mCRI2'));
        fprintf(fid, 'MCARI1;%f\n',indicesMap('MCARI1'));
        fprintf(fid, 'MCARI2;%f\n',indicesMap('MCARI2'));
        fprintf(fid, 'MCARI3;%f\n',indicesMap('MCARI3'));
        fprintf(fid, 'mNDVI1;%f\n',indicesMap('mNDVI1'));
        fprintf(fid, 'mNDVI2;%f\n',indicesMap('mNDVI2'));
        fprintf(fid, 'mSR1;%f\n',indicesMap('mSR1'));
        fprintf(fid, 'mSR2;%f\n',indicesMap('mSR2'));
        fprintf(fid, 'mSR3;%f\n',indicesMap('mSR3'));
        fprintf(fid, 'mSR4;%f\n',indicesMap('mSR4'));
        fprintf(fid, 'mSR5;%f\n',indicesMap('mSR5'));
        fprintf(fid, 'MSAVI1;%f\n',indicesMap('MSAVI1'));
        fprintf(fid, 'MSAVI2;%f\n',indicesMap('MSAVI2'));
        fprintf(fid, 'MTVI1;%f\n',indicesMap('MTVI1'));
        fprintf(fid, 'MTVI2;%f\n',indicesMap('MTVI2'));
        fprintf(fid, 'MVSR;%f\n',indicesMap('MVSR'));
        fprintf(fid, 'MSI1;%f\n',indicesMap('MSI1'));
        fprintf(fid, 'MSI2;%f\n',indicesMap('MSI2'));
        fprintf(fid, 'MSI3;%f\n',indicesMap('MSI3'));
        fprintf(fid, 'MSI4;%f\n',indicesMap('MSI4'));
        fprintf(fid, 'NBNDVI;%f\n',indicesMap('NBNDVI'));
        fprintf(fid, 'NRI1;%f\n',indicesMap('NRI1'));
        fprintf(fid, 'NRI2;%f\n',indicesMap('NRI2'));
        fprintf(fid, 'NDCI;%f\n',indicesMap('NDCI'));
        fprintf(fid, 'NDg_b;%f\n',indicesMap('NDg_b'));
        fprintf(fid, 'NDII1;%f\n',indicesMap('NDII1'));
        fprintf(fid, 'NDII2;%f\n',indicesMap('NDII2'));
        fprintf(fid, 'NDLI;%f\n',indicesMap('NDLI'));
        fprintf(fid, 'NDMI1;%f\n',indicesMap('NDMI1'));
        fprintf(fid, 'NDMI2;%f\n',indicesMap('NDMI2'));
        fprintf(fid, 'NDMI3;%f\n',indicesMap('NDMI3'));
        fprintf(fid, 'NDNI;%f\n',indicesMap('NDNI'));
        fprintf(fid, 'NDRE;%f\n',indicesMap('NDRE'));
        fprintf(fid, 'NDSI1;%f\n',indicesMap('NDSI1'));
        fprintf(fid, 'NDSI2;%f\n',indicesMap('NDSI2'));
        fprintf(fid, 'NDSI3;%f\n',indicesMap('NDSI3'));
        fprintf(fid, 'NDSI4;%f\n',indicesMap('NDSI4'));
        fprintf(fid, 'NDSI5;%f\n',indicesMap('NDSI5'));
        fprintf(fid, 'NDSI6;%f\n',indicesMap('NDSI6'));
        fprintf(fid, 'NDSI7;%f\n',indicesMap('NDSI7'));
        fprintf(fid, 'NDSI8;%f\n',indicesMap('NDSI8'));
        fprintf(fid, 'NDSI9;%f\n',indicesMap('NDSI9'));
        fprintf(fid, 'NDSI10;%f\n',indicesMap('NDSI10'));
        fprintf(fid, 'NDSI11;%f\n',indicesMap('NDSI11'));
        fprintf(fid, 'NDSI12;%f\n',indicesMap('NDSI12'));
        fprintf(fid, 'NDSI13;%f\n',indicesMap('NDSI13'));
        fprintf(fid, 'NDSI14;%f\n',indicesMap('NDSI14'));
        fprintf(fid, 'NDSI15;%f\n',indicesMap('NDSI15'));
        fprintf(fid, 'NDSI16;%f\n',indicesMap('NDSI16'));
        fprintf(fid, 'NDSI17;%f\n',indicesMap('NDSI17'));
        fprintf(fid, 'NDSI18;%f\n',indicesMap('NDSI18'));
        fprintf(fid, 'NDSI19;%f\n',indicesMap('NDSI19'));
        fprintf(fid, 'NDSI20;%f\n',indicesMap('NDSI20'));
        fprintf(fid, 'NDSI21;%f\n',indicesMap('NDSI21'));
        fprintf(fid, 'NDSI22;%f\n',indicesMap('NDSI22'));
        fprintf(fid, 'NDSI23;%f\n',indicesMap('NDSI23'));
        fprintf(fid, 'NDSI24;%f\n',indicesMap('NDSI24'));
        fprintf(fid, 'NDSI25;%f\n',indicesMap('NDSI25'));
        fprintf(fid, 'NDSI26;%f\n',indicesMap('NDSI26'));
        fprintf(fid, 'NDSI27;%f\n',indicesMap('NDSI27'));
        fprintf(fid, 'NDSI28;%f\n',indicesMap('NDSI28'));
        fprintf(fid, 'NDSI29;%f\n',indicesMap('NDSI29'));
        fprintf(fid, 'NDSI30;%f\n',indicesMap('NDSI30'));
        fprintf(fid, 'NDSI31;%f\n',indicesMap('NDSI31'));
        fprintf(fid, 'NDSI32;%f\n',indicesMap('NDSI32'));
        fprintf(fid, 'NDSI33;%f\n',indicesMap('NDSI33'));
        fprintf(fid, 'NDSI34;%f\n',indicesMap('NDSI34'));
        fprintf(fid, 'NDSI35;%f\n',indicesMap('NDSI35'));
        fprintf(fid, 'NDSI36;%f\n',indicesMap('NDSI36'));
        fprintf(fid, 'NDSI37;%f\n',indicesMap('NDSI37'));
        fprintf(fid, 'NDSI38;%f\n',indicesMap('NDSI38'));
        fprintf(fid, 'NDSI39;%f\n',indicesMap('NDSI39'));
        fprintf(fid, 'NDSI40;%f\n',indicesMap('NDSI40'));
        fprintf(fid, 'NDSI41;%f\n',indicesMap('NDSI41'));
        fprintf(fid, 'NDVI1;%f\n',indicesMap('NDVI1'));
        fprintf(fid, 'NDVI2;%f\n',indicesMap('NDVI2'));
        fprintf(fid, 'NDVI3;%f\n',indicesMap('NDVI3'));
        fprintf(fid, 'NDVI4;%f\n',indicesMap('NDVI4'));
        fprintf(fid, 'NDVI5;%f\n',indicesMap('NDVI5'));
        fprintf(fid, 'NDVI6;%f\n',indicesMap('NDVI6'));
        fprintf(fid, 'NDVI7;%f\n',indicesMap('NDVI7'));
        fprintf(fid, 'NDVI8;%f\n',indicesMap('NDVI8'));
        fprintf(fid, 'NDVI9;%f\n',indicesMap('NDVI9'));
        fprintf(fid, 'NDVI10;%f\n',indicesMap('NDVI10'));
        fprintf(fid, 'NDVI11;%f\n',indicesMap('NDVI11'));
        fprintf(fid, 'NDVI12;%f\n',indicesMap('NDVI12'));
        fprintf(fid, 'NDVI13;%f\n',indicesMap('NDVI13'));
        fprintf(fid, 'NDVI14;%f\n',indicesMap('NDVI14'));
        fprintf(fid, 'NDVI15;%f\n',indicesMap('NDVI15'));
        fprintf(fid, 'NDVI16;%f\n',indicesMap('NDVI16'));
        fprintf(fid, 'NDVI17;%f\n',indicesMap('NDVI17'));
        fprintf(fid, 'NDVI18;%f\n',indicesMap('NDVI18'));
        fprintf(fid, 'NDWI1;%f\n',indicesMap('NDWI1'));
        fprintf(fid, 'NDWI2;%f\n',indicesMap('NDWI2'));
        fprintf(fid, 'NDWI3;%f\n',indicesMap('NDWI3'));
        fprintf(fid, 'NDWI4;%f\n',indicesMap('NDWI4'));
        fprintf(fid, 'NDWI5;%f\n',indicesMap('NDWI5'));
        fprintf(fid, 'NDWI6;%f\n',indicesMap('NDWI6'));
        fprintf(fid, 'NGRR_1;%f\n',indicesMap('NGRR_1'));
        fprintf(fid, 'NGRR_2;%f\n',indicesMap('NGRR_2'));
        fprintf(fid, 'NPQI;%f\n',indicesMap('NPQI'));
        fprintf(fid, 'NPCI;%f\n',indicesMap('NPCI'));
        fprintf(fid, 'OSAVI1;%f\n',indicesMap('OSAVI1'));
        fprintf(fid, 'OSAVI2;%f\n',indicesMap('OSAVI2'));
        fprintf(fid, 'OCAR;%f\n',indicesMap('OCAR'));
        fprintf(fid, 'PRI1;%f\n',indicesMap('PRI1'));
        fprintf(fid, 'PRI2;%f\n',indicesMap('PRI2'));
        fprintf(fid, 'PRI3;%f\n',indicesMap('PRI3'));
        fprintf(fid, 'PRI4;%f\n',indicesMap('PRI4'));
        fprintf(fid, 'PRI5;%f\n',indicesMap('PRI5'));
        fprintf(fid, 'PRI6;%f\n',indicesMap('PRI6'));
        fprintf(fid, 'PRI7;%f\n',indicesMap('PRI7'));
        fprintf(fid, 'PRI_CI;%f\n',indicesMap('PRI_CI'));
        fprintf(fid, 'PSND1;%f\n',indicesMap('PSND1'));
        fprintf(fid, 'PSND2;%f\n',indicesMap('PSND2'));
        fprintf(fid, 'PSND3;%f\n',indicesMap('PSND3'));
        fprintf(fid, 'PSND4;%f\n',indicesMap('PSND4'));
        fprintf(fid, 'PSSRa;%f\n',indicesMap('PSSRa'));
        fprintf(fid, 'PSSRb;%f\n',indicesMap('PSSRb'));
        fprintf(fid, 'PSSRc2;%f\n',indicesMap('PSSRc2'));
        fprintf(fid, 'PSSRchla;%f\n',indicesMap('PSSRchla'));
        fprintf(fid, 'PKI;%f\n',indicesMap('PKI'));
        fprintf(fid, 'PBI;%f\n',indicesMap('PBI'));
        fprintf(fid, 'PSRI1;%f\n',indicesMap('PSRI1'));
        fprintf(fid, 'PSRI2;%f\n',indicesMap('PSRI2'));
        fprintf(fid, 'RARS;%f\n',indicesMap('RARS'));
        fprintf(fid, 'RARSc;%f\n',indicesMap('RARSc'));
        fprintf(fid, 'RARSa;%f\n',indicesMap('RARSa'));
        fprintf(fid, 'RARSb;%f\n',indicesMap('RARSb'));
        fprintf(fid, 'RI_1dB;%f\n',indicesMap('RI_1dB'));
        fprintf(fid, 'RI_2dB;%f\n',indicesMap('RI_2dB'));
        fprintf(fid, 'RI_3dB;%f\n',indicesMap('RI_3dB'));
        fprintf(fid, 'RI_half;%f\n',indicesMap('RI_half'));
        fprintf(fid, 'RVI;%f\n',indicesMap('RVI'));
        fprintf(fid, 'RMSI;%f\n',indicesMap('RMSI'));
        fprintf(fid, 'RBI;%f\n',indicesMap('RBI'));
        fprintf(fid, 'RE;%f\n',indicesMap('RE'));
        fprintf(fid, 'REIP;%f\n',indicesMap('REIP'));
        fprintf(fid, 'R_M;%f\n',indicesMap('R_M'));
        fprintf(fid, 'RERI;%f\n',indicesMap('RERI'));
        fprintf(fid, 'RTVI;%f\n',indicesMap('RTVI'));
        fprintf(fid, 'RVSI;%f\n',indicesMap('RVSI'));
        fprintf(fid, 'RGI1;%f\n',indicesMap('RGI1'));
        fprintf(fid, 'RGI2;%f\n',indicesMap('RGI2'));
        fprintf(fid, 'RDVI1;%f\n',indicesMap('RDVI1'));
        fprintf(fid, 'RDVI2;%f\n',indicesMap('RDVI2'));
        fprintf(fid, 'SINDRI;%f\n',indicesMap('SINDRI'));
        fprintf(fid, 'SR1;%f\n',indicesMap('SR1'));
        fprintf(fid, 'SR2;%f\n',indicesMap('SR2'));
        fprintf(fid, 'SR3;%f\n',indicesMap('SR3'));
        fprintf(fid, 'SR4;%f\n',indicesMap('SR4'));
        fprintf(fid, 'SR5;%f\n',indicesMap('SR5'));
        fprintf(fid, 'SR6;%f\n',indicesMap('SR6'));
        fprintf(fid, 'SR7;%f\n',indicesMap('SR7'));
        fprintf(fid, 'SR8;%f\n',indicesMap('SR8'));
        fprintf(fid, 'SR9;%f\n',indicesMap('SR9'));
        fprintf(fid, 'SR10;%f\n',indicesMap('SR10'));
        fprintf(fid, 'SR11;%f\n',indicesMap('SR11'));
        fprintf(fid, 'SR12;%f\n',indicesMap('SR12'));
        fprintf(fid, 'SR13;%f\n',indicesMap('SR13'));
        fprintf(fid, 'SR14;%f\n',indicesMap('SR14'));
        fprintf(fid, 'SR15;%f\n',indicesMap('SR15'));
        fprintf(fid, 'SR16;%f\n',indicesMap('SR16'));
        fprintf(fid, 'SR17;%f\n',indicesMap('SR17'));
        fprintf(fid, 'SR18;%f\n',indicesMap('SR18'));
        fprintf(fid, 'SR19;%f\n',indicesMap('SR19'));
        fprintf(fid, 'SR20;%f\n',indicesMap('SR20'));
        fprintf(fid, 'SR21;%f\n',indicesMap('SR21'));
        fprintf(fid, 'SR22;%f\n',indicesMap('SR22'));
        fprintf(fid, 'SR23;%f\n',indicesMap('SR23'));
        fprintf(fid, 'SR24;%f\n',indicesMap('SR24'));
        fprintf(fid, 'SR25;%f\n',indicesMap('SR25'));
        fprintf(fid, 'SR26;%f\n',indicesMap('SR26'));
        fprintf(fid, 'SRPI;%f\n',indicesMap('SRPI'));
        fprintf(fid, 'SRWI1;%f\n',indicesMap('SRWI1'));
        fprintf(fid, 'SRWI2;%f\n',indicesMap('SRWI2'));
        fprintf(fid, 'SRWI3;%f\n',indicesMap('SRWI3'));
        fprintf(fid, 'SRWI4;%f\n',indicesMap('SRWI4'));
        fprintf(fid, 'SB1;%f\n',indicesMap('SB1'));
        fprintf(fid, 'SB2;%f\n',indicesMap('SB2'));
        fprintf(fid, 'SAVI1;%f\n',indicesMap('SAVI1'));
        fprintf(fid, 'SAVI2;%f\n',indicesMap('SAVI2'));
        fprintf(fid, 'SAVI3;%f\n',indicesMap('SAVI3'));
        fprintf(fid, 'SAVI4;%f\n',indicesMap('SAVI4'));
        fprintf(fid, 'SPVI1;%f\n',indicesMap('SPVI1'));
        fprintf(fid, 'SPVI2;%f\n',indicesMap('SPVI2'));
        fprintf(fid, 'SIPI1;%f\n',indicesMap('SIPI1'));
        fprintf(fid, 'SIPI2;%f\n',indicesMap('SIPI2'));
        fprintf(fid, 'SIPI3;%f\n',indicesMap('SIPI3'));
        fprintf(fid, 'SIPI4;%f\n',indicesMap('SIPI4'));
        fprintf(fid, 'TCARI_OSAVI;%f\n',indicesMap('TCARI_OSAVI'));
        fprintf(fid, 'TCARI1;%f\n',indicesMap('TCARI1'));
        fprintf(fid, 'TCARI2;%f\n',indicesMap('TCARI2'));
        fprintf(fid, 'TCARI3;%f\n',indicesMap('TCARI3'));
        fprintf(fid, 'TSAVI1;%f\n',indicesMap('TSAVI1'));
        fprintf(fid, 'TSAVI2;%f\n',indicesMap('TSAVI2'));
        fprintf(fid, 'TVI1;%f\n',indicesMap('TVI1'));
        fprintf(fid, 'TVI2;%f\n',indicesMap('TVI2'));
        fprintf(fid, 'VI;%f\n',indicesMap('VI'));
        fprintf(fid, 'VSR;%f\n',indicesMap('VSR'));
        fprintf(fid, 'Vg1;%f\n',indicesMap('Vg1'));
        fprintf(fid, 'Vg2;%f\n',indicesMap('Vg2'));
        fprintf(fid, 'Vg3;%f\n',indicesMap('Vg3'));
        fprintf(fid, 'WI1;%f\n',indicesMap('WI1'));
        fprintf(fid, 'WI2;%f\n',indicesMap('WI2'));
        fprintf(fid, 'WI3;%f\n',indicesMap('WI3'));
        fprintf(fid, 'WDVI1;%f\n',indicesMap('WDVI1'));
        fprintf(fid, 'WDVI2;%f\n',indicesMap('WDVI2'));
        fprintf(fid, 'WI_NDVI;%f\n',indicesMap('WI_NDVI'));
        fprintf(fid, 'YCAR;%f\n',indicesMap('YCAR'));
        fprintf(fid, 'ZM;%f\n',indicesMap('ZM'));

        %indices de agua

        fprintf(fid, 'NDVI_WATER;%f\n',indicesMap('NDVI_WATER'));
        fprintf(fid, 'SRI_WATER;%f\n',indicesMap('SRI_WATER'));
        fprintf(fid, 'EVI_WATER;%f\n',indicesMap('EVI_WATER'));
        fprintf(fid, 'ARVI_WATER;%f\n',indicesMap('ARVI_WATER'));
        fprintf(fid, 'reNDVI_WATER;%f\n',indicesMap('reNDVI_WATER'));
        fprintf(fid, 'MreNDVI_WATER;%f\n',indicesMap('MreNDVI_WATER'));
        fprintf(fid, 'MRESRI_WATER;%f\n',indicesMap('MRESRI_WATER'));
        fprintf(fid, 'VOG_REI_1_WATER;%f\n',indicesMap('VOG_REI_1_WATER'));
        fprintf(fid, 'VOG_REI_2_WATER;%f\n',indicesMap('VOG_REI_2_WATER'));
        fprintf(fid, 'VOG_REI_3_WATER;%f\n',indicesMap('VOG_REI_3_WATER'));
        fprintf(fid, 'PSRI_WATER;%f\n',indicesMap('PSRI_WATER'));
        fprintf(fid, 'WI_WATER;%f\n',indicesMap('WI_WATER'));
        fprintf(fid, 'RG1_WATER;%f\n',indicesMap('RG1_WATER'));
        fprintf(fid, 'RGI2_WATER;%f\n',indicesMap('RGI2_WATER'));
        fprintf(fid, 'RGI3_WATER;%f\n',indicesMap('RGI3_WATER'));
        fprintf(fid, 'NDWGI1_WATER;%f\n',indicesMap('NDWGI1_WATER'));
        fprintf(fid, 'NDWGI2_WATER;%f\n',indicesMap('NDWGI2_WATER'));
        fprintf(fid, 'NMDGI_WATER;%f\n',indicesMap('NMDGI_WATER'));
        fprintf(fid, 'MSGR_WATER;%f\n',indicesMap('MSGR_WATER'));
        fprintf(fid, 'TDGI_WATER;%f\n',indicesMap('TDGI_WATER'));
        fprintf(fid, 'WLHGI_WATER;%f\n',indicesMap('WLHGI_WATER'));
        fprintf(fid, 'DWI_WATER;%f\n',indicesMap('DWI_WATER'));
        fprintf(fid, 'MSI_WATER;%f\n',indicesMap('MSI_WATER'));
        fprintf(fid, 'NDWI_1_WATER;%f\n',indicesMap('NDWI_1_WATER'));
        fprintf(fid, 'SinNombreRatio_WATER;%f\n',indicesMap('SinNombreRatio_WATER'));
        fprintf(fid, 'SRWI_WATER;%f\n',indicesMap('SRWI_WATER'));
        fprintf(fid, 'WI_1_WATER;%f\n',indicesMap('WI_1_WATER'));
        fprintf(fid, 'NDSI1_WATER;%f\n',indicesMap('NDSI1_WATER'));
        fprintf(fid, 'NDSI2_WATER;%f\n',indicesMap('NDSI2_WATER'));
        fprintf(fid, 'NDSI3_WATER;%f\n',indicesMap('NDSI3_WATER'));
        fprintf(fid, 'RSI1_WATER;%f\n',indicesMap('RSI1_WATER'));
        fprintf(fid, 'RSI2_WATER;%f\n',indicesMap('RSI2_WATER'));
        fprintf(fid, 'PRI_1_WATER;%f\n',indicesMap('PRI_1_WATER'));
        fprintf(fid, 'PRI_2_WATER;%f\n',indicesMap('PRI_2_WATER'));
        fprintf(fid, 'mNDVI_WATER;%f\n',indicesMap('mNDVI_WATER'));
        fprintf(fid, 'SIPI_WATER;%f\n',indicesMap('SIPI_WATER'));
        fprintf(fid, 'NDVI_2_WATER;%f\n',indicesMap('NDVI_2_WATER'));
        fprintf(fid, 'NDII_WATER;%f\n',indicesMap('NDII_WATER'));
        fprintf(fid, 'WABI_1_WATER;%f\n',indicesMap('WABI_1_WATER'));
        fprintf(fid, 'WABI_2_WATER;%f\n',indicesMap('WABI_2_WATER'));
        fprintf(fid, 'WABI_3_WATER;%f\n',indicesMap('WABI_3_WATER'));
        fprintf(fid, 'GNDVI_WATER;%f\n',indicesMap('GNDVI_WATER'));
        fprintf(fid, 'NDGI_WATER;%f\n',indicesMap('NDGI_WATER'));
        fprintf(fid, 'NDWI_2_WATER;%f\n',indicesMap('NDWI_2_WATER'));
        fprintf(fid, 'SRWI_2_WATER;%f\n',indicesMap('SRWI_2_WATER'));
        fprintf(fid, 'GI_WATER;%f\n',indicesMap('GI_WATER'));
        fprintf(fid, 'WI_2_WATER;%f\n',indicesMap('WI_2_WATER'));
        fprintf(fid, 'MSI_2_WATER;%f\n',indicesMap('MSI_2_WATER'));
        fprintf(fid, 'WCRI_WATER;%f\n',indicesMap('WCRI_WATER'));
        fprintf(fid, 'RGI_WATER;%f\n',indicesMap('RGI_WATER'));
        fprintf(fid, 'SRWI_3_WATER;%f\n',indicesMap('SRWI_3_WATER'));
        fprintf(fid, 'NDVI_3_WATER;%f\n',indicesMap('NDVI_3_WATER'));
        fprintf(fid, 'NDWI_3_WATER;%f\n',indicesMap('NDWI_3_WATER'));
        fprintf(fid, 'SIWSI_WATER;%f\n',indicesMap('SIWSI_WATER'));
        fprintf(fid, 'NDII_2_WATER;%f\n',indicesMap('NDII_2_WATER'));
        fprintf(fid, 'ZTM_WATER;%f\n',indicesMap('ZTM_WATER'));
        fprintf(fid, 'PRI_3_WATER;%f\n',indicesMap('PRI_3_WATER'));
        fprintf(fid, 'WABI_4_WATER;%f\n',indicesMap('WABI_4_WATER'));
        fprintf(fid, 'BRI_2_WATER;%f\n',indicesMap('BRI_2_WATER'));
        fprintf(fid, 'NGRR_1_WATER;%f\n',indicesMap('NGRR_1_WATER'));
        fprintf(fid, 'NGRR_2_WATER;%f\n',indicesMap('NGRR_2_WATER'));
        fprintf(fid, 'SR1_WATER;%f\n',indicesMap('SR1_WATER'));
        fprintf(fid, 'SR2_WATER;%f\n',indicesMap('SR2_WATER'));
        fprintf(fid, 'SR3_WATER;%f\n',indicesMap('SR3_WATER'));
        fprintf(fid, 'SR4_WATER;%f\n',indicesMap('SR4_WATER'));
        fprintf(fid, 'RBI_WATER;%f\n',indicesMap('RBI_WATER'));
        fprintf(fid, 'MSI_3_WATER;%f\n',indicesMap('MSI_3_WATER'));
        fprintf(fid, 'NDVI_4_WATER;%f\n',indicesMap('NDVI_4_WATER'));
        fprintf(fid, 'NDVI_5_WATER;%f\n',indicesMap('NDVI_5_WATER'));
        fprintf(fid, 'NDVI_6_WATER;%f\n',indicesMap('NDVI_6_WATER'));
        fprintf(fid, 'SRWI_4_WATER;%f\n',indicesMap('SRWI_4_WATER'));
        fprintf(fid, 'SRWI_5_WATER;%f\n',indicesMap('SRWI_5_WATER'));
        fprintf(fid, 'SRWI_6_WATER;%f\n',indicesMap('SRWI_6_WATER'));
        fprintf(fid, 'MTVI_WATER;%f\n',indicesMap('MTVI_WATER'));
        fprintf(fid, 'TVI1_WATER;%f\n',indicesMap('TVI1_WATER'));
        fprintf(fid, 'Crt_WATER;%f\n',indicesMap('Crt_WATER'));
        fprintf(fid, 'CITRA;%f\n',indicesMap('CITRA'));
        fprintf(fid, 'PRI_NORM;%f\n',indicesMap('PRI_NORM'));
        fclose(fid);
end