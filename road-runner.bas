0 REM ROAD RUNNER BY PHILIP OLIVER
1 CLS:PRINT"+*+*+*+*+* ROAD RUNNER +*+*+*+*+        BY PHILIP OLIVER"
2 REM FOR THE DRAGON 32
3 REM TYPE THEN FOLLOWING FOR GREATER SPEED:-POKE"65495,0"
4 REM MAIN PROGRAM LOOP 7-9
5 GOSUB 13:REM SETTING VARIABLES
6 GOSUB 39:REM "V" SHAPE TO STOP CARS ESCAPING
7 FOR M=1TO9999999999:GOSUB 23
8 GOSUB 19
9 NEXT M
10 GOSUB 33
11 GOSUB 31
12 GOTO5
13 SC=0:BE=1:J1=12:D=18:R=6:A$=CHR$(143+32):REM SC=SCORE:BE=BEAT HI. SCORE:J1=POSITION OF NEAR SIDE ROAD:D=DANGER! WIDTH OF ROAD:R=STARTING POSITION FOR ROAD:A$=SIDES OF ROAD
14 INPUT "HOW MANY LIVES WOULD YOU LIKE (1-9)";LE
15 IF LE>9 OR LE<1 OR LE<>INT(LE) THEN 14
16 FOR Z=0TO LE:XS=C(Z):NEXT Z:REM SET HI. SCORE
17 S=LE:PLAY"T42;ABCDBCDECDEFDEFG"
18 RETURN
19 J=JOYSTK(0)/32:J1=J1+J-1:IF J1>31 THEN J1=31 ELSE IF J1<0 THEN J1=0
20 IF POINT((J1)*2,4)=8 OR POINT((J1)*2,4)=3 THEN SOUND 200,2:S=S-1:IF S=0 THEN 10 ELSE 6
21 POKE1088+J1,47+S
22 RETURN
23 RN=RND(3)-2:R=R+RN:IF R<1 THEN R=1 ELSE IF R>D1 THEN R=D1
24 PRINT@R+480,A$;A$;:REM NEAR SIDE OF ROAD
25 PRINT@(RND(D))+480+R,CHR$(143+112);:REM PRINTS RANDOM CARS AT BASE OF SCREEN
26 PRINT@R+D+479,A$;A$:REM FAR SIDE OF ROAD
27 SC=SC+10:IF INT(SC/1000)=SC/1000 THEN D=D-1:IF (INT(SC/10000))=SC/10000 THEN PLAY"T42;ABCBCDCDEDEFEFG":S=S+1:REM FREE LIFE AT 1000
28 PRINT@0,SC
29 IF SC>XS THEN IF BE =1 THEN PLAY"T42;ABCDEFGFEDCBA":BE=0:REM FOR BEATING HI. SCORE
30 RETURN
31 PRINT:PRINT:INPUT"WOULD YOU LIKE ANOTHER GAME";G$
31 IF G$="N" OR G$="NO" OR G$="NO THANKS" THEN END ELSE RETURN
33 PRINT"TOUGH LUCK! YOU'RE DEAD"
34 PRINT"+*+*+*+* HIGH SCORE *+*+*+*+*+*"
35 FOR Z=1TO9
36 IF LE=Z THEN IF SC>C(Z) THEN C(Z)=SC::REM UP DATING HI. SCORE
37 PRINT"LEVEL";Z;"= ";C(Z):NEXTZ
38 RETURN
39 IF D<8 THEN D=8
40 CLS:J1=D1+0.5*D:FOR ST=1TO 15
41 IF ST<=R THEN V=ST ELSE V=R
42 PRINT@V+480,A$;A$;
43 IF -ST+30 >V+D THEN V1=30-ST ELSE V1=V+D
44 PRINT@V1+478,A$;A$
45 IF ST>45 THEN GOSUB 19
46 NEXT ST
47 RETURN
48 'RENUM
49 '200B$=INKEY$:IFB$=CHR$(9) THEN J1=J1+1:IF J1>31 THEN J1=31
50 '202IF B$=CHR$(8) THEN J1=J1-1:IF J1<0 THEN J1=0