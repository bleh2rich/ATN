-- ATN Premium V2

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v81=v2(v0(v30,16));if v19 then local v90=0;local v91;while true do if (v90==1) then return v91;end if (v90==0) then v91=v5(v81,v19);v19=nil;v90=1;end end else return v81;end end end);local function v20(v31,v32,v33) if v33 then local v82=(v31/(2^(v32-(2 -1))))%((5 -(1 + 2))^(((v33-(1 -(877 -(282 + 595)))) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v82-(v82%(932 -(857 + 74))) ;else local v83=(570 -(367 + 201))^(v32-(928 -(214 + 713))) ;return (((v31%(v83 + v83))>=v83) and 1) or (0 + 0) ;end end local function v21() local v34=1637 -(1523 + 114) ;local v35;while true do if (v34==((4 -3) + 0)) then return v35;end if (v34==(0 -0)) then v35=v1(v16,v18,v18);v18=v18 + (1066 -(68 + 997)) ;v34=1271 -(226 + 1044) ;end end end local function v22() local v36,v37=v1(v16,v18,v18 + (119 -(32 + 85)) );v18=v18 + 2 + 0 ;return (v37 * (57 + 199)) + v36 ;end local function v23() local v38=957 -(892 + 48 + 17) ;local v39;local v40;local v41;local v42;while true do if (v38==(0 -0)) then v39,v40,v41,v42=v1(v16,v18,v18 + (7 -4) );v18=v18 + 3 + 1 ;v38=1 -0 ;end if (v38==(1 -0)) then return (v42 * 16777216) + (v41 * (65886 -(87 + 263))) + (v40 * (436 -(67 + 113))) + v39 ;end end end local function v24() local v43=v23();local v44=v23();local v45=3 -2 ;local v46=(v20(v44,1,972 -(802 + 150) ) * ((5 -3)^32)) + v43 ;local v47=v20(v44,(55 -(10 + 8)) -16 ,23 + 8 );local v48=((v20(v44,32)==((3838 -2840) -(915 + 82))) and  -(2 -1)) or (1 + 0) ;if (v47==(0 -0)) then if (v46==0) then return v48 * (1187 -(1069 + 118)) ;else v47=2 -1 ;v45=0 -0 ;end elseif (v47==(2489 -(416 + 26))) then return ((v46==((0 -0) + 0)) and (v48 * (1/((0 + 0) -0)))) or (v48 * NaN) ;end return v8(v48,v47-(1015 + 8) ) * (v45 + (v46/((793 -((650 -282) + 423))^(163 -111)))) ;end local function v25(v49) local v50;if  not v49 then v49=v23();if (v49==0) then return "";end end v50=v3(v16,v18,(v18 + v49) -(439 -(145 + 293)) );v18=v18 + v49 ;local v51={};for v65=431 -(44 + 386) , #v50 do v51[v65]=v2(v1(v3(v50,v65,v65)));end return v6(v51);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=(function() return 0 + 0 ;end)();local v53=(function() return;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();while true do if (v52== #"!") then local v87=(function() return 0 + 0 ;end)();while true do if ((0 -0)==v87) then v57=(function() return v23();end)();v58=(function() return {};end)();v87=(function() return 1 + 0 ;end)();end if (v87~=1) then else for v103= #"]",v57 do local v104=(function() return 1500 -(1408 + 92) ;end)();local v105=(function() return;end)();local v106=(function() return;end)();local v107=(function() return;end)();while true do if ((1086 -(461 + 625))==v104) then local v110=(function() return 0;end)();local v111=(function() return;end)();while true do if (v110==(0 -0)) then v111=(function() return 0;end)();while true do if (v111==(0 + 0)) then v105=(function() return 1171 -(418 + 753) ;end)();v106=(function() return nil;end)();v111=(function() return 1 + 0 ;end)();end if (v111==1) then v104=(function() return 2 -1 ;end)();break;end end break;end end end if (v104~=(286 -(134 + 151))) then else v107=(function() return nil;end)();while true do if (v105~=0) then else local v150=(function() return 0 + 0 ;end)();local v151=(function() return;end)();while true do if (v150==(0 + 0)) then v151=(function() return 1665 -(970 + 695) ;end)();while true do if (v151==0) then v106=(function() return v21();end)();v107=(function() return nil;end)();v151=(function() return 1;end)();end if (v151~=1) then else v105=(function() return  #"[";end)();break;end end break;end end end if (v105~= #">") then else if (v106== #"[") then v107=(function() return v21()~=(0 -0) ;end)();elseif (v106==(1771 -(1749 + 20))) then v107=(function() return v24();end)();elseif (v106== #"xxx") then v107=(function() return v25();end)();end v58[v103]=(function() return v107;end)();break;end end break;end end end v56[ #"gha"]=(function() return v21();end)();v87=(function() return 2;end)();end if (v87==(1 + 1)) then v52=(function() return 1992 -(582 + 1408) ;end)();break;end end end if (v52~=(1 + 1)) then else for v92= #"!",v23() do local v93=(function() return 0 -0 ;end)();local v94=(function() return;end)();local v95=(function() return;end)();while true do if (v93==1) then while true do if (v94==(0 -0)) then v95=(function() return v21();end)();if (v20(v95, #" ", #"!")==(0 -0)) then local v145=(function() return 0;end)();local v146=(function() return;end)();local v147=(function() return;end)();local v148=(function() return;end)();local v149=(function() return;end)();while true do if (v145~=(1824 -(1195 + 629))) then else local v167=(function() return 0;end)();local v168=(function() return;end)();while true do if (v167==(0 -0)) then v168=(function() return 0;end)();while true do if (v168~=(242 -(187 + 54))) then else v145=(function() return 1;end)();break;end if (v168==(780 -(162 + 618))) then v146=(function() return 1900 -(106 + 1794) ;end)();v147=(function() return nil;end)();v168=(function() return 1 + 0 ;end)();end end break;end end end if ((1 + 0)==v145) then local v169=(function() return 0 + 0 ;end)();while true do if (v169==(0 -0)) then v148=(function() return nil;end)();v149=(function() return nil;end)();v169=(function() return 1 -0 ;end)();end if (v169==(115 -(4 + 110))) then v145=(function() return 1 + 1 ;end)();break;end end end if (v145~=(1638 -(1373 + 263))) then else while true do if (v146~= #"!") then else local v172=(function() return 0;end)();local v173=(function() return;end)();while true do if ((1427 -(41 + 1386))==v172) then v173=(function() return 1000 -(451 + 549) ;end)();while true do if (v173~=1) then else v146=(function() return 105 -(17 + 86) ;end)();break;end if (v173==(0 + 0)) then v149=(function() return {v22(),v22(),nil,nil};end)();if (v147==0) then local v180=(function() return 0 -0 ;end)();while true do if (v180==(0 -0)) then v149[ #"-19"]=(function() return v22();end)();v149[ #"xnxx"]=(function() return v22();end)();break;end end elseif (v147== #"]") then v149[ #"91("]=(function() return v23();end)();elseif (v147==(5 -3)) then v149[ #"xxx"]=(function() return v23() -((1386 -(746 + 638))^(7 + 9)) ;end)();elseif (v147~= #"91(") then else local v187=(function() return 0 -0 ;end)();local v188=(function() return;end)();while true do if (v187==(341 -(218 + 123))) then v188=(function() return 0;end)();while true do if (v188~=(1581 -(1535 + 46))) then else v149[ #"xnx"]=(function() return v23() -(2^(16 + 0)) ;end)();v149[ #".dev"]=(function() return v22();end)();break;end end break;end end end v173=(function() return 1 + 0 ;end)();end end break;end end end if (v146==(560 -(306 + 254))) then local v174=(function() return 0 -0 ;end)();local v175=(function() return;end)();while true do if (v174==(65 -(30 + 35))) then v175=(function() return 0 + 0 ;end)();while true do if (v175==(1258 -(1043 + 214))) then v146=(function() return  #"\\";end)();break;end if (v175==(0 + 0)) then v147=(function() return v20(v95,7 -5 , #"-19");end)();v148=(function() return v20(v95, #"0836",11 -5 );end)();v175=(function() return 1468 -(899 + 568) ;end)();end end break;end end end if (v146== #"asd") then if (v20(v148, #"19(", #"asd")~= #",") then else v149[ #"0313"]=(function() return v58[v149[ #"asd1"]];end)();end v53[v92]=(function() return v149;end)();break;end if (v146==(2 + 0)) then local v177=(function() return 0 -0 ;end)();local v178=(function() return;end)();while true do if (v177==(320 -(53 + 267))) then v178=(function() return 603 -(268 + 335) ;end)();while true do if (v178~=(290 -(60 + 230))) then else if (v20(v148, #"!", #"[")== #"\\") then v149[574 -(426 + 146) ]=(function() return v58[v149[984 -(18 + 964) ]];end)();end if (v20(v148,7 -5 ,1 + 1 )== #",") then v149[ #"-19"]=(function() return v58[v149[ #"xnx"]];end)();end v178=(function() return 1;end)();end if (1==v178) then v146=(function() return  #"91(";end)();break;end end break;end end end end break;end end end break;end end break;end if (v93~=0) then else local v108=(function() return 0 + 0 ;end)();local v109=(function() return;end)();while true do if (v108==(1456 -(282 + 1174))) then v109=(function() return 811 -(569 + 242) ;end)();while true do if (v109~=(2 -1)) then else v93=(function() return 1;end)();break;end if (v109~=(0 + 0)) then else v94=(function() return 0 + 0 ;end)();v95=(function() return nil;end)();v109=(function() return 1;end)();end end break;end end end end end for v96= #"!",v23() do v54[v96-#"," ]=(function() return v28();end)();end return v56;end if (v52==(1024 -(706 + 318))) then local v88=(function() return 1251 -(721 + 530) ;end)();local v89=(function() return;end)();while true do if (v88==0) then v89=(function() return 0;end)();while true do if (v89==2) then v52=(function() return  #".";end)();break;end if (v89==(1272 -(945 + 326))) then v55=(function() return {};end)();v56=(function() return {v53,v54,nil,v55};end)();v89=(function() return 1 + 1 ;end)();end if ((738 -(542 + 196))~=v89) then else v53=(function() return {};end)();v54=(function() return {};end)();v89=(function() return 2 -1 ;end)();end end break;end end end end end local function v29(v59,v60,v61) local v62=v59[1 -0 ];local v63=v59[2];local v64=v59[(477 -(41 + 435)) + 2 ];return function(...) local v67=v62;local v68=v63;local v69=v64;local v70=v27;local v71=1 + 0 ;local v72= -(1 + 0);local v73={};local v74={...};local v75=v12("#",...) -(2 -1) ;local v76={};local v77={};for v84=(2676 -(936 + 189)) -(1126 + 140 + 285) ,v75 do if (v84>=v69) then v73[v84-v69 ]=v74[v84 + 1 ];else v77[v84]=v74[v84 + (406 -(118 + 287)) ];end end local v78=(v75-v69) + (3 -2) ;local v79;local v80;while true do v79=v67[v71];v80=v79[1122 -(118 + 1003) ];if ((1881>=1293) and (v80<=((1633 -(1565 + 48)) -13))) then if ((2357==2357) and (v80<=(380 -(142 + 235)))) then if (v80<=(4 -3)) then if (v80==0) then v77[v79[1 + 1 ]]();else local v112=977 -(553 + 424) ;local v113;while true do if (v112==(0 -0)) then v113=v79[2 + 0 ];v77[v113]=v77[v113](v13(v77,v113 + 1 ,v72));break;end end end elseif ((123==123) and (v80>2)) then local v114=v79[2 + 0 ];local v115,v116=v70(v77[v114](v13(v77,v114 + 1 ,v79[2 + 1 ])));v72=(v116 + v114) -(1 + 0) ;local v117=0 + 0 ;for v143=v114,v72 do local v144=0 -0 ;while true do if (v144==0) then v117=v117 + (2 -1) ;v77[v143]=v115[v117];break;end end end else local v118=0;local v119;local v120;while true do if ((v118==(0 -0)) or (1056>=3392)) then v119=v79[1 + 1 + 0 ];v120=v77[v79[14 -11 ]];v118=754 -((1377 -(782 + 356)) + 514) ;end if (v118==(1 + 0)) then v77[v119 + (1330 -(797 + 532)) ]=v120;v77[v119]=v120[v79[3 + 1 ]];break;end end end elseif ((v80<=(2 + 3)) or (1081<1075)) then if (v80==(9 -5)) then do return;end else v77[v79[2]]();end elseif ((v80>6) or (1049>=4432)) then v77[v79[2]]=v61[v79[(1472 -(176 + 91)) -(373 + 829) ]];else local v123=0;local v124;local v125;local v126;local v127;while true do if (v123==(732 -((1239 -763) + 255))) then v72=(v126 + v124) -(1131 -((543 -174) + 761)) ;v127=0 + 0 ;v123=2;end if (((0 -0)==v123) or (4768<=846)) then v124=v79[3 -1 ];v125,v126=v70(v77[v124](v13(v77,v124 + ((1331 -(975 + 117)) -(64 + 174)) ,v79[3])));v123=1 + 0 ;end if ((v123==(2 -0)) or (3358<=1420)) then for v165=v124,v72 do local v166=336 -(144 + 192) ;while true do if (v166==0) then v127=v127 + (217 -(42 + 174)) ;v77[v165]=v125[v127];break;end end end break;end end end elseif ((v80<=(1886 -(157 + 1718))) or (3739<=3005)) then if (v80<=9) then if ((v80>(7 + 1)) or (1659>=2134)) then v77[v79[2 + 0 ]]=v79[2 + 0 + 1 ];else do return;end end elseif ((v80>(1514 -(363 + 1141))) or (3260<2355)) then local v130=v79[1582 -((4199 -3016) + 397) ];local v131=v77[v79[3]];v77[v130 + (2 -1) ]=v131;v77[v130]=v131[v79[3 + 1 ]];else local v135=0;local v136;while true do if ((v135==(0 + 0)) or (669==4223)) then v136=v79[(6758 -4781) -(1913 + 62) ];v77[v136]=v77[v136](v13(v77,v136 + 1 + 0 ,v72));break;end end end elseif ((v80<=(34 -21)) or (1692<588)) then if (v80==12) then v77[v79[1935 -(565 + 1368) ]]=v79[3]~=(1018 -(697 + 321)) ;else v77[v79[(18 -11) -5 ]]=v79[1664 -(1477 + 184) ];end elseif (v80>(18 -(8 -4))) then v77[v79[2 + 0 ]]=v61[v79[859 -(564 + 292) ]];else v77[v79[2 -0 ]]=v79[(18 -10) -(2 + 3) ]~=((569 -265) -(244 + (160 -100))) ;end v71=v71 + 1 + 0 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574038A3Q00682Q7470733A2Q2F676973742E67697468756275736572636F6E74656E742E636F6D2F626C2Q654Q682F32336438326231663631326437366231366663643532346233666165386333622F7261772F6465353435383764383337316132616236313237323034313Q33633339613734326139313064652F41544E5072656D69756D56322E6C756100093Q00120F3Q00013Q00120F000100023Q00200B00010001000300120D000300044Q000E000400014Q0003000100044Q000A5Q00022Q00053Q000100012Q00043Q00017Q00",v9(),...);
