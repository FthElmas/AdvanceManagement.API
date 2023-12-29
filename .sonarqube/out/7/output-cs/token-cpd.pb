õ
~C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IAdvanceBusiness\IAdvanceBusiness.cs
	namespace

 	
AdvanceManagement


 
.

 
API

 
.

  
Business

  (
.

( )
Abstract

) 1
.

1 2
IAdvanceBusiness

2 B
{ 
public 

	interface 
IAdvanceBusiness %
{ 
Task 
< 
List 
< 
AdvanceSelectDTO "
>" #
># $
GetAll% +
(+ ,
), -
;- .
Task 
< 
List 
< 
AdvanceSelectDTO "
>" #
># $
GetWorkerAdvance% 5
(5 6
int6 9
workerID: B
)B C
;C D
Task 
< 
bool 
>  
AddAdvanceWithStatus '
(' (
AdvanceAddDTO( 5
advance6 =
)= >
;> ?
Task 
< 
List 
< 
AdvanceSelectDTO "
>" #
># $%
BringAllAdvanceForFinance% >
(> ?
)? @
;@ A
Task 
< 
AdvanceSelectDTO 
> 
GetAdvanceByID -
(- .
int. 1
	advanceID2 ;
); <
;< =
Task 
< 
IEnumerable 
< 
AdvanceSelectDTO )
>) *
>* +(
BringAllAdvanceForAccountant, H
(H I
)I J
;J K
Task 
< 
AdvanceSelectDTO 
> 
FindAdvance *
(* +
int+ .
workerID/ 7
,7 8
int9 <
	projectID= F
)F G
;G H
} 
} ”
òC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IAdvanceRequestStatusBusiness\IAdvanceRequestStatusBusiness.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
Business		  (
.		( )
Abstract		) 1
.		1 2)
IAdvanceRequestStatusBusiness		2 O
{

 
public 

	interface )
IAdvanceRequestStatusBusiness 2
{ 
Task 
< 
List 
< )
AdvanceRequestStatusSelectDTO /
>/ 0
>0 1
GetWorkerAdvance2 B
(B C
intC F
	advanceIDG P
)P Q
;Q R
Task 
< 
List 
< )
AdvanceRequestStatusSelectDTO /
>/ 0
>0 1
GetRequestWithTitle2 E
(E F
intF I
titleIDJ Q
)Q R
;R S
Task 
< 
List 
< )
AdvanceRequestStatusSelectDTO /
>/ 0
>0 1$
GetRequestForUnitManager2 J
(J K
intK N
titleIDO V
)V W
;W X
Task 
< 
bool 
>  
UpdateAdvanceRequest '
(' ()
AdvanceRequestStatusUpdateDTO( E
advanceF M
)M N
;N O
} 
} Æ
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IFinanceManagerBusiness\IFinanceManagerBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Abstract) 1
.1 2#
IFinanceManagerBusiness2 I
{		 
public

 

	interface

 #
IFinanceManagerBusiness

 ,
{ 
Task 
< 
bool 
> 
AddFinanceManager $
($ % 
FinanceManagerAddDTO% 9
finance: A
)A B
;B C
} 
} Æ
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IPaymentReceiptBusiness\IPaymentReceiptBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Abstract) 1
.1 2#
IPaymentReceiptBusiness2 I
{		 
public

 

	interface

 #
IPaymentReceiptBusiness

 ,
{ 
Task 
< 
bool 
> 
AddPaymentReceipt $
($ % 
PaymentReceiptAddDTO% 9
receipt: A
)A B
;B C
} 
} ¡
~C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IProjectBusiness\IProjectBusiness.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
Business		  (
.		( )
Abstract		) 1
.		1 2
IProjectBusiness		2 B
{

 
public 

	interface 
IProjectBusiness %
{ 
Task 
< 
List 
< 
ProjectSelectDTO "
>" #
># $!
GetAllProjectOfWorker% :
(: ;
int; >
workerID? G
)G H
;H I
} 
} Â
ñC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\ITitleAmountApprovalRule\ITitleAmountApprovalRuleBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Abstract) 1
.1 2$
ITitleAmountApprovalRule2 J
{		 
public

 

	interface

 ,
 ITitleAmountApprovalRuleBusiness

 5
{ 
Task 
< 
IEnumerable 
< ,
 TitleAmountApprovalRuleSelectDTO 9
>9 :
>: ;$
GetRuleAccordingToAmount< T
(T U
)U V
;V W
} 
} ‘	
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IUserBusiness\IUserBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Abstract) 1
.1 2
IUserBusiness2 ?
{ 
public 

	interface 
IUserBusiness "
{ 
Task 
< 
bool 
> 
AddUser 
( 

UserAddDTO %
user& *
,* +
WorkerAddDTO, 8
worker9 ?
,? @
stringA G
passwordH P
)P Q
;Q R
Task 
< 
UserDTO 
> 
Login 
( 
string "
username# +
,+ ,
string- 3
password4 <
)< =
;= >
Task 
< 
List 
< &
PageAuthorizationSelectDTO ,
>, -
>- .'
GetAllAuthorizationOfPerson/ J
(J K
stringK Q
usernameR Z
)Z [
;[ \
} 
} ¬
|C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Abstract\IWorkerBusiness\IWorkerBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Abstract) 1
.1 2
	IWorkerBL2 ;
{ 
public		 

	interface		 
IWorkerBusiness		 $
{

 
} 
} ëT
|C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\AdvanceBusiness\AdvanceBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2
AdvanceBusiness2 A
{ 
public 

class 
AdvanceBusiness  
(  !
IAdvanceDataAccess! 3
dal4 7
)7 8
:9 :
IAdvanceBusiness; K
{ 
ValidateAdvance 
validateAdvance '
;' (
public 
async 
Task 
< 
List 
< 
AdvanceSelectDTO /
>/ 0
>0 1
GetWorkerAdvance2 B
(B C
intC F
workerIDG O
)O P
{ 	
try 
{ 
if 
( 
workerID 
!= 
$num  
)  !
{ 
var   
data   
=   
await   $
dal  % (
.  ( )
GetWorkerAdvance  ) 9
(  9 :
workerID  : B
)  B C
;  C D
MyMapper!! 
<!! 
Advance!! $
,!!$ %
AdvanceSelectDTO!!& 6
>!!6 7
mapper!!8 >
=!!? @
new!!A D
MyMapper!!E M
<!!M N
Advance!!N U
,!!U V
AdvanceSelectDTO!!W g
>!!g h
(!!h i
)!!i j
;!!j k
var"" 
listData""  
=""! "
data""# '
.""' (
ToList""( .
("". /
)""/ 0
;""0 1
return## 
mapper## !
.##! "
MapList##" )
(##) *
listData##* 2
)##2 3
;##3 4
}$$ 
else%% 
throw&& 
new&& "
AdvanceSelectException&& 4
(&&4 5
$str&&5 D
)&&D E
;&&E F
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
throw** 
new** "
AdvanceSelectException** 0
(**0 1
$str**1 T
,**T U
ex**V X
)**X Y
;**Y Z
}++ 
},, 	
public.. 
async.. 
Task.. 
<.. 
List.. 
<.. 
AdvanceSelectDTO.. /
>../ 0
>..0 1
GetAll..2 8
(..8 9
)..9 :
{// 	
try00 
{11 
var33 
data33 
=33 
await33  
dal33! $
.33$ %
GetAll33% +
(33+ ,
)33, -
;33- .
MyMapper44 
<44 
Advance44  
,44  !
AdvanceSelectDTO44" 2
>442 3
mapper444 :
=44; <
new44= @
MyMapper44A I
<44I J
Advance44J Q
,44Q R
AdvanceSelectDTO44S c
>44c d
(44d e
)44e f
;44f g
var55 
listData55 
=55 
data55 #
.55# $
ToList55$ *
(55* +
)55+ ,
;55, -
return66 
mapper66 
.66 
MapList66 %
(66% &
listData66& .
)66. /
;66/ 0
}77 
catch88 
(88 
	Exception88 
ex88 
)88 
{99 
throw:: 
new:: "
AdvanceSelectException:: 0
(::0 1
$str::1 T
,::U V
ex::W Y
)::Y Z
;::Z [
};; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
bool>> 
>>>  
AddAdvanceWithStatus>>  4
(>>4 5
AdvanceAddDTO>>5 B
advance>>C J
)>>J K
{?? 	
MyMapper@@ 
<@@ 
AdvanceAddDTO@@ "
,@@" #
Advance@@$ +
>@@+ ,
mapper@@- 3
=@@4 5
new@@6 9
MyMapper@@: B
<@@B C
AdvanceAddDTO@@C P
,@@P Q
Advance@@R Y
>@@Y Z
(@@Z [
)@@[ \
;@@\ ]
varAA 
dataAA 
=AA 
mapperAA 
.AA 
MapAA !
(AA! "
advanceAA" )
)AA) *
;AA* +
validateAdvanceBB 
=BB 
newBB !
ValidateAdvanceBB" 1
(BB1 2
)BB2 3
;BB3 4
ValidationResultCC 
resultCC #
=CC$ %
validateAdvanceCC& 5
.CC5 6
ValidateCC6 >
(CC> ?
dataCC? C
)CCC D
;CCD E
ifEE 
(EE 
resultEE 
.EE 
IsValidEE 
)EE 
{FF 
awaitGG 
dalGG 
.GG  
AddAdvanceWithStatusGG .
(GG. /
dataGG/ 3
)GG3 4
;GG4 5
returnHH 
trueHH 
;HH 
}II 
elseJJ 
{KK 
throwLL 
newLL 
AdvanceAddExceptionLL -
(LL- .
$strLL. Y
)LLY Z
;LLZ [
}MM 
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
ListPP 
<PP 
AdvanceSelectDTOPP /
>PP/ 0
>PP0 1%
BringAllAdvanceForFinancePP2 K
(PPK L
)PPL M
{QQ 	
tryRR 
{SS 
varUU 
dataUU 
=UU 
awaitUU  
dalUU! $
.UU$ %%
BringAllAdvanceForFinanceUU% >
(UU> ?
)UU? @
;UU@ A
MyMapperVV 
<VV 
AdvanceVV  
,VV  !
AdvanceSelectDTOVV" 2
>VV2 3
mapperVV4 :
=VV; <
newVV= @
MyMapperVVA I
<VVI J
AdvanceVVJ Q
,VVQ R
AdvanceSelectDTOVVS c
>VVc d
(VVd e
)VVe f
;VVf g
varWW 
listDataWW 
=WW 
dataWW #
.WW# $
ToListWW$ *
(WW* +
)WW+ ,
;WW, -
returnXX 
mapperXX 
.XX 
MapListXX %
(XX% &
listDataXX& .
)XX. /
;XX/ 0
}YY 
catchZZ 
(ZZ 
	ExceptionZZ 
exZZ 
)ZZ  
{[[ 
throw\\ 
new\\ "
AdvanceSelectException\\ 0
(\\0 1
$str\\1 T
,\\T U
ex\\V X
)\\X Y
;\\Y Z
}]] 
}^^ 	
public`` 
async`` 
Task`` 
<`` 
AdvanceSelectDTO`` *
>``* +
GetAdvanceByID``, :
(``: ;
int``; >
	advanceID``? H
)``H I
{aa 	
trybb 
{cc 
vardd 
datadd 
=dd 
awaitdd  
daldd! $
.dd$ %
GetAdvanceByIDdd% 3
(dd3 4
	advanceIDdd4 =
)dd= >
;dd> ?
MyMapperee 
<ee 
Advanceee  
,ee  !
AdvanceSelectDTOee" 2
>ee2 3
mapperee4 :
=ee; <
newee= @
MyMappereeA I
<eeI J
AdvanceeeJ Q
,eeQ R
AdvanceSelectDTOeeS c
>eec d
(eed e
)eee f
;eef g
returnff 
mapperff 
.ff 

MapProfileff (
(ff( )
dataff) -
)ff- .
;ff. /
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
throwjj 
newjj "
AdvanceSelectExceptionjj 0
(jj0 1
$strjj1 T
,jjT U
exjjV X
)jjX Y
;jjY Z
}kk 
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
IEnumerablenn %
<nn% &
AdvanceSelectDTOnn& 6
>nn6 7
>nn7 8(
BringAllAdvanceForAccountantnn9 U
(nnU V
)nnV W
{oo 	
trypp 
{qq 
varrr 
datarr 
=rr 
awaitrr  
dalrr! $
.rr$ %(
BringAllAdvanceForAccountantrr% A
(rrA B
)rrB C
;rrC D
MyMapperss 
<ss 
Advancess  
,ss  !
AdvanceSelectDTOss" 2
>ss2 3
mapperss4 :
=ss; <
newss= @
MyMapperssA I
<ssI J
AdvancessJ Q
,ssQ R
AdvanceSelectDTOssS c
>ssc d
(ssd e
)sse f
;ssf g
returntt 
mappertt 
.tt 
MapListtt %
(tt% &
datatt& *
.tt* +
ToListtt+ 1
(tt1 2
)tt2 3
)tt3 4
;tt4 5
}uu 
catchvv 
(vv 
	Exceptionvv 
exvv 
)vv  
{ww 
throwxx 
newxx "
AdvanceSelectExceptionxx 0
(xx0 1
$strxx1 T
,xxT U
exxxV X
)xxX Y
;xxY Z
}yy 
}zz 	
public|| 
async|| 
Task|| 
<|| 
AdvanceSelectDTO|| *
>||* +
FindAdvance||, 7
(||7 8
int||8 ;
workerID||< D
,||D E
int||F I
	projectID||J S
)||S T
{}} 	
try~~ 
{ 
var
ÄÄ 
data
ÄÄ 
=
ÄÄ 
await
ÄÄ  
dal
ÄÄ! $
.
ÄÄ$ %
FindAdvance
ÄÄ% 0
(
ÄÄ0 1
workerID
ÄÄ1 9
,
ÄÄ9 :
	projectID
ÄÄ; D
)
ÄÄD E
;
ÄÄE F
MyMapper
ÅÅ 
<
ÅÅ 
Advance
ÅÅ  
,
ÅÅ  !
AdvanceSelectDTO
ÅÅ" 2
>
ÅÅ2 3
mapper
ÅÅ4 :
=
ÅÅ; <
new
ÅÅ= @
MyMapper
ÅÅA I
<
ÅÅI J
Advance
ÅÅJ Q
,
ÅÅQ R
AdvanceSelectDTO
ÅÅS c
>
ÅÅc d
(
ÅÅd e
)
ÅÅe f
;
ÅÅf g
return
ÇÇ 
mapper
ÇÇ 
.
ÇÇ 
Map
ÇÇ !
(
ÇÇ! "
data
ÇÇ" &
)
ÇÇ& '
;
ÇÇ' (
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
	Exception
ÑÑ 
ex
ÑÑ 
)
ÑÑ  
{
ÖÖ 
throw
ÜÜ 
new
ÜÜ $
AdvanceSelectException
ÜÜ 0
(
ÜÜ0 1
$str
ÜÜ1 T
,
ÜÜT U
ex
ÜÜV X
)
ÜÜX Y
;
ÜÜY Z
}
áá 
}
àà 	
}
ââ 
}ää “;
êC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\AdvanceRequestBusiness\AdvanceRequestStatusBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2"
AdvanceRequestBusiness2 H
{ 
public 

class (
AdvanceRequestStatusBusiness -
(- .+
IAdvanceRequestStatusDataAccess. M
dalN Q
,Q R(
ValidateAdvanceRequestStatusS o

validationp z
)z {
:| }*
IAdvanceRequestStatusBusiness	~ õ
{ 
public 
async 
Task 
< 
List 
< )
AdvanceRequestStatusSelectDTO <
>< =
>= >$
GetRequestForUnitManager? W
(W X
intX [
titleID\ c
)c d
{ 	
try 
{ 
var 
data 
= 
await  
dal! $
.$ %$
GetRequestForUnitManager% =
(= >
titleID> E
)E F
;F G
MyMapper 
<  
AdvanceRequestStatus -
,- .)
AdvanceRequestStatusSelectDTO/ L
>L M
mapperN T
=U V
newW Z
MyMapper[ c
<c d 
AdvanceRequestStatusd x
,x y*
AdvanceRequestStatusSelectDTO	z ó
>
ó ò
(
ò ô
)
ô ö
;
ö õ
var 
listData 
= 
data #
.# $
ToList$ *
(* +
)+ ,
;, -
if 
( 
data 
!= 
null  
)  !
{ 
return 
mapper !
.! "
MapList" )
() *
listData* 2
)2 3
;3 4
} 
return 
null 
; 
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!!  
{"" 
throw## 
new## /
#AdvanceRequestStatusSelectException## =
(##= >
$str##> o
,##o p
ex##q s
)##s t
;##t u
}$$ 
}%% 	
public(( 
async(( 
Task(( 
<(( 
bool(( 
>((  
UpdateAdvanceRequest((  4
(((4 5)
AdvanceRequestStatusUpdateDTO((5 R
advance((S Z
)((Z [
{)) 	
try** 
{++ 
MyMapper,, 
<,, )
AdvanceRequestStatusUpdateDTO,, 6
,,,6 7 
AdvanceRequestStatus,,8 L
>,,L M
mapper,,N T
=,,U V
new,,W Z
MyMapper,,[ c
<,,c d*
AdvanceRequestStatusUpdateDTO	,,d Å
,
,,Å Ç"
AdvanceRequestStatus
,,É ó
>
,,ó ò
(
,,ò ô
)
,,ô ö
;
,,ö õ
var-- 
data-- 
=-- 
mapper-- !
.--! "
Map--" %
(--% &
advance--& -
)--- .
;--. /
ValidationResult..  
result..! '
=..( )
await..* /

validation..0 :
...: ;
ValidateAsync..; H
(..H I
data..I M
)..M N
;..N O
if// 
(// 
result// 
.// 
IsValid// !
)//! "
{00 
return11 
await11  
dal11! $
.11$ %
Update11% +
(11+ ,
data11, 0
)110 1
;111 2
}22 
else33 
{44 
throw55 
new55 /
#AdvanceRequestStatusUpdateException55 A
(55A B
)55B C
;55C D
}66 
}77 
catch88 
{99 
throw:: 
new:: /
#AdvanceRequestStatusUpdateException:: =
(::= >
)::> ?
;::? @
};; 
}<< 	
public?? 
async?? 
Task?? 
<?? 
List?? 
<?? )
AdvanceRequestStatusSelectDTO?? <
>??< =
>??= >
GetRequestWithTitle??? R
(??R S
int??S V
titleID??W ^
)??^ _
{@@ 	
tryAA 
{BB 
varCC 
dataCC 
=CC 
awaitCC  
dalCC! $
.CC$ %
GetRequestWithTitleCC% 8
(CC8 9
titleIDCC9 @
)CC@ A
;CCA B
MyMapperDD 
<DD  
AdvanceRequestStatusDD -
,DD- .)
AdvanceRequestStatusSelectDTODD/ L
>DDL M
mapperDDN T
=DDU V
newDDW Z
MyMapperDD[ c
<DDc d 
AdvanceRequestStatusDDd x
,DDx y*
AdvanceRequestStatusSelectDTO	DDz ó
>
DDó ò
(
DDò ô
)
DDô ö
;
DDö õ
varEE 
listDataEE 
=EE 
dataEE #
.EE# $
ToListEE$ *
(EE* +
)EE+ ,
;EE, -
ifFF 
(FF 
dataFF 
!=FF 
nullFF  
)FF  !
{GG 
returnHH 
mapperHH !
.HH! "
MapListHH" )
(HH) *
listDataHH* 2
)HH2 3
;HH3 4
}II 
returnJJ 
nullJJ 
;JJ 
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
throwOO 
newOO /
#AdvanceRequestStatusSelectExceptionOO =
(OO= >
$strOO> o
,OOo p
exOOq s
)OOs t
;OOt u
}PP 
}QQ 	
publicSS 
asyncSS 
TaskSS 
<SS 
ListSS 
<SS )
AdvanceRequestStatusSelectDTOSS <
>SS< =
>SS= >
GetWorkerAdvanceSS? O
(SSO P
intSSP S
	advanceIDSST ]
)SS] ^
{TT 	
tryUU 
{VV 
varWW 
dataWW 
=WW 
awaitWW  
dalWW! $
.WW$ %
GetWorkerAdvanceWW% 5
(WW5 6
	advanceIDWW6 ?
)WW? @
;WW@ A
MyMapperXX 
<XX  
AdvanceRequestStatusXX -
,XX- .)
AdvanceRequestStatusSelectDTOXX/ L
>XXL M
mapperXXN T
=XXU V
newXXW Z
MyMapperXX[ c
<XXc d 
AdvanceRequestStatusXXd x
,XXx y*
AdvanceRequestStatusSelectDTO	XXz ó
>
XXó ò
(
XXò ô
)
XXô ö
;
XXö õ
varYY 
listDataYY 
=YY 
dataYY #
.YY# $
ToListYY$ *
(YY* +
)YY+ ,
;YY, -
ifZZ 
(ZZ 
dataZZ 
!=ZZ 
nullZZ  
)ZZ  !
{[[ 
return\\ 
mapper\\ !
.\\! "
MapList\\" )
(\\) *
listData\\* 2
)\\2 3
;\\3 4
}]] 
return^^ 
null^^ 
;^^ 
}`` 
catchaa 
(aa 
	Exceptionaa 
exaa 
)aa 
{bb 
throwcc 
newcc /
#AdvanceRequestStatusSelectExceptioncc =
(cc= >
$strcc> o
,cco p
exccq s
)ccs t
;cct u
}dd 
}ee 	
}ff 
}gg ÿ
nC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\Base\BaseBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2
Base2 6
{ 
public 

abstract 
class 
BaseBusiness &
<& '
TEntity' .
,. /
T0 1
,1 2
TBase3 8
>8 9
where: ?
T@ A
:B C
ValidationResultD T
whereU Z
TEntity[ b
:c d
classe j
wherek p
TBaseq v
:w x
AbstractValidator	y ä
<
ä ã
TEntity
ã í
>
í ì
{ 
} 
} æ
äC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\FinanceManagerBusiness\FinanceManagerBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2"
FinanceManagerBusiness2 H
{ 
public 

class "
FinanceManagerBusiness '
(' (%
IFinanceManagerDataAccess( A
dalB E
,E F"
ValidateFinanceManagerG ]

validation^ h
)h i
:j k$
IFinanceManagerBusiness	l É
{ 
public 
async 
Task 
< 
bool 
> 
AddFinanceManager  1
(1 2 
FinanceManagerAddDTO2 F
financeG N
)N O
{ 	
MyMapper 
<  
FinanceManagerAddDTO )
,) *
FinanceManager+ 9
>9 :
mapper; A
=B C
newD G
MyMapperH P
<P Q 
FinanceManagerAddDTOQ e
,e f
FinanceManagerg u
>u v
(v w
)w x
;x y
var 
data 
= 
mapper 
. 
Map !
(! "
finance" )
)) *
;* +
ValidationResult 
result #
=$ %

validation& 0
.0 1
Validate1 9
(9 :
data: >
)> ?
;? @
if 
( 
result 
. 
IsValid 
) 
{ 
return 
await 
dal  
.  !
Add! $
($ %
data% )
)) *
;* +
} 
else 
{ 
throw 
new &
FinanceManagerAddException 4
(4 5
)5 6
;6 7
}   
}!! 	
}"" 
}## ÷
äC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\PaymentReceiptBusiness\PaymentReceiptBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2"
PaymentReceiptBusiness2 H
{ 
public 

class "
PaymentReceiptBusiness '
(' (%
IPaymentReceiptDataAccess( A
dalB E
,E F"
ValidatePaymentReceiptG ]

validation^ h
)h i
:j k$
IPaymentReceiptBusiness	l É
{ 
public 
async 
Task 
< 
bool 
> 
AddPaymentReceipt  1
(1 2 
PaymentReceiptAddDTO2 F
receiptG N
)N O
{ 	
try 
{ 
MyMapper 
<  
PaymentReceiptAddDTO -
,- .
PaymentReceipt/ =
>= >
mapper? E
=F G
newH K
MyMapperL T
<T U 
PaymentReceiptAddDTOU i
,i j
PaymentReceiptk y
>y z
(z {
){ |
;| }
var 
data 
= 
mapper !
.! "
Map" %
(% &
receipt& -
)- .
;. /
ValidationResult  
result! '
=( )
await* /

validation0 :
.: ;
ValidateAsync; H
(H I
dataI M
)M N
;N O
if 
( 
result 
. 
IsValid !
)! "
{ 
return 
await  
dal! $
.$ %
Add% (
(( )
data) -
)- .
;. /
} 
else 
throw 
new &
PaymentReceiptAddException 8
(8 9
)9 :
;: ;
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!! 
{"" 
throw## 
new## &
PaymentReceiptAddException## 4
(##4 5
)##5 6
;##6 7
}$$ 
}%% 	
}&& 
}'' ı
|C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\ProjectBusiness\ProjectBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2
ProjectBusiness2 A
{ 
public 

class 
ProjectBusiness  
(  !
IProjectDataAccess! 3
dal4 7
)7 8
:9 :
IProjectBusiness; K
{ 
public 
async 
Task 
< 
List 
< 
ProjectSelectDTO /
>/ 0
>0 1!
GetAllProjectOfWorker2 G
(G H
intH K
workerIDL T
)T U
{ 	
try 
{ 
var 
data 
= 
await  
dal! $
.$ %!
GetAllProjectOfWorker% :
(: ;
workerID; C
)C D
;D E
var 
listData 
= 
data #
.# $
ToList$ *
(* +
)+ ,
;, -
MyMapper 
< 
Project  
,  !
ProjectSelectDTO" 2
>2 3
mapper4 :
=; <
new= @
MyMapperA I
<I J
ProjectJ Q
,Q R
ProjectSelectDTOS c
>c d
(d e
)e f
;f g
return 
mapper 
. 
MapList %
(% &
listData& .
). /
;/ 0
} 
catch 
( 
	Exception 
ex 
) 
{ 
throw 
new "
ProjectSelectException 0
(0 1
$str1 c
,c d
exe g
)g h
;h i
} 
}   	
}!! 
}"" Ÿ
úC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\TitleAmountApprovalRuleBusiness\TitleAmountApprovalRuleBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2+
TitleAmountApprovalRuleBusiness2 Q
{ 
public 

class +
TitleAmountApprovalRuleBusiness 0
(0 1.
"ITitleAmountApprovalRuleDataAccess1 S
dalT W
)W X
:Y Z,
 ITitleAmountApprovalRuleBusiness[ {
{ 
public 
async 
Task 
< 
IEnumerable %
<% &,
 TitleAmountApprovalRuleSelectDTO& F
>F G
>G H$
GetRuleAccordingToAmountI a
(a b
)b c
{ 	
var 
data 
= 
await 
dal  
.  !$
GetRuleAccordingToAmount! 9
(9 :
): ;
;; <
MyMapper 
< #
TitleAmountApprovalRule ,
,, -,
 TitleAmountApprovalRuleSelectDTO. N
>N O
mapperP V
=W X
newY \
MyMapper] e
<e f#
TitleAmountApprovalRulef }
,} ~-
 TitleAmountApprovalRuleSelectDTO	 ü
>
ü †
(
† °
)
° ¢
;
¢ £
return 
mapper 
. 
MapList !
(! "
data" &
.& '
ToList' -
(- .
). /
)/ 0
;0 1
} 	
} 
} ó2
vC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\UserBusiness\UserBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2
UserBusiness2 >
{ 
public 

class 
UserBusiness 
: 
IUserBusiness  -
{ 
IUserDataAccess 
_dal 
; 
ValidateUser 
validateUser !
;! "
ValidateWorker 
validateWorker %
;% &
public 
UserBusiness 
( 
IUserDataAccess +
dal, /
)/ 0
{ 	
_dal 
= 
dal 
; 
validateUser 
= 
new 
ValidateUser +
(+ ,
), -
;- .
validateWorker 
= 
new  
ValidateWorker! /
(/ 0
)0 1
;1 2
} 	
public 
async 
Task 
< 
bool 
> 
AddUser  '
(' (

UserAddDTO( 2
userDTO3 :
,: ;
WorkerAddDTO< H
	workerDTOI R
,R S
stringT Z
password[ c
)c d
{   	
MyMapper!! 
<!! 

UserAddDTO!! 
,!!  
User!!! %
>!!% &

userMapper!!' 1
=!!2 3
new!!4 7
MyMapper!!8 @
<!!@ A

UserAddDTO!!A K
,!!K L
User!!M Q
>!!Q R
(!!R S
)!!S T
;!!T U
MyMapper"" 
<"" 
WorkerAddDTO"" !
,""! "
Worker""# )
>"") *
workerMapper""+ 7
=""8 9
new"": =
MyMapper""> F
<""F G
WorkerAddDTO""G S
,""S T
Worker""U [
>""[ \
(""\ ]
)""] ^
;""^ _
var$$ 
worker$$ 
=$$ 
workerMapper$$ %
.$$% &
Map$$& )
($$) *
	workerDTO$$* 3
)$$3 4
;$$4 5
var%% 
user%% 
=%% 

userMapper%% !
.%%! "

MapProfile%%" ,
(%%, -
userDTO%%- 4
)%%4 5
;%%5 6
ValidationResult'' 

userResult'' '
=''( )
validateUser''* 6
.''6 7
Validate''7 ?
(''? @
user''@ D
)''D E
;''E F
ValidationResult(( 
workerResult(( )
=((* +
validateWorker((, :
.((: ;
Validate((; C
(((C D
worker((D J
)((J K
;((K L
if** 
(** 

userResult** 
.** 
IsValid** "
&&**# %
workerResult**& 2
.**2 3
IsValid**3 :
)**: ;
{++ 
await,, 
_dal,, 
.,, 
AddUser,, "
(,," #
user,,# '
,,,' (
worker,,) /
,,,/ 0
password,,1 9
),,9 :
;,,: ;
return-- 
true-- 
;-- 
}.. 
else// 
{00 
throw11 
new11 
UserAddException11 *
(11* +
)11+ ,
;11, -
}22 
}33 	
public55 
async55 
Task55 
<55 
List55 
<55 &
PageAuthorizationSelectDTO55 9
>559 :
>55: ;'
GetAllAuthorizationOfPerson55< W
(55W X
string55X ^
username55_ g
)55g h
{66 	
if77 
(77 
username77 
!=77 
string77 "
.77" #
Empty77# (
&&77) +
username77, 4
!=775 7
null778 <
)77< =
{88 
MyMapper99 
<99 
PageAuthorization99 *
,99* +&
PageAuthorizationSelectDTO99, F
>99F G
mapper99H N
=99O P
new99Q T
MyMapper99U ]
<99] ^
PageAuthorization99^ o
,99o p'
PageAuthorizationSelectDTO	99q ã
>
99ã å
(
99å ç
)
99ç é
;
99é è
var:: 
data:: 
=:: 
await::  
_dal::! %
.::% &'
GetAllAuthorizationOfPerson::& A
(::A B
username::B J
)::J K
;::K L
return<< 
mapper<< 
.<< 
MapList<< %
(<<% &
data<<& *
.<<* +
ToList<<+ 1
(<<1 2
)<<2 3
)<<3 4
;<<4 5
}== 
else>> 
throw?? 
new?? 
	Exception?? #
(??# $
)??$ %
;??% &
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
UserDTOBB !
>BB! "
LoginBB# (
(BB( )
stringBB) /
usernameBB0 8
,BB8 9
stringBB: @
passwordBBA I
)BBI J
{CC 	
ifDD 
(DD 
usernameDD 
!=DD 
stringDD !
.DD! "
EmptyDD" '
&&DD( *
passwordDD+ 3
!=DD4 6
stringDD7 =
.DD= >
EmptyDD> C
)DDC D
{EE 
varFF 
dataFF 
=FF 
awaitFF  
_dalFF! %
.FF% &
LoginFF& +
(FF+ ,
usernameFF, 4
,FF4 5
passwordFF6 >
)FF> ?
;FF? @
MyMapperGG 
<GG 
UserGG 
,GG 
UserDTOGG &
>GG& '
mapperGG( .
=GG/ 0
newGG1 4
MyMapperGG5 =
<GG= >
UserGG> B
,GGB C
UserDTOGGD K
>GGK L
(GGL M
)GGM N
;GGN O
returnHH 
mapperHH 
.HH 

MapProfileHH (
(HH( )
dataHH) -
)HH- .
;HH. /
}II 
elseJJ 
{KK 
throwLL 
newLL 
UserLoginExceptionLL ,
(LL, -
)LL- .
;LL. /
}MM 
}OO 	
}PP 
}QQ ¿
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Concrete\WorkerBusiness\WorkerBusiness.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )
Concrete) 1
.1 2
WorkerBusiness2 @
{ 
public		 

class		 
WorkerBusiness		 
{

 
} 
} ¿_
lC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Extensions\MapperProfile.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )

Extensions) 3
{ 
public 

class 
MapperProfile 
:  
Profile! (
{ 
public 
MapperProfile 
( 
) 
{ 	
	CreateMap 
<  
AdvanceRequestStatus *
,* +)
AdvanceRequestStatusSelectDTO, I
>I J
(J K
)K L
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Advance( /
,/ 0
opt1 4
=>5 7
opt8 ;
.; <
MapFrom< C
(C D
srcD G
=>H J
srcK N
.N O
AdvanceO V
)V W
)W X
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
FinanceManager( 6
,6 7
opt8 ;
=>< >
opt? B
.B C
MapFromC J
(J K
srcK N
=>O Q
srcR U
.U V
FinanceManagerV d
)d e
)e f
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
ApprovalStatus( 6
,6 7
opt8 ;
=>< >
opt? B
.B C
MapFromC J
(J K
srcK N
=>O Q
srcR U
.U V
ApprovalStatusV d
)d e
)e f
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Worker( .
,. /
opt0 3
=>4 6
opt7 :
.: ;
MapFrom; B
(B C
srcC F
=>G I
srcJ M
.M N
WorkerN T
)T U
)U V
.   
	ForMember   
(   
dest   
=>    "
dest  # '
.  ' (
AdvanceWorker  ( 5
,  5 6
opt  7 :
=>  ; =
opt  > A
.  A B
MapFrom  B I
(  I J
src  J M
=>  N P
src  Q T
.  T U
AdvanceWorker  U b
)  b c
)  c d
.!! 
	ForMember!! 
(!! 
dest!! 
=>!!  "
dest!!# '
.!!' (
Project!!( /
,!!/ 0
opt!!1 4
=>!!5 7
opt!!8 ;
.!!; <
MapFrom!!< C
(!!C D
src!!D G
=>!!H J
src!!K N
.!!N O
Project!!O V
)!!V W
)!!W X
."" 
	ForMember"" 
("" 
dest"" 
=>""  "
dest""# '
.""' (
Title""( -
,""- .
opt""/ 2
=>""3 5
opt""6 9
.""9 :
MapFrom"": A
(""A B
src""B E
=>""F H
src""I L
.""L M
Title""M R
)""R S
)""S T
.## 
	ForMember## 
(## 
dest## 
=>##  "
dest### '
.##' (
Unit##( ,
,##, -
opt##. 1
=>##2 4
opt##5 8
.##8 9
MapFrom##9 @
(##@ A
src##A D
=>##E G
src##H K
.##K L
Unit##L P
)##P Q
)##Q R
.##R S

ReverseMap##S ]
(##] ^
)##^ _
;##_ `
	CreateMap%% 
<%% 
Advance%% 
,%% 
AdvanceSelectDTO%% /
>%%/ 0
(%%0 1
)%%1 2
.&& 
	ForMember&& 
(&& 
dest&& 
=>&&  "
dest&&# '
.&&' ( 
AdvanceRequestStatus&&( <
,&&< =
opt&&> A
=>&&B D
opt&&E H
.&&H I
MapFrom&&I P
(&&P Q
src&&Q T
=>&&U W
src&&X [
.&&[ \ 
AdvanceRequestStatus&&\ p
)&&p q
)&&q r
.'' 
	ForMember'' 
('' 
dest'' 
=>''  "
dest''# '
.''' (
FinanceManager''( 6
,''6 7
opt''8 ;
=>''< >
opt''? B
.''B C
MapFrom''C J
(''J K
src''K N
=>''O Q
src''R U
.''U V
FinanceManager''V d
)''d e
)''e f
.(( 
	ForMember(( 
((( 
dest(( 
=>((  "
dest((# '
.((' (
ApprovalStatus((( 6
,((6 7
opt((8 ;
=>((< >
opt((? B
.((B C
MapFrom((C J
(((J K
src((K N
=>((O Q
src((R U
.((U V
ApprovalStatus((V d
)((d e
)((e f
.)) 
	ForMember)) 
()) 
dest)) 
=>))  "
dest))# '
.))' (
Worker))( .
,)). /
opt))0 3
=>))4 6
opt))7 :
.)): ;
MapFrom)); B
())B C
src))C F
=>))G I
src))J M
.))M N
Worker))N T
)))T U
)))U V
.** 
	ForMember** 
(** 
dest** 
=>**  "
dest**# '
.**' (
AdvanceWorker**( 5
,**5 6
opt**7 :
=>**; =
opt**> A
.**A B
MapFrom**B I
(**I J
src**J M
=>**N P
src**Q T
.**T U
AdvanceWorker**U b
)**b c
)**c d
.++ 
	ForMember++ 
(++ 
dest++ 
=>++  "
dest++# '
.++' (
Project++( /
,++/ 0
opt++1 4
=>++5 7
opt++8 ;
.++; <
MapFrom++< C
(++C D
src++D G
=>++H J
src++K N
.++N O
Project++O V
)++V W
)++W X
.,, 
	ForMember,, 
(,, 
dest,, 
=>,,  "
dest,,# '
.,,' (
Title,,( -
,,,- .
opt,,/ 2
=>,,3 5
opt,,6 9
.,,9 :
MapFrom,,: A
(,,A B
src,,B E
=>,,F H
src,,I L
.,,L M
Title,,M R
),,R S
),,S T
.-- 
	ForMember-- 
(-- 
dest-- 
=>--  "
dest--# '
.--' (
AdvanceTitle--( 4
,--4 5
opt--6 9
=>--: <
opt--= @
.--@ A
MapFrom--A H
(--H I
src--I L
=>--M O
src--P S
.--S T
AdvanceTitle--T `
)--` a
)--a b
.--b c

ReverseMap--c m
(--m n
)--n o
;--o p
	CreateMap// 
<// 
Advance// 
,// 
AdvanceSelectDTO// /
>/// 0
(//0 1
)//1 2
.//2 3

ReverseMap//3 =
(//= >
)//> ?
;//? @
	CreateMap00 
<00 
ApprovalStatus00 $
,00$ %#
ApprovalStatusSelectDTO00& =
>00= >
(00> ?
)00? @
.00@ A

ReverseMap00A K
(00K L
)00L M
;00M N
	CreateMap11 
<11 
Worker11 
,11 
WorkerSelectDTO11 -
>11- .
(11. /
)11/ 0
.110 1

ReverseMap111 ;
(11; <
)11< =
;11= >
	CreateMap22 
<22 
FinanceManager22 $
,22$ %#
FinanceManagerSelectDTO22& =
>22= >
(22> ?
)22? @
.22@ A

ReverseMap22A K
(22K L
)22L M
;22M N
	CreateMap33 
<33 
Project33 
,33 
ProjectSelectDTO33 /
>33/ 0
(330 1
)331 2
.332 3

ReverseMap333 =
(33= >
)33> ?
;33? @
	CreateMap44 
<44 
Title44 
,44 
TitleSelectDTO44 +
>44+ ,
(44, -
)44- .
.44. /

ReverseMap44/ 9
(449 :
)44: ;
;44; <
	CreateMap55 
<55  
AdvanceRequestStatus55 *
,55* +)
AdvanceRequestStatusSelectDTO55, I
>55I J
(55J K
)55K L
.55L M

ReverseMap55M W
(55W X
)55X Y
;55Y Z
	CreateMap66 
<66 
Role66 
,66 
RoleSelectDTO66 )
>66) *
(66* +
)66+ ,
.66, -

ReverseMap66- 7
(667 8
)668 9
;669 :
	CreateMap77 
<77 
Unit77 
,77 
UnitSelectDTO77 )
>77) *
(77* +
)77+ ,
.77, -

ReverseMap77- 7
(777 8
)778 9
;779 :
	CreateMap88 
<88 
PageAuthorization88 '
,88' (&
PageAuthorizationSelectDTO88) C
>88C D
(88D E
)88E F
.88F G

ReverseMap88G Q
(88Q R
)88R S
;88S T
	CreateMap99 
<99 

UserAddDTO99  
,99  !
User99" &
>99& '
(99' (
)99( )
.99) *

ReverseMap99* 4
(994 5
)995 6
;996 7
	CreateMap<< 
<<< 
User<< 
,<< 
UserDTO<< #
><<# $
(<<$ %
)<<% &
.== 
	ForMember== 
(== 
dest== 
=>==  "
dest==# '
.==' (
RoleName==( 0
,==0 1
opt==2 5
=>==6 8
opt==9 <
.==< =
MapFrom=== D
(==D E
src==E H
=>==I K
src==L O
.==O P
Role==P T
.==T U
RoleName==U ]
)==] ^
)==^ _
.>> 
	ForMember>> 
(>> 
dest>> 
=>>>  "
dest>># '
.>>' (
TitleID>>( /
,>>/ 0
opt>>1 4
=>>>5 7
opt>>8 ;
.>>; <
MapFrom>>< C
(>>C D
src>>D G
=>>>H J
src>>K N
.>>N O
Title>>O T
.>>T U
TitleID>>U \
)>>\ ]
)>>] ^
.?? 
	ForMember?? 
(?? 
dest?? 
=>??  "
dest??# '
.??' (
WorkerID??( 0
,??0 1
opt??2 5
=>??6 8
opt??9 <
.??< =
MapFrom??= D
(??D E
src??E H
=>??I K
src??L O
.??O P
Worker??P V
.??V W
WorkerID??W _
)??_ `
)??` a
.@@ 
	ForMember@@ 
(@@ 
dest@@ 
=>@@  "
dest@@# '
.@@' (

WorkerName@@( 2
,@@2 3
opt@@4 7
=>@@8 :
opt@@; >
.@@> ?
MapFrom@@? F
(@@F G
src@@G J
=>@@K M
src@@N Q
.@@Q R
Worker@@R X
.@@X Y

WorkerName@@Y c
)@@c d
)@@d e
.AA 

ReverseMapAA 
(AA 
)AA 
;AA 
	CreateMapCC 
<CC #
TitleAmountApprovalRuleCC -
,CC- .,
 TitleAmountApprovalRuleSelectDTOCC/ O
>CCO P
(CCP Q
)CCQ R
.CCR S
	ForMemberCCS \
(CC\ ]
destCC] a
=>CCb d
destCCe i
.CCi j
TitleCCj o
,CCo p
optCCq t
=>CCu w
optCCx {
.CC{ |
MapFrom	CC| É
(
CCÉ Ñ
src
CCÑ á
=>
CCà ä
src
CCã é
.
CCé è
Title
CCè î
)
CCî ï
)
CCï ñ
.
CCñ ó

ReverseMap
CCó °
(
CC° ¢
)
CC¢ £
;
CC£ §
}DD 	
}EE 
}FF Î
gC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Business\Extensions\MyMapper.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Business  (
.( )

Extensions) 3
{		 
public

 

class

 
MyMapper

 
<

 
TFrom

 
,

  
TTo

! $
>

$ %
{ 
public 
TTo 
Map 
( 
TFrom 
source #
)# $
{ 	
var 
config 
= 
new 
MapperConfiguration 0
(0 1
cfg1 4
=>5 7
{ 
cfg 
. 
	CreateMap 
< 
TFrom #
,# $
TTo% (
>( )
() *
)* +
.+ ,

ReverseMap, 6
(6 7
)7 8
;8 9
} 
) 
; 
var 
mapper 
= 
config 
.  
CreateMapper  ,
(, -
)- .
;. /
return 
mapper 
. 
Map 
< 
TTo !
>! "
(" #
source# )
)) *
;* +
} 	
public 
List 
< 
TTo 
> 
MapList  
(  !
List! %
<% &
TFrom& +
>+ ,

sourceList- 7
)7 8
{ 	
var 
config 
= 
new 
MapperConfiguration 0
(0 1
cfg1 4
=>5 7
{ 
cfg 
. 

AddProfile 
< 
MapperProfile ,
>, -
(- .
). /
;/ 0
} 
) 
; 
var 
mapper 
= 
config 
.  
CreateMapper  ,
(, -
)- .
;. /
return   
mapper   
.   
Map   
<   
List   "
<  " #
TTo  # &
>  & '
>  ' (
(  ( )

sourceList  ) 3
)  3 4
;  4 5
}!! 	
public$$ 
TTo$$ 

MapProfile$$ 
($$ 
TFrom$$ #
source$$$ *
)$$* +
{%% 	
var&& 
config&& 
=&& 
new&& 
MapperConfiguration&& 0
(&&0 1
cfg&&1 4
=>&&5 7
{'' 
cfg(( 
.(( 

AddProfile(( 
<(( 
MapperProfile(( ,
>((, -
(((- .
)((. /
;((/ 0
})) 
))) 
;)) 
var++ 
mapper++ 
=++ 
config++ 
.++  
CreateMapper++  ,
(++, -
)++- .
;++. /
return,, 
mapper,, 
.,, 
Map,, 
<,, 
TTo,, !
>,,! "
(,," #
source,,# )
),,) *
;,,* +
}-- 	
}.. 
}// 