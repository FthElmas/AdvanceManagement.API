ß
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IAdvanceRequestStatus\IAdvanceRequestStatusDataAccess.cs
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
  

DataAccess

  *
.

* +
Abstract

+ 3
.

3 4!
IAdvanceRequestStatus

4 I
{ 
public 

	interface +
IAdvanceRequestStatusDataAccess 4
:5 6
IBaseDataAccess7 F
<F G 
AdvanceRequestStatusG [
>[ \
{ 
Task 
< 
bool 
> 
AddAdvanceRequest $
($ % 
AdvanceRequestStatus% 9
request: A
,A B
stringC I
approvalNameJ V
,V W
IDbTransactionX f
_transactiong s
)s t
;t u
Task 
< 
IEnumerable 
<  
AdvanceRequestStatus -
>- .
>. /
GetWorkerAdvance0 @
(@ A
intA D
	advanceIDE N
)N O
;O P
Task 
< 
IEnumerable 
<  
AdvanceRequestStatus -
>- .
>. /
GetRequestWithTitle0 C
(C D
intD G
titleIDH O
)O P
;P Q
Task 
< 
IEnumerable 
<  
AdvanceRequestStatus -
>- .
>. /$
GetRequestForUnitManager0 H
(H I
intI L
titleIDM T
)T U
;U V
} 
} é
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IAdvance\IAdvanceDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IAdvance		4 <
{

 
public 

	interface 
IAdvanceDataAccess '
:( )
IBaseDataAccess* 9
<9 :
Advance: A
>A B
{ 
Task 
< 
IEnumerable 
< 
Advance  
>  !
>! "
GetWorkerAdvance# 3
(3 4
int4 7
workerID8 @
)@ A
;A B
Task 
< 
bool 
>  
AddAdvanceWithStatus '
(' (
Advance( /
advance0 7
)7 8
;8 9
Task 
< 
IEnumerable 
< 
Advance  
>  !
>! "%
BringAllAdvanceForFinance# <
(< =
)= >
;> ?
Task 
< 
Advance 
> 
GetAdvanceByID $
($ %
int% (
	advanceID) 2
)2 3
;3 4
Task 
< 
IEnumerable 
< 
Advance  
>  !
>! "(
BringAllAdvanceForAccountant# ?
(? @
)@ A
;A B
Task 
< 
Advance 
> 
FindAdvance !
(! "
int" %
workerID& .
,. /
int0 3
	projectID4 =
)= >
;> ?
} 
} «
àC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IApprovalStatus\IApprovalStatusDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IApprovalStatus		4 C
{

 
public 

	interface %
IApprovalStatusDataAccess .
:/ 0
IBaseDataAccess1 @
<@ A
ApprovalStatusA O
>O P
{ 
} 
} ¶
tC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IBase\IBaseDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Abstract+ 3
.3 4
IBase4 9
{ 
public		 

	interface		 
IBaseDataAccess		 $
<		$ %
T		% &
>		& '
where		( -
T		. /
:		0 1
class		2 7
,		8 9
new		: =
(		= >
)		> ?
{

 
Task 
< 
T 
> 
GetById 
( 
int 
id 
) 
;  
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
)$ %
;% &
Task 
< 
bool 
> 
Add 
( 
T 
entity 
)  
;  !
Task 
< 
T 
> 
	ReturnAdd 
( 
T 
entity "
)" #
;# $
Task 
< 
bool 
> 
Update 
( 
T 
entity "
)" #
;# $
Task 
< 
bool 
> 
Delete 
( 
T 
entity "
)" #
;# $
Task 
< 
bool 
> 

SoftDelete 
( 
T 
entity  &
)& '
;' (
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
string$ *

columnName+ 5
,5 6
Guid7 ;
ID< >
)> ?
;? @
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
string$ *

columnName+ 5
,5 6
int7 :
ID; =
)= >
;> ?
} 
} «
àC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IFinanceManager\IFinanceManagerDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IFinanceManager		4 C
{

 
public 

	interface %
IFinanceManagerDataAccess .
:/ 0
IBaseDataAccess1 @
<@ A
FinanceManagerA O
>O P
{ 
} 
} ∞
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IGeneric\IGenericDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Abstract+ 3
.3 4
IGeneric4 <
{ 
public		 

	interface		 
IGenericDataAccess		 '
<		' (
T		( )
>		) *
{

 
Task 
< 
T 
> 
GetById 
( 
int 
id 
) 
;  
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
)$ %
;% &
Task 
< 
bool 
> 
Add 
( 
T 
entity 
)  
;  !
Task 
< 
T 
> 
	ReturnAdd 
( 
T 
entity "
)" #
;# $
Task 
< 
bool 
> 
Update 
( 
T 
entity "
)" #
;# $
Task 
< 
bool 
> 
Delete 
( 
T 
entity "
)" #
;# $
Task 
< 
bool 
> 

SoftDelete 
( 
T 
entity  &
)& '
;' (
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
string$ *

columnName+ 5
,5 6
Guid7 ;
ID< >
)> ?
;? @
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
string$ *

columnName+ 5
,5 6
int7 :
ID; =
)= >
;> ?
} 
} «
àC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IPaybackReceipt\IPaybackReceiptDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IPaybackReceipt		4 C
{

 
public 

	interface %
IPaybackReceiptDataAccess .
:/ 0
IBaseDataAccess1 @
<@ A
PaybackReceiptA O
>O P
{ 
} 
} «
àC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IPaymentReceipt\IPaymentReceiptDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IPaymentReceipt		4 C
{

 
public 

	interface %
IPaymentReceiptDataAccess .
:/ 0
IBaseDataAccess1 @
<@ A
PaymentReceiptA O
>O P
{ 
} 
} ñ
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IProject\IProjectDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IProject		4 <
{

 
public 

	interface 
IProjectDataAccess '
:( )
IBaseDataAccess* 9
<9 :
Project: A
>A B
{ 
Task 
< 
IEnumerable 
< 
Project  
>  !
>! "!
GetAllProjectOfWorker# 8
(8 9
int9 <
workerID= E
)E F
;F G
} 
} ”
öC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\ITitleAmountApprovalRule\ITitleAmountApprovalRuleDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4$
ITitleAmountApprovalRule		4 L
{

 
public 

	interface .
"ITitleAmountApprovalRuleDataAccess 7
:8 9
IBaseDataAccess: I
<I J#
TitleAmountApprovalRuleJ a
>a b
{ 
Task 
< 
IEnumerable 
< #
TitleAmountApprovalRule 0
>0 1
>1 2$
GetRuleAccordingToAmount3 K
(K L
)L M
;M N
} 
} ô
vC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\ITitle\ITitleDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
ITitle		4 :
{

 
public 

	interface 
ITitleDataAccess %
:& '
IBaseDataAccess( 7
<7 8
Title8 =
>= >
{ 
} 
} î
tC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IUnit\IUnitDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IUnit		4 9
{

 
public 

	interface 
IUnitDataAccess $
:% &
IBaseDataAccess' 6
<6 7
Unit7 ;
>; <
{ 
} 
} º

tC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IUser\IUserDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Abstract+ 3
.3 4
IUser4 9
{		 
public

 

	interface

 
IUserDataAccess

 $
{ 
Task 
< 
User 
> 
AddUser 
( 
User 
user  $
,$ %
Worker& ,
worker- 3
,3 4
string5 ;
password< D
)D E
;E F
Task 
< 
User 
> 
Login 
( 
string 
username  (
,( )
string* 0
password1 9
)9 :
;: ;
User 

LoggedUser 
( 
string 
username '
)' (
;( )
Task 
< 
IEnumerable 
< 
PageAuthorization *
>* +
>+ ,'
GetAllAuthorizationOfPerson- H
(H I
stringI O
usernameP X
)X Y
;Y Z
} 
} û
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Abstract\IWorker\IWorkerDataAccess.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Abstract		+ 3
.		3 4
IWorker		4 ;
{

 
public 

	interface 
IWorkerDataAccess &
:' (
IBaseDataAccess) 8
<8 9
Worker9 ?
>? @
{ 
} 
} ªk
~C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\AdvanceAccess\AdvanceDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
AdvanceAccess4 A
{ 
public 

class 
AdvanceDataAccess "
:# $
BaseDataAccess% 3
<3 4
Advance4 ;
>; <
,< =
IAdvanceDataAccess> P
{ 
private 
readonly 
ConnectionHelper )
_connectionHelper* ;
;; <
private 
readonly  
ApprovalStateMachine -
stateMachine. :
;: ;
public 
AdvanceDataAccess  
(  ! 
ApprovalStateMachine! 5
stateMachine6 B
)B C
{ 	
_connectionHelper 
= 
new  #
ConnectionHelper$ 4
(4 5
)5 6
;6 7
this 
. 
stateMachine 
= 
stateMachine  ,
;, -
} 	
public 
async 
Task 
< 
Advance !
>! "
GetAdvanceByID# 1
(1 2
int2 5
	advanceID6 ?
)? @
{ 	
using   
var   
conn   
=   
_connectionHelper   .
.  . /
CreateConnection  / ?
(  ? @
)  @ A
;  A B
var!! 
query!! 
=!! 
$str	!! ì
;
!!ì î
var## 

parameters## 
=## 
new##  
{##! "
	AdvanceID### ,
=##- .
	advanceID##/ 8
}##9 :
;##: ;
var%% 
result%% 
=%% 
await%% 
conn%% #
.%%# $

QueryAsync%%$ .
<%%. /
Advance%%/ 6
,%%6 7
Worker%%8 >
,%%> ?
Title%%@ E
,%%E F
Unit%%G K
,%%K L
Project%%M T
,%%T U
Advance%%V ]
>%%] ^
(%%^ _
query%%_ d
,%%d e
(&& 
a&& 
,&& 
w&& 
,&& 
t&& 
,&& 
u&& 
,&& 
p&& 
)&& 
=>&&  "
{'' 
a(( 
.(( 
Worker(( 
=(( 
w((  
;((  !
a)) 
.)) 
Title)) 
=)) 
t)) 
;))  
a** 
.** 
Unit** 
=** 
u** 
;** 
a++ 
.++ 
Project++ 
=++ 
p++  !
;++! "
return,, 
a,, 
;,, 
}.. 
,.. 

parameters// 
,// 
splitOn00 
:00 
$str00 <
)00< =
;00= >
return22 
result22 
.22 
FirstOrDefault22 (
(22( )
)22) *
;22* +
}33 	
public66 
async66 
Task66 
<66 
IEnumerable66 %
<66% &
Advance66& -
>66- .
>66. /
GetWorkerAdvance660 @
(66@ A
int66A D
workerID66E M
)66M N
{77 	
using88 
var88 
conn88 
=88 
_connectionHelper88 .
.88. /
CreateConnection88/ ?
(88? @
)88@ A
;88A B
var99 
advanceQuery99 
=99 
$str	99 í
;
99í ì
var;; 

parameters;; 
=;; 
new;;  
{;;! "
WorkerID;;# +
=;;, -
workerID;;. 6
};;7 8
;;;8 9
return?? 
await?? 
conn?? 
.?? 

QueryAsync?? (
<??( )
Advance??) 0
,??0 1 
AdvanceRequestStatus??2 F
,??F G
Project??H O
,??O P
FinanceManager??P ^
,??^ _
ApprovalStatus??` n
,??n o
Worker??p v
,??v w
Title??x }
,??} ~
Advance	?? Ü
>
??Ü á
(
??á à
advanceQuery
??à î
,
??î ï
(@@ 
a@@ 
,@@ 
ar@@ 
,@@ 
p@@ 
,@@ 
fm@@ 
,@@ 
aps@@ "
,@@" #
w@@$ %
,@@% &
t@@' (
)@@( )
=>@@* ,
{AA 
aBB 
.BB  
AdvanceRequestStatusBB *
=BB+ ,
arBB- /
;BB/ 0
aCC 
.CC 
ProjectCC 
=CC 
pCC  !
;CC! "
aDD 
.DD 
FinanceManagerDD $
=DD% &
fmDD' )
;DD) *
aEE 
.EE 
ApprovalStatusEE $
=EE% &
apsEE' *
;EE* +
aFF 
.FF 
WorkerFF 
=FF 
wFF  
;FF  !
aGG 
.GG 
TitleGG 
=GG 
tGG 
;GG  
returnHH 
aHH 
;HH 
}JJ 
,JJ 

parametersKK 
,KK 
splitOnLL 
:LL 
$strLL c
)LLc d
;LLd e
}NN 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IEnumerableQQ %
<QQ% &
AdvanceQQ& -
>QQ- .
>QQ. /%
BringAllAdvanceForFinanceQQ0 I
(QQI J
)QQJ K
{RR 	
usingSS 
varSS 
connSS 
=SS 
_connectionHelperSS .
.SS. /
CreateConnectionSS/ ?
(SS? @
)SS@ A
;SSA B
varTT 
advanceQueryTT 
=TT 
$str	TT Ó
;
TTÓ Ô
returnVV 
awaitVV 
connVV 
.VV 

QueryAsyncVV (
<VV( )
AdvanceVV) 0
,VV0 1 
AdvanceRequestStatusVV2 F
,VVF G
ProjectVVH O
,VVO P
ApprovalStatusVVQ _
,VV_ `
WorkerVVa g
,VVg h
TitleVVi n
,VVn o
UnitVVp t
,VVt u
AdvanceVVv }
>VV} ~
(VV~ 
advanceQuery	VV ã
,
VVã å
(WW 
aWW 
,WW 
arWW 
,WW 
pWW 
,WW 
apsWW 
,WW 
waWW  "
,WW" #
tWW# $
,WW$ %
uWW% &
)WW& '
=>WW( *
{XX 
aYY 
.YY  
AdvanceRequestStatusYY *
=YY+ ,
arYY- /
;YY/ 0
aZZ 
.ZZ 
ProjectZZ 
=ZZ 
pZZ  !
;ZZ! "
a[[ 
.[[ 
ApprovalStatus[[ $
=[[% &
aps[[' *
;[[* +
a\\ 
.\\ 
AdvanceWorker\\ #
=\\$ %
wa\\& (
;\\( )
a]] 
.]] 
Title]] 
=]] 
t]] 
;]]  
a^^ 
.^^ 
Unit^^ 
=^^ 
u^^ 
;^^ 
return__ 
a__ 
;__ 
}aa 
,aa 
splitOnbb 
:bb 
$strbb e
)bbe f
;bbf g
}cc 	
publicff 
asyncff 
Taskff 
<ff 
IEnumerableff %
<ff% &
Advanceff& -
>ff- .
>ff. /(
BringAllAdvanceForAccountantff0 L
(ffL M
)ffM N
{gg 	
usinghh 
varhh 
connhh 
=hh 
_connectionHelperhh .
.hh. /
CreateConnectionhh/ ?
(hh? @
)hh@ A
;hhA B
varii 
advanceQueryii 
=ii 
$str	ii à
;
iià â
returnkk 
awaitkk 
connkk 
.kk 

QueryAsynckk (
<kk( )
Advancekk) 0
,kk0 1
Workerkk2 8
,kk8 9
Titlekk: ?
,kk? @
UnitkkA E
,kkE F
ProjectkkG N
,kkN O
AdvancekkP W
>kkW X
(kkX Y
advanceQuerykkY e
,kke f
(ll 
all 
,ll 
wll 
,ll 
tll 
,ll 
ull 
,ll 
pll 
)ll 
=>ll  "
{mm 
ann 
.nn 
AdvanceWorkernn #
=nn$ %
wnn& '
;nn' (
aoo 
.oo 
Titleoo 
=oo 
too 
;oo  
app 
.pp 
Unitpp 
=pp 
upp 
;pp 
aqq 
.qq 
Projectqq 
=qq 
pqq  !
;qq! "
returnrr 
arr 
;rr 
}tt 
,tt 
splitOnuu 
:uu 
$struu <
)uu< =
;uu= >
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
boolxx 
>xx  
AddAdvanceWithStatusxx  4
(xx4 5
Advancexx5 <
advancexx= D
)xxD E
{yy 	
varzz 
connzz 
=zz 
_connectionHelperzz (
.zz( )
CreateConnectionzz) 9
(zz9 :
)zz: ;
;zz; <
using|| 
(|| 
IDbTransaction||  
transaction||! ,
=||- .
conn||/ 3
.||3 4
BeginTransaction||4 D
(||D E
)||E F
)||F G
{}} 
try~~ 
{ 
string
ÄÄ 
advanceQuery
ÄÄ '
=
ÄÄ( )
$strÄÄ* •
;ÄÄ• ¶
var
ÑÑ 
data
ÑÑ 
=
ÑÑ 
await
ÑÑ $
transaction
ÑÑ% 0
.
ÑÑ0 1

Connection
ÑÑ1 ;
.
ÑÑ; <&
QueryFirstOrDefaultAsync
ÑÑ< T
<
ÑÑT U
Advance
ÑÑU \
>
ÑÑ\ ]
(
ÑÑ] ^
advanceQuery
ÑÑ^ j
,
ÑÑj k
new
ÑÑl o
{
ÑÑp q
AdvanceAmount
ÑÑr 
=ÑÑÄ Å
advanceÑÑÇ â
.ÑÑâ ä
AdvanceAmountÑÑä ó
,ÑÑó ò"
AdvanceExplanationÑÑô ´
=ÑÑ¨ ≠
advanceÑÑÆ µ
.ÑÑµ ∂"
AdvanceExplanationÑÑ∂ »
,ÑÑ» …
WorkerIDÑÑ  “
=ÑÑ” ‘
advanceÑÑ’ ‹
.ÑÑ‹ ›
WorkerIDÑÑ› Â
,ÑÑÂ Ê
RequestDateÑÑÁ Ú
=ÑÑÛ Ù
advanceÑÑı ¸
.ÑÑ¸ ˝
RequestDateÑÑ˝ à
,ÑÑà â!
AmountPaymentDateÑÑä õ
=ÑÑú ù
advanceÑÑû •
.ÑÑ• ¶!
AmountPaymentDateÑÑ¶ ∑
,ÑÑ∑ ∏
	ProjectIDÑÑπ ¬
=ÑÑ√ ƒ
advanceÑÑ≈ Ã
.ÑÑÃ Õ
	ProjectIDÑÑÕ ÷
,ÑÑ÷ ◊
IsActiveÑÑÿ ‡
=ÑÑ· ‚
advanceÑÑ„ Í
.ÑÑÍ Î
IsActiveÑÑÎ Û
}ÑÑÙ ı
,ÑÑı ˆ
transactionÑÑ˜ Ç
)ÑÑÇ É
;ÑÑÉ Ñ
var
ÖÖ 
request
ÖÖ 
=
ÖÖ  !
new
ÖÖ" %"
AdvanceRequestStatus
ÖÖ& :
{
ÜÜ 
	AdvanceID
áá !
=
áá" #
data
áá$ (
.
áá( )
	AdvanceID
áá) 2
,
áá2 3

StatusName
àà "
=
àà# $
$str
àà% 4
,
àà4 5
IsActive
ââ  
=
ââ! "
false
ââ# (
}
ää 
;
ää 
stateMachine
ãã  
.
ãã  !(
InitializeApprovalWorkflow
ãã! ;
(
ãã; <
request
ãã< C
,
ããC D
data
ããE I
.
ããI J
AdvanceAmount
ããJ W
,
ããW X
transaction
ããY d
)
ããd e
;
ããe f
transaction
èè 
.
èè  
Commit
èè  &
(
èè& '
)
èè' (
;
èè( )
return
êê 
true
êê 
;
êê  
}
ëë 
catch
íí 
{
ìì 
transaction
îî 
.
îî  
Rollback
îî  (
(
îî( )
)
îî) *
;
îî* +
return
ïï 
false
ïï  
;
ïï  !
}
ññ 
}
óó 
}
òò 	
public
õõ 
async
õõ 
Task
õõ 
<
õõ 
Advance
õõ !
>
õõ! "
FindAdvance
õõ# .
(
õõ. /
int
õõ/ 2
workerID
õõ3 ;
,
õõ; <
int
õõ= @
	projectID
õõA J
)
õõJ K
{
úú 	
using
ùù 
var
ùù 
conn
ùù 
=
ùù 
_connectionHelper
ùù .
.
ùù. /
CreateConnection
ùù/ ?
(
ùù? @
)
ùù@ A
;
ùùA B
string
üü 
query
üü 
=
üü 
$strüü Œ
;üüŒ œ
return
££ 
await
££ 
conn
££ 
.
££ &
QueryFirstOrDefaultAsync
££ 6
<
££6 7
Advance
££7 >
>
££> ?
(
££? @
query
££@ E
,
££E F
new
££G J
{
££K L
WorkerID
££M U
=
££V W
workerID
££X `
,
££` a
	ProjectID
££b k
=
££l m
	projectID
££n w
}
££x y
)
££y z
;
££z {
}
§§ 	
}
•• 
}¶¶ ŒP
òC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\AdvanceRequestStatusAccess\AdvanceRequestStatusDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4&
AdvanceRequestStatusAccess4 N
{ 
public 

class *
AdvanceRequestStatusDataAccess /
(/ 0
ConnectionHelper0 @
_connectionHelperA R
)R S
:T U
BaseDataAccessV d
<d e 
AdvanceRequestStatuse y
>y z
,z {,
IAdvanceRequestStatusDataAccess	| õ
{ 
public 
async 
Task 
< 
IEnumerable %
<% & 
AdvanceRequestStatus& :
>: ;
>; <
GetWorkerAdvance= M
(M N
intN Q
	advanceIDR [
)[ \
{ 	
using 
var 
conn 
= 
_connectionHelper .
.. /
CreateConnection/ ?
(? @
)@ A
;A B
string 
query 
= 
$str	 ƒ
;
ƒ ≈
var 

parameters 
= 
new  
{! "
	AdvanceID# ,
=- .
	advanceID/ 8
}9 :
;: ;
return 
await 
conn 
. 

QueryAsync (
<( ) 
AdvanceRequestStatus) =
,= >
Advance? F
,F G
ProjectH O
,O P
FinanceManagerQ _
,_ `
ApprovalStatusa o
,o p
Workerq w
,w x
Titley ~
,~ "
AdvanceRequestStatus
Ä î
>
î ï
(
ï ñ
query
ñ õ
,
õ ú
( 
ar 
, 
a 
, 
p 
, 
fm 
, 
aps "
," #
w$ %
,% &
t' (
)( )
=>* ,
{ 
ar 
. 
Advance 
=  
a! "
;" #
ar 
. 
Project 
=  
p! "
;" #
ar 
. 
FinanceManager %
=& '
fm( *
;* +
ar 
. 
ApprovalStatus %
=& '
aps( +
;+ ,
ar   
.   
Worker   
=   
w    !
;  ! "
ar!! 
.!! 
Title!! 
=!! 
t!!  
;!!  !
return"" 
ar"" 
;"" 
}$$ 
,$$ 

parameters%% 
,%% 
splitOn&& 
:&& 
$str&& U
)&&U V
;&&V W
}'' 	
public++ 
async++ 
Task++ 
<++ 
IEnumerable++ %
<++% & 
AdvanceRequestStatus++& :
>++: ;
>++; <
GetRequestWithTitle++= P
(++P Q
int++Q T
titleID++U \
)++\ ]
{,, 	
using-- 
var-- 
conn-- 
=-- 
_connectionHelper-- .
.--. /
CreateConnection--/ ?
(--? @
)--@ A
;--A B
string.. 
query.. 
=.. 
$str	.. Ô
;
..Ô 
var11 
result11 
=11 
await11 
conn11 #
.11# $

QueryAsync11$ .
<11. / 
AdvanceRequestStatus11/ C
,11C D
Advance11E L
,11L M
Project11N U
,11U V
Worker11W ]
,11] ^
Title11_ d
,11d e
Unit11f j
,11j k
ApprovalStatus11k y
,11y z!
AdvanceRequestStatus	11{ è
>
11è ê
(
11ê ë
query22 
,22 
(33 
ar33 
,33 
a33 
,33 
p33 
,33 
w33 
,33 
t33 
,33 
u33 
,33 
ap33  "
)33" #
=>33$ &
{44 
ar55 
.55 
Advance55 
=55 
a55 
;55 
ar66 
.66 
Project66 
=66 
p66 
;66 
ar77 
.77 
Worker77 
=77 
w77 
;77 
ar88 
.88 
Title88 
=88 
t88 
;88 
ar99 
.99 
Unit99 
=99 
u99 
;99 
ar:: 
.:: 
ApprovalStatus:: !
=::" #
ap::$ &
;::& '
return;; 
ar;; 
;;; 
}<< 
,<< 
param== 
:== 
new== 
{== 
TitleID==  
===! "
titleID==# *
}==+ ,
,==, -
splitOn>> 
:>> 
$str>> X
)?? 
;?? 
returnAA 
resultAA 
;AA 
}BB 	
publicEE 
asyncEE 
TaskEE 
<EE 
IEnumerableEE %
<EE% & 
AdvanceRequestStatusEE& :
>EE: ;
>EE; <$
GetRequestForUnitManagerEE= U
(EEU V
intEEV Y
titleIDEEZ a
)EEa b
{FF 	
usingGG 
varGG 
connGG 
=GG 
_connectionHelperGG .
.GG. /
CreateConnectionGG/ ?
(GG? @
)GG@ A
;GGA B
stringHH 
queryHH 
=HH 
$str	HH ø
;
HHø ¿
varKK 
resultKK 
=KK 
awaitKK 
connKK #
.KK# $

QueryAsyncKK$ .
<KK. / 
AdvanceRequestStatusKK/ C
,KKC D
AdvanceKKE L
,KKL M
ProjectKKN U
,KKU V
WorkerKKW ]
,KK] ^
TitleKK_ d
,KKd e
UnitKKf j
,KKj k
ApprovalStatusKKl z
,KKz {!
AdvanceRequestStatus	KK| ê
>
KKê ë
(
KKë í
queryLL 
,LL 
(MM 
arMM 
,MM 
aMM 
,MM 
pMM 
,MM 
wMM 
,MM 
taMM 
,MM 
uMM 
,MM  
apMM! #
)MM# $
=>MM% '
{NN 
arOO 
.OO 
AdvanceOO 
=OO 
aOO 
;OO 
arPP 
.PP 
ProjectPP 
=PP 
pPP 
;PP 
arQQ 
.QQ 
WorkerQQ 
=QQ 
wQQ 
;QQ 
arRR 
.RR 
TitleRR 
=RR 
taRR 
;RR 
arSS 
.SS 
UnitSS 
=SS 
uSS 
;SS 
arTT 
.TT 
ApprovalStatusTT !
=TT" #
apTT$ &
;TT& '
returnUU 
arUU 
;UU 
}VV 
,VV 
paramWW 
:WW 
newWW 
{WW 
TitleIDWW  
=WW! "
titleIDWW# *
}WW+ ,
,WW, -
splitOnXX 
:XX 
$strXX W
)YY 
;YY 
return[[ 
result[[ 
;[[ 
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
bool^^ 
>^^ 
AddAdvanceRequest^^  1
(^^1 2 
AdvanceRequestStatus^^2 F
request^^G N
,^^N O
string^^P V
approvalName^^W c
,^^c d
IDbTransaction^^e s
_transaction	^^t Ä
)
^^Ä Å
{__ 	
tryaa 
{bb 
stringcc 
queryApprovalcc (
=cc) *
$strcc+ l
;ccl m
stringdd 
querydd  
=dd! "
$str	dd# ∆
;
dd∆ «
varff 
dataff 
=ff 
awaitff  %
_transactionff& 2
.ff2 3

Connectionff3 =
.ff= >$
QueryFirstOrDefaultAsyncff> V
<ffV W
ApprovalStatusffW e
>ffe f
(fff g
queryApprovalffg t
,fft u
newffv y
{ffz {
ApprovalName	ff| à
=
ffâ ä
approvalName
ffã ó
}
ffò ô
,
ffô ö
_transaction
ffõ ß
)
ffß ®
;
ff® ©
awaitgg 
_transactiongg '
.gg' (

Connectiongg( 2
.gg2 3
ExecuteAsyncgg3 ?
(gg? @
querygg@ E
,ggE F
newggG J
{ggK L
	AdvanceIDggM V
=ggW X
requestggY `
.gg` a
	AdvanceIDgga j
,ggj k

StatusNameggl v
=ggw x
request	ggy Ä
.
ggÄ Å

StatusName
ggÅ ã
,
ggã å
StatusDescription
ggç û
=
ggü †
request
gg° ®
.
gg® ©
StatusDescription
gg© ∫
,
gg∫ ª
ApprovedAmount
ggº  
=
ggÀ Ã
request
ggÕ ‘
.
gg‘ ’
ApprovedAmount
gg’ „
,
gg„ ‰!
ApprovingRejectedID
ggÂ ¯
=
gg˘ ˙
request
gg˚ Ç
.
ggÇ É!
ApprovingRejectedID
ggÉ ñ
,
ggñ ó
ProcessDate
ggò £
=
gg§ •
request
gg¶ ≠
.
gg≠ Æ
ProcessDate
ggÆ π
,
ggπ ∫
ApprovalStatusID
ggª À
=
ggÃ Õ
data
ggŒ “
.
gg“ ”
ApprovalStatusID
gg” „
,
gg„ ‰
IsActive
ggÂ Ì
=
ggÓ Ô
request
gg ˜
.
gg˜ ¯
IsActive
gg¯ Ä
}
ggÅ Ç
,
ggÇ É
_transaction
ggÑ ê
)
ggê ë
;
ggë í
returnii 
trueii 
;ii  
}jj 
catchkk 
{ll 
returnnn 
falsenn  
;nn  !
}oo 
}uu 	
}xx 
}yy Ä
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\ApprovalStatusAccess\ApprovalStatusDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4 
ApprovalStatusAccess

4 H
{ 
public 

class $
ApprovalStatusDataAccess )
:* +
BaseDataAccess, :
<: ;
ApprovalStatus; I
>I J
,J K%
IApprovalStatusDataAccessL e
{ 
} 
} ‹%
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\BaseAccess\BaseDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4

BaseAccess

4 >
{ 
public 

abstract 
class 
BaseDataAccess (
<( )
T) *
>* +
:, -
IBaseDataAccess. =
<= >
T> ?
>? @
whereB G
TH I
:J K
classL Q
,Q R
newS V
(V W
)W X
{ 
GenericDataAccess 
< 
T 
> 
generic $
;$ %
public 
BaseDataAccess 
( 
) 
{ 	
generic 
= 
new 
GenericDataAccess +
<+ ,
T, -
>- .
(. /
)/ 0
;0 1
} 	
public 
async 
Task 
< 
T 
> 
GetById $
($ %
int% (
id) +
)+ ,
{ 	
return 
await 
generic  
.  !
GetById! (
(( )
id) +
)+ ,
;, -
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
T& '
>' (
>( )
GetAll* 0
(0 1
)1 2
{ 	
return 
await 
generic  
.  !
GetAll! '
(' (
)( )
;) *
} 	
public 
async 
Task 
< 
bool 
> 
Add  #
(# $
T$ %
entity& ,
), -
{   	
return!! 
await!! 
generic!!  
.!!  !
Add!!! $
(!!$ %
entity!!% +
)!!+ ,
;!!, -
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
T$$ 
>$$ 
	ReturnAdd$$ &
($$& '
T$$' (
entity$$) /
)$$/ 0
{%% 	
return&& 
await&& 
generic&&  
.&&  !
	ReturnAdd&&! *
(&&* +
entity&&+ 1
)&&1 2
;&&2 3
}'' 	
public** 
async** 
Task** 
<** 
bool** 
>** 
Update**  &
(**& '
T**' (
entity**) /
)**/ 0
{++ 	
return,, 
await,, 
generic,,  
.,,  !
Update,,! '
(,,' (
entity,,( .
),,. /
;,,/ 0
}-- 	
public00 
async00 
Task00 
<00 
bool00 
>00 
Delete00  &
(00& '
T00' (
entity00) /
)00/ 0
{11 	
return22 
await22 
generic22  
.22  !
Delete22! '
(22' (
entity22( .
)22. /
;22/ 0
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55 

SoftDelete55  *
(55* +
T55+ ,
entity55- 3
)553 4
{66 	
return77 
await77 
generic77  
.77  !

SoftDelete77! +
(77+ ,
entity77, 2
)772 3
;773 4
}88 	
public:: 
async:: 
Task:: 
<:: 
IEnumerable:: %
<::% &
T::& '
>::' (
>::( )
GetAll::* 0
(::0 1
string::1 7

columnName::8 B
,::B C
Guid::D H
ID::I K
)::K L
{;; 	
return<< 
await<< 
generic<<  
.<<  !
GetAll<<! '
(<<' (

columnName<<( 2
,<<2 3
ID<<4 6
)<<6 7
;<<7 8
}== 	
public?? 
async?? 
Task?? 
<?? 
IEnumerable?? %
<??% &
T??& '
>??' (
>??( )
GetAll??* 0
(??0 1
string??1 7

columnName??8 B
,??B C
int??D G
ID??H J
)??J K
{@@ 	
returnAA 
awaitAA 
genericAA  
.AA  !
GetAllAA! '
(AA' (

columnNameAA( 2
,AA2 3
IDAA4 6
)AA6 7
;AA7 8
}BB 	
}CC 
}DD ‚◊
ÉC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\BaseAccess\Generic\GenericDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4

BaseAccess4 >
.> ?
Generic? F
{ 
public 

class 
GenericDataAccess "
<" #
T# $
>$ %
:& '
IGenericDataAccess( :
<: ;
T; <
>< =
where> C
TD E
:F G
classH M
{ 
public 
IDbConnection 
_connection (
;( )
readonly 
string 
connectionString (
=) *
$str	+ ™
;
™ ´
public 
GenericDataAccess  
(  !
)! "
{ 	
_connection 
= 
new 
SqlConnection +
(+ ,
connectionString, <
)< =
;= >
} 	
public 
async 
Task 
< 
bool 
> 
Add  #
(# $
T$ %
entity& ,
), -
{ 	
int 
rowsEffected 
= 
$num  
;  !
try 
{   
string!! 
	tableName!!  
=!!! "
GetTableName!!# /
(!!/ 0
)!!0 1
;!!1 2
string"" 
columns"" 
=""  

GetColumns""! +
(""+ ,

excludeKey"", 6
:""6 7
true""8 <
)""< =
;""= >
string## 

properties## !
=##" #
GetPropertyNames##$ 4
(##4 5

excludeKey##5 ?
:##? @
true##A E
)##E F
;##F G
string$$ 
query$$ 
=$$ 
$"$$ !
$str$$! -
{$$- .
	tableName$$. 7
}$$7 8
$str$$8 :
{$$: ;
columns$$; B
}$$B C
$str$$C M
{$$M N

properties$$N X
}$$X Y
$str$$Y Z
"$$Z [
;$$[ \
rowsEffected&& 
=&& 
await&& $
_connection&&% 0
.&&0 1
ExecuteAsync&&1 =
(&&= >
query&&> C
,&&C D
entity&&E K
)&&K L
;&&L M
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{((! "
}((# $
return** 
rowsEffected** 
>**  !
$num**" #
?**$ %
true**& *
:**+ ,
false**- 2
;**2 3
}++ 	
public-- 
async-- 
Task-- 
<-- 
T-- 
>-- 
	ReturnAdd-- &
(--& '
T--' (
entity--) /
)--/ 0
{.. 	
try00 
{11 
string22 
	tableName22  
=22! "
GetTableName22# /
(22/ 0
)220 1
;221 2
string33 
columns33 
=33  

GetColumns33! +
(33+ ,

excludeKey33, 6
:336 7
true338 <
)33< =
;33= >
string44 

properties44 !
=44" #
GetPropertyNames44$ 4
(444 5

excludeKey445 ?
:44? @
true44A E
)44E F
;44F G
string55 
query55 
=55 
$"55 !
$str55! -
{55- .
	tableName55. 7
}557 8
$str558 :
{55: ;
columns55; B
}55B C
$str55C M
{55M N

properties55N X
}55X Y
$str55Y Z
"55Z [
;55[ \
var66 
data66 
=66 
await66  
_connection66! ,
.66, -$
QueryFirstOrDefaultAsync66- E
<66E F
T66F G
>66G H
(66H I
query66I N
,66N O
entity66P V
)66V W
;66W X
return77 
data77 
;77 
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{99! "
return99# )
null99* .
;99. /
}990 1
}<< 	
public>> 
async>> 
Task>> 
<>> 
bool>> 
>>> 
Delete>>  &
(>>& '
T>>' (
entity>>) /
)>>/ 0
{?? 	
int@@ 
rowsEffected@@ 
=@@ 
$num@@  
;@@  !
tryAA 
{BB 
stringCC 
	tableNameCC  
=CC! "
GetTableNameCC# /
(CC/ 0
)CC0 1
;CC1 2
stringDD 
	keyColumnDD  
=DD! "
GetKeyColumnNameDD# 3
(DD3 4
)DD4 5
;DD5 6
stringEE 
keyPropertyEE "
=EE# $
GetKeyPropertyNameEE% 7
(EE7 8
)EE8 9
;EE9 :
stringFF 
queryFF 
=FF 
$"FF !
$strFF! -
{FF- .
	tableNameFF. 7
}FF7 8
$strFF8 ?
{FF? @
	keyColumnFF@ I
}FFI J
$strFFJ N
{FFN O
keyPropertyFFO Z
}FFZ [
"FF[ \
;FF\ ]
rowsEffectedHH 
=HH 
awaitHH $
_connectionHH% 0
.HH0 1
ExecuteAsyncHH1 =
(HH= >
queryHH> C
,HHC D
entityHHE K
)HHK L
;HHL M
}II 
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ  
{JJ! "
}JJ# $
returnLL 
rowsEffectedLL 
>LL  !
$numLL" #
?LL$ %
trueLL& *
:LL+ ,
falseLL- 2
;LL2 3
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
boolOO 
>OO 

SoftDeleteOO  *
(OO* +
TOO+ ,
entityOO- 3
)OO3 4
{PP 	
intQQ 
rowsEffectedQQ 
=QQ 
$numQQ  
;QQ  !
tryRR 
{SS 
stringTT 
	tableNameTT  
=TT! "
GetTableNameTT# /
(TT/ 0
)TT0 1
;TT1 2
stringUU 
	keyColumnUU  
=UU! "
GetKeyColumnNameUU# 3
(UU3 4
)UU4 5
;UU5 6
stringVV 
keyPropertyVV "
=VV# $
GetKeyPropertyNameVV% 7
(VV7 8
)VV8 9
;VV9 :
StringBuilderXX 
queryXX #
=XX$ %
newXX& )
StringBuilderXX* 7
(XX7 8
)XX8 9
;XX9 :
queryYY 
.YY 
AppendYY 
(YY 
$"YY 
$strYY &
{YY& '
	tableNameYY' 0
}YY0 1
$strYY1 6
"YY6 7
)YY7 8
;YY8 9
query\\ 
.\\ 
Append\\ 
(\\ 
$str\\ +
)\\+ ,
;\\, -
queryaa 
.aa 
Appendaa 
(aa 
$"aa 
$straa &
{aa& '
	keyColumnaa' 0
}aa0 1
$straa1 5
{aa5 6
keyPropertyaa6 A
}aaA B
"aaB C
)aaC D
;aaD E
rowsEffectedcc 
=cc 
awaitcc $
_connectioncc% 0
.cc0 1
ExecuteAsynccc1 =
(cc= >
querycc> C
.ccC D
ToStringccD L
(ccL M
)ccM N
,ccN O
entityccP V
)ccV W
;ccW X
}dd 
catchee 
(ee 
	Exceptionee 
exee 
)ee  
{ee! "
}ee# $
returngg 
rowsEffectedgg 
>gg  !
$numgg" #
?gg$ %
truegg& *
:gg+ ,
falsegg- 2
;gg2 3
}hh 	
publicjj 
asyncjj 
Taskjj 
<jj 
IEnumerablejj %
<jj% &
Tjj& '
>jj' (
>jj( )
GetAlljj* 0
(jj0 1
)jj1 2
{kk 	
IEnumerablell 
<ll 
Tll 
>ll 
resultll !
=ll" #
nullll$ (
;ll( )
trymm 
{nn 
stringoo 
	tableNameoo  
=oo! "
GetTableNameoo# /
(oo/ 0
)oo0 1
;oo1 2
stringpp 
querypp 
=pp 
$"pp !
$strpp! /
{pp/ 0
	tableNamepp0 9
}pp9 :
$strpp: M
"ppM N
;ppN O
resultrr 
=rr 
awaitrr 
_connectionrr *
.rr* +

QueryAsyncrr+ 5
<rr5 6
Trr6 7
>rr7 8
(rr8 9
queryrr9 >
)rr> ?
;rr? @
}ss 
catchtt 
(tt 
	Exceptiontt 
extt 
)tt  
{tt! "
}tt# $
returnvv 
resultvv 
;vv 
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy 
IEnumerableyy %
<yy% &
Tyy& '
>yy' (
>yy( )
GetAllyy* 0
(yy0 1
stringyy1 7

columnNameyy8 B
,yyB C
GuidyyD H
IDyyI K
)yyK L
{zz 	
IEnumerable{{ 
<{{ 
T{{ 
>{{ 
result{{ !
={{" #
null{{$ (
;{{( )
try|| 
{}} 
string~~ 
	tableName~~  
=~~! "
GetTableName~~# /
(~~/ 0
)~~0 1
;~~1 2
string 
query 
= 
$" !
$str! /
{/ 0
	tableName0 9
}9 :
$str: A
{A B

columnNameB L
}L M
$strM c
"c d
;d e
result
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_connection
ÅÅ *
.
ÅÅ* +

QueryAsync
ÅÅ+ 5
<
ÅÅ5 6
T
ÅÅ6 7
>
ÅÅ7 8
(
ÅÅ8 9
query
ÅÅ9 >
)
ÅÅ> ?
;
ÅÅ? @
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
ex
ÉÉ 
)
ÉÉ  
{
ÉÉ! "
}
ÉÉ# $
return
ÖÖ 
result
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
public
àà 
async
àà 
Task
àà 
<
àà 
IEnumerable
àà %
<
àà% &
T
àà& '
>
àà' (
>
àà( )
GetAll
àà* 0
(
àà0 1
string
àà1 7

columnName
àà8 B
,
ààB C
int
ààD G
ID
ààH J
)
ààJ K
{
ââ 	
IEnumerable
ää 
<
ää 
T
ää 
>
ää 
result
ää !
=
ää" #
null
ää$ (
;
ää( )
try
ãã 
{
åå 
string
çç 
	tableName
çç  
=
çç! "
GetTableName
çç# /
(
çç/ 0
)
çç0 1
;
çç1 2
string
éé 
query
éé 
=
éé 
$"
éé !
$str
éé! /
{
éé/ 0
	tableName
éé0 9
}
éé9 :
$str
éé: A
{
ééA B

columnName
ééB L
}
ééL M
$str
ééM c
"
ééc d
;
ééd e
result
êê 
=
êê 
await
êê 
_connection
êê *
.
êê* +

QueryAsync
êê+ 5
<
êê5 6
T
êê6 7
>
êê7 8
(
êê8 9
query
êê9 >
)
êê> ?
;
êê? @
}
ëë 
catch
íí 
(
íí 
	Exception
íí 
ex
íí 
)
íí  
{
íí! "
}
íí# $
return
îî 
result
îî 
;
îî 
}
ïï 	
public
óó 
async
óó 
Task
óó 
<
óó 
T
óó 
>
óó 
GetById
óó $
(
óó$ %
int
óó% (
Id
óó) +
)
óó+ ,
{
òò 	
IEnumerable
ôô 
<
ôô 
T
ôô 
>
ôô 
result
ôô !
=
ôô" #
null
ôô$ (
;
ôô( )
try
öö 
{
õõ 
string
úú 
	tableName
úú  
=
úú! "
GetTableName
úú# /
(
úú/ 0
)
úú0 1
;
úú1 2
string
ùù 
	keyColumn
ùù  
=
ùù! "
GetKeyColumnName
ùù# 3
(
ùù3 4
)
ùù4 5
;
ùù5 6
string
ûû 
query
ûû 
=
ûû 
$"
ûû !
$str
ûû! /
{
ûû/ 0
	tableName
ûû0 9
}
ûû9 :
$str
ûû: A
{
ûûA B
	keyColumn
ûûB K
}
ûûK L
$str
ûûL P
{
ûûP Q
Id
ûûQ S
}
ûûS T
$str
ûûT f
"
ûûf g
;
ûûg h
result
†† 
=
†† 
await
†† 
_connection
†† *
.
††* +

QueryAsync
††+ 5
<
††5 6
T
††6 7
>
††7 8
(
††8 9
query
††9 >
)
††> ?
;
††? @
}
°° 
catch
¢¢ 
(
¢¢ 
	Exception
¢¢ 
ex
¢¢ 
)
¢¢  
{
¢¢! "
}
¢¢# $
return
§§ 
result
§§ 
.
§§ 
FirstOrDefault
§§ (
(
§§( )
)
§§) *
;
§§* +
}
•• 	
public
ßß 
async
ßß 
Task
ßß 
<
ßß 
bool
ßß 
>
ßß 
Update
ßß  &
(
ßß& '
T
ßß' (
entity
ßß) /
)
ßß/ 0
{
®® 	
int
©© 
rowsEffected
©© 
=
©© 
$num
©©  
;
©©  !
try
™™ 
{
´´ 
string
¨¨ 
	tableName
¨¨  
=
¨¨! "
GetTableName
¨¨# /
(
¨¨/ 0
)
¨¨0 1
;
¨¨1 2
string
≠≠ 
	keyColumn
≠≠  
=
≠≠! "
GetKeyColumnName
≠≠# 3
(
≠≠3 4
)
≠≠4 5
;
≠≠5 6
string
ÆÆ 
keyProperty
ÆÆ "
=
ÆÆ# $ 
GetKeyPropertyName
ÆÆ% 7
(
ÆÆ7 8
)
ÆÆ8 9
;
ÆÆ9 :
StringBuilder
∞∞ 
query
∞∞ #
=
∞∞$ %
new
∞∞& )
StringBuilder
∞∞* 7
(
∞∞7 8
)
∞∞8 9
;
∞∞9 :
query
±± 
.
±± 
Append
±± 
(
±± 
$"
±± 
$str
±± &
{
±±& '
	tableName
±±' 0
}
±±0 1
$str
±±1 6
"
±±6 7
)
±±7 8
;
±±8 9
foreach
≥≥ 
(
≥≥ 
var
≥≥ 
property
≥≥ %
in
≥≥& (
GetProperties
≥≥) 6
(
≥≥6 7
true
≥≥7 ;
)
≥≥; <
)
≥≥< =
{
¥¥ 
var
µµ 

columnAttr
µµ "
=
µµ# $
property
µµ% -
.
µµ- . 
GetCustomAttribute
µµ. @
<
µµ@ A
ColumnAttribute
µµA P
>
µµP Q
(
µµQ R
)
µµR S
;
µµS T
if
∂∂ 
(
∂∂ 
!
∂∂ 
property
∂∂ !
.
∂∂! "
	IsDefined
∂∂" +
(
∂∂+ ,
typeof
∂∂, 2
(
∂∂2 3!
ForeignKeyAttribute
∂∂3 F
)
∂∂F G
)
∂∂G H
&&
∂∂I K
!
∂∂L M
property
∂∂M U
.
∂∂U V
	IsDefined
∂∂V _
(
∂∂_ `
typeof
∂∂` f
(
∂∂f g 
NotMappedAttribute
∂∂g y
)
∂∂y z
)
∂∂z {
)
∂∂{ |
{
∑∑ 
string
∏∏ 
propertyName
∏∏ +
=
∏∏, -
property
∏∏. 6
.
∏∏6 7
Name
∏∏7 ;
;
∏∏; <
string
ππ 

columnName
ππ )
=
ππ* +

columnAttr
ππ, 6
?
ππ6 7
.
ππ7 8
Name
ππ8 <
??
ππ= ?
propertyName
ππ@ L
;
ππL M
query
ªª 
.
ªª 
Append
ªª $
(
ªª$ %
$"
ªª% '
{
ªª' (

columnName
ªª( 2
}
ªª2 3
$str
ªª3 7
{
ªª7 8
propertyName
ªª8 D
}
ªªD E
$str
ªªE F
"
ªªF G
)
ªªG H
;
ªªH I
}
ºº 
else
ΩΩ 
continue
ææ  
;
ææ  !
}
øø 
query
¡¡ 
.
¡¡ 
Remove
¡¡ 
(
¡¡ 
query
¡¡ "
.
¡¡" #
Length
¡¡# )
-
¡¡* +
$num
¡¡, -
,
¡¡- .
$num
¡¡/ 0
)
¡¡0 1
;
¡¡1 2
query
√√ 
.
√√ 
Append
√√ 
(
√√ 
$"
√√ 
$str
√√ &
{
√√& '
	keyColumn
√√' 0
}
√√0 1
$str
√√1 5
{
√√5 6
keyProperty
√√6 A
}
√√A B
"
√√B C
)
√√C D
;
√√D E
rowsEffected
≈≈ 
=
≈≈ 
await
≈≈ $
_connection
≈≈% 0
.
≈≈0 1
ExecuteAsync
≈≈1 =
(
≈≈= >
query
≈≈> C
.
≈≈C D
ToString
≈≈D L
(
≈≈L M
)
≈≈M N
,
≈≈N O
entity
≈≈P V
)
≈≈V W
;
≈≈W X
}
∆∆ 
catch
«« 
(
«« 
	Exception
«« 
ex
«« 
)
««  
{
««! "
}
««# $
return
…… 
rowsEffected
…… 
>
……  !
$num
……" #
?
……$ %
true
……& *
:
……+ ,
false
……- 2
;
……2 3
}
   	
private
ÃÃ 
string
ÃÃ 
GetTableName
ÃÃ #
(
ÃÃ# $
)
ÃÃ$ %
{
ÕÕ 	
string
ŒŒ 
	tableName
ŒŒ 
=
ŒŒ 
$str
ŒŒ !
;
ŒŒ! "
var
œœ 
type
œœ 
=
œœ 
typeof
œœ 
(
œœ 
T
œœ 
)
œœ  
;
œœ  !
var
–– 
	tableAttr
–– 
=
–– 
type
––  
.
––  ! 
GetCustomAttribute
––! 3
<
––3 4
TableAttribute
––4 B
>
––B C
(
––C D
)
––D E
;
––E F
if
—— 
(
—— 
	tableAttr
—— 
!=
—— 
null
—— !
)
——! "
{
““ 
	tableName
”” 
=
”” 
	tableAttr
”” %
.
””% &
Name
””& *
;
””* +
return
‘‘ 
	tableName
‘‘  
;
‘‘  !
}
’’ 
return
◊◊ 
type
◊◊ 
.
◊◊ 
Name
◊◊ 
+
◊◊ 
$str
◊◊ "
;
◊◊" #
}
ÿÿ 	
public
⁄⁄ 
static
⁄⁄ 
string
⁄⁄ 
GetKeyColumnName
⁄⁄ -
(
⁄⁄- .
)
⁄⁄. /
{
€€ 	
PropertyInfo
‹‹ 
[
‹‹ 
]
‹‹ 

properties
‹‹ %
=
‹‹& '
typeof
‹‹( .
(
‹‹. /
T
‹‹/ 0
)
‹‹0 1
.
‹‹1 2
GetProperties
‹‹2 ?
(
‹‹? @
)
‹‹@ A
;
‹‹A B
foreach
ﬁﬁ 
(
ﬁﬁ 
PropertyInfo
ﬁﬁ !
property
ﬁﬁ" *
in
ﬁﬁ+ -

properties
ﬁﬁ. 8
)
ﬁﬁ8 9
{
ﬂﬂ 
object
‡‡ 
[
‡‡ 
]
‡‡ 
keyAttributes
‡‡ &
=
‡‡' (
property
‡‡) 1
.
‡‡1 2!
GetCustomAttributes
‡‡2 E
(
‡‡E F
typeof
‡‡F L
(
‡‡L M
KeyAttribute
‡‡M Y
)
‡‡Y Z
,
‡‡Z [
true
‡‡\ `
)
‡‡` a
;
‡‡a b
if
‚‚ 
(
‚‚ 
keyAttributes
‚‚ !
!=
‚‚" $
null
‚‚% )
&&
‚‚* ,
keyAttributes
‚‚- :
.
‚‚: ;
Length
‚‚; A
>
‚‚B C
$num
‚‚D E
)
‚‚E F
{
„„ 
object
‰‰ 
[
‰‰ 
]
‰‰ 
columnAttributes
‰‰ -
=
‰‰. /
property
‰‰0 8
.
‰‰8 9!
GetCustomAttributes
‰‰9 L
(
‰‰L M
typeof
‰‰M S
(
‰‰S T
ColumnAttribute
‰‰T c
)
‰‰c d
,
‰‰d e
true
‰‰f j
)
‰‰j k
;
‰‰k l
if
ÊÊ 
(
ÊÊ 
columnAttributes
ÊÊ (
!=
ÊÊ) +
null
ÊÊ, 0
&&
ÊÊ1 3
columnAttributes
ÊÊ4 D
.
ÊÊD E
Length
ÊÊE K
>
ÊÊL M
$num
ÊÊN O
)
ÊÊO P
{
ÁÁ 
ColumnAttribute
ËË '
columnAttribute
ËË( 7
=
ËË8 9
(
ËË: ;
ColumnAttribute
ËË; J
)
ËËJ K
columnAttributes
ËËK [
[
ËË[ \
$num
ËË\ ]
]
ËË] ^
;
ËË^ _
return
ÈÈ 
columnAttribute
ÈÈ .
.
ÈÈ. /
Name
ÈÈ/ 3
;
ÈÈ3 4
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
return
ÌÌ 
property
ÌÌ '
.
ÌÌ' (
Name
ÌÌ( ,
;
ÌÌ, -
}
ÓÓ 
}
ÔÔ 
}
 
return
ÚÚ 
null
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
private
ˆˆ 
string
ˆˆ 

GetColumns
ˆˆ !
(
ˆˆ! "
bool
ˆˆ" &

excludeKey
ˆˆ' 1
=
ˆˆ2 3
false
ˆˆ4 9
)
ˆˆ9 :
{
˜˜ 	
var
¯¯ 
type
¯¯ 
=
¯¯ 
typeof
¯¯ 
(
¯¯ 
T
¯¯ 
)
¯¯  
;
¯¯  !
var
˘˘ 
columns
˘˘ 
=
˘˘ 
string
˘˘  
.
˘˘  !
Join
˘˘! %
(
˘˘% &
$str
˘˘& *
,
˘˘* +
type
˘˘, 0
.
˘˘0 1
GetProperties
˘˘1 >
(
˘˘> ?
)
˘˘? @
.
˙˙ 
Where
˙˙ 
(
˙˙ 
p
˙˙ 
=>
˙˙ 
!
˙˙ 

excludeKey
˙˙ '
||
˙˙( *
!
˙˙+ ,
p
˙˙, -
.
˙˙- .
	IsDefined
˙˙. 7
(
˙˙7 8
typeof
˙˙8 >
(
˙˙> ?
KeyAttribute
˙˙? K
)
˙˙K L
)
˙˙L M
&&
˙˙N P
!
˙˙Q R
p
˙˙R S
.
˙˙S T
	IsDefined
˙˙T ]
(
˙˙] ^
typeof
˙˙^ d
(
˙˙d e 
NotMappedAttribute
˙˙e w
)
˙˙w x
)
˙˙x y
)
˙˙y z
.
˚˚ 
Select
˚˚ 
(
˚˚ 
p
˚˚ 
=>
˚˚ 
{
¸¸ 
var
˝˝ 

columnAttr
˝˝ "
=
˝˝# $
p
˝˝% &
.
˝˝& ' 
GetCustomAttribute
˝˝' 9
<
˝˝9 :
ColumnAttribute
˝˝: I
>
˝˝I J
(
˝˝J K
)
˝˝K L
;
˝˝L M
return
˛˛ 

columnAttr
˛˛ %
!=
˛˛& (
null
˛˛) -
?
˛˛. /

columnAttr
˛˛0 :
.
˛˛: ;
Name
˛˛; ?
:
˛˛@ A
p
˛˛B C
.
˛˛C D
Name
˛˛D H
;
˛˛H I
}
ˇˇ 
)
ˇˇ 
)
ˇˇ 
;
ˇˇ 
return
ÅÅ 
columns
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
	protected
ÑÑ 
string
ÑÑ 
GetPropertyNames
ÑÑ )
(
ÑÑ) *
bool
ÑÑ* .

excludeKey
ÑÑ/ 9
=
ÑÑ: ;
false
ÑÑ< A
)
ÑÑA B
{
ÖÖ 	
var
ÜÜ 

properties
ÜÜ 
=
ÜÜ 
typeof
ÜÜ #
(
ÜÜ# $
T
ÜÜ$ %
)
ÜÜ% &
.
ÜÜ& '
GetProperties
ÜÜ' 4
(
ÜÜ4 5
)
ÜÜ5 6
.
áá 
Where
áá 
(
áá 
p
áá 
=>
áá 
!
áá 

excludeKey
áá '
||
áá( *
p
áá+ ,
.
áá, - 
GetCustomAttribute
áá- ?
<
áá? @
KeyAttribute
áá@ L
>
ááL M
(
ááM N
)
ááN O
==
ááP R
null
ááS W
&&
ááX Z
!
áá[ \
p
áá\ ]
.
áá] ^
	IsDefined
áá^ g
(
áág h
typeof
ááh n
(
áán o!
NotMappedAttributeááo Å
)ááÅ Ç
)ááÇ É
)ááÉ Ñ
;ááÑ Ö
var
ââ 
values
ââ 
=
ââ 
string
ââ 
.
ââ  
Join
ââ  $
(
ââ$ %
$str
ââ% )
,
ââ) *

properties
ââ+ 5
.
ââ5 6
Select
ââ6 <
(
ââ< =
p
ââ= >
=>
ââ? A
{
ää 
return
ãã 
$"
ãã 
$str
ãã 
{
ãã 
p
ãã 
.
ãã 
Name
ãã !
}
ãã! "
"
ãã" #
;
ãã# $
}
åå 
)
åå 
)
åå 
;
åå 
return
éé 
values
éé 
;
éé 
}
èè 	
	protected
ëë 
IEnumerable
ëë 
<
ëë 
PropertyInfo
ëë *
>
ëë* +
GetProperties
ëë, 9
(
ëë9 :
bool
ëë: >

excludeKey
ëë? I
=
ëëJ K
false
ëëL Q
)
ëëQ R
{
íí 	
var
ìì 

properties
ìì 
=
ìì 
typeof
ìì #
(
ìì# $
T
ìì$ %
)
ìì% &
.
ìì& '
GetProperties
ìì' 4
(
ìì4 5
)
ìì5 6
.
îî 
Where
îî 
(
îî 
p
îî 
=>
îî 
!
îî 

excludeKey
îî '
||
îî( *
p
îî+ ,
.
îî, - 
GetCustomAttribute
îî- ?
<
îî? @
KeyAttribute
îî@ L
>
îîL M
(
îîM N
)
îîN O
==
îîP R
null
îîS W
&&
îîX Z
!
îî[ \
p
îî\ ]
.
îî] ^
	IsDefined
îî^ g
(
îîg h
typeof
îîh n
(
îîn o!
NotMappedAttributeîîo Å
)îîÅ Ç
)îîÇ É
)îîÉ Ñ
;îîÑ Ö
return
ññ 

properties
ññ 
;
ññ 
}
óó 	
	protected
ôô 
string
ôô  
GetKeyPropertyName
ôô +
(
ôô+ ,
)
ôô, -
{
öö 	
var
õõ 

properties
õõ 
=
õõ 
typeof
õõ #
(
õõ# $
T
õõ$ %
)
õõ% &
.
õõ& '
GetProperties
õõ' 4
(
õõ4 5
)
õõ5 6
.
úú 
Where
úú 
(
úú 
p
úú 
=>
úú 
p
úú 
.
úú  
GetCustomAttribute
úú 0
<
úú0 1
KeyAttribute
úú1 =
>
úú= >
(
úú> ?
)
úú? @
!=
úúA C
null
úúD H
&&
úúI K
!
úúL M
p
úúM N
.
úúN O
	IsDefined
úúO X
(
úúX Y
typeof
úúY _
(
úú_ ` 
NotMappedAttribute
úú` r
)
úúr s
)
úús t
)
úút u
;
úúu v
if
ûû 
(
ûû 

properties
ûû 
.
ûû 
Any
ûû 
(
ûû 
)
ûû  
)
ûû  !
{
üü 
return
†† 

properties
†† !
.
††! "
FirstOrDefault
††" 0
(
††0 1
)
††1 2
.
††2 3
Name
††3 7
;
††7 8
}
°° 
return
££ 
null
££ 
;
££ 
}
§§ 	
}
•• 
}¶¶ Ä
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\FinanceManagerAccess\FinanceManagerDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4 
FinanceManagerAccess

4 H
{ 
public 

class $
FinanceManagerDataAccess )
:* +
BaseDataAccess, :
<: ;
FinanceManager; I
>I J
,K L%
IFinanceManagerDataAccessM f
{ 
} 
} Ç
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\PaybackReceiptAccess\PaybackReceiptDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4 
PaybackReceiptAccess

4 H
{ 
internal 
class $
PaybackReceiptDataAccess +
:, -
BaseDataAccess. <
<< =
PaybackReceipt= K
>K L
,M N%
IPaybackReceiptDataAccessO h
{ 
} 
} Ä
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\PaymentReceiptAccess\PaymentReceiptDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4 
PaymentReceiptAccess

4 H
{ 
public 

class $
PaymentReceiptDataAccess )
:* +
BaseDataAccess, :
<: ;
PaymentReceipt; I
>I J
,K L%
IPaymentReceiptDataAccessM f
{ 
} 
} œ
~C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\ProjectAccess\ProjectDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
ProjectAccess4 A
{ 
public 

class 
ProjectDataAccess "
:# $
BaseDataAccess% 3
<3 4
Project4 ;
>; <
,< =
IProjectDataAccess> P
{ 
private 
readonly 
ConnectionHelper )
_connectionHelper* ;
;; <
public 
ProjectDataAccess  
(  !
)! "
{ 	
_connectionHelper 
= 
new  #
ConnectionHelper$ 4
(4 5
)5 6
;6 7
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Project& -
>- .
>. /!
GetAllProjectOfWorker0 E
(E F
intF I
workerIDJ R
)R S
{ 	
using 
var 
conn 
= 
_connectionHelper .
.. /
CreateConnection/ ?
(? @
)@ A
;A B
var 
query 
= 
$str	 …
;
…  
return 
await 
conn 
. 

QueryAsync (
<( )
Project) 0
>0 1
(1 2
query2 7
,7 8
new9 <
{= >
WorkerID> F
=G H
workerIDI Q
}R S
)S T
;T U
} 	
} 
} ù
ÄC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\ApprovalStateMachine.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
{ 
public 

class  
ApprovalStateMachine %
(% &.
"ITitleAmountApprovalRuleDataAccess& H
dalI L
,L M+
IAdvanceRequestStatusDataAccessN m

advanceDaln x
)x y
:z {
StateMachine	| à
{ 
public 
StateBuilder 
CreateBuilder )
() *.
"ITitleAmountApprovalRuleDataAccess* L
dalM P
,P Q+
IAdvanceRequestStatusDataAccessR q

advanceDalr |
,| }
decimal	~ Ö
requestedAmount
Ü ï
)
ï ñ
{ 	
return 
new 
StateBuilder #
(# $
dal$ '
,' (

advanceDal) 3
,3 4
requestedAmount5 D
,D E
thisF J
)J K
;K L
} 	
public 
void &
InitializeApprovalWorkflow .
(. / 
AdvanceRequestStatus/ C
advanceRequestD R
,R S
decimalT [
?[ \
requestedAmount] l
,l m
IDbTransactionn |
transaction	} à
)
à â
{ 	

Initialize 
( 
new 
PendingState '
(' (
this( ,
,, -
advanceRequest. <
,< =
transaction> I
,I J

advanceDalK U
)U V
)V W
;W X
CreateBuilder 
( 
dal 
, 

advanceDal )
,) *
requestedAmount+ :
.: ;
Value; @
)@ A
. 
AddStateByRule 
(  
transaction  +
,+ ,
$str- ;
,; <
new= @
UnitManagerStateA Q
(Q R
thisR V
,V W
advanceRequestX f
,f g
transactionh s
,s t

advanceDalu 
)	 Ä
)
Ä Å
. 
AddStateByRule 
(  
transaction  +
,+ ,
$str- 7
,7 8
new9 <
DirectorState= J
(J K
thisK O
,O P
advanceRequestQ _
,_ `
transactiona l
,l m

advanceDaln x
)x y
)y z
. 
AddStateByRule 
(  
transaction  +
,+ ,
$str- 2
,2 3
new4 7
GMYState8 @
(@ A
thisA E
,E F
advanceRequestG U
,U V
transactionW b
,b c

advanceDald n
)n o
)o p
. 
AddStateByRule 
(  
transaction  +
,+ ,
$str- 1
,1 2
new3 6
GMState7 >
(> ?
this? C
,C D
advanceRequestE S
,S T
transactionU `
,` a

advanceDalb l
)l m
)m n
. 
Build 
( 
) 
; 
}   	
}%% 
}&& ÷

qC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\State.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
{ 
public		 

class		 
State		 
{

 
	protected 
StateMachine 
stateMachine +
;+ ,
public 
enum 
States 
{ 	
UnitManager 
, 
Director 
, 
GMY 
, 
GM 
, 
FinanceManager 
, 

Accountant 
} 	
public 
State 
( 
StateMachine !
stateMachine" .
). /
{ 	
this 
. 
stateMachine 
= 
stateMachine  ,
;, -
} 	
public 
virtual 
void 

EnterState &
(& '
)' (
{) *
}+ ,
public 
virtual 
void 
	ExitState %
(% &
)& '
{( )
}* +
} 
} ‘
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\StateBuilder.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4
StatePattern

4 @
{ 
public 

class 
StateBuilder 
{ 
private  
ApprovalStateMachine $
_stateMachine% 2
;2 3
private 
decimal 
_requestedAmount (
;( )
private 

Dictionary 
< 
string !
,! "
decimal# *
>* +
	_ruleData, 5
;5 6
public 
StateBuilder 
( .
"ITitleAmountApprovalRuleDataAccess >
dal? B
,B C+
IAdvanceRequestStatusDataAccessD c

advanceDald n
,n o
decimalp w
requestedAmount	x á
,
á à"
ApprovalStateMachine
â ù
_stateMachine
û ´
)
´ ¨
{ 	
this 
. 
_stateMachine 
=  
_stateMachine! .
;. /
_requestedAmount 
= 
requestedAmount .
;. /
	_ruleData 
= 
dal 
. $
GetRuleAccordingToAmount 4
(4 5
)5 6
.6 7
Result7 =
.= >
ToDictionary> J
(J K
itemK O
=>P R
itemS W
.W X
TitleX ]
.] ^
	TitleName^ g
,g h
itemi m
=>n p
itemq u
.u v
	MinAmountv 
)	 Ä
;
Ä Å
} 	
public 
StateBuilder 
AddStateByRule *
(* +
IDbTransaction+ 9
transaction: E
,E F
stringG M
ruleNameN V
,V W
StateX ]
state^ c
)c d
{ 	
if 
( 
_requestedAmount  
>=! #
	_ruleData$ -
[- .
ruleName. 6
]6 7
)7 8
{ 
_stateMachine 
. 
ChangeState )
() *
state* /
)/ 0
;0 1
} 
return   
this   
;   
}!! 	
public##  
ApprovalStateMachine## #
Build##$ )
(##) *
)##* +
{$$ 	
return%% 
_stateMachine%%  
;%%  !
}&& 	
}'' 
}(( ë
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\StateMachine.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
{ 
public		 

class		 
StateMachine		 
{

 
public 
State 
CurrentState !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void 

Initialize 
( 
State $
startingState% 2
)2 3
{ 	
CurrentState 
= 
startingState (
;( )
CurrentState 
. 

EnterState #
(# $
)$ %
;% &
} 	
public 
void 
ChangeState 
(  
State  %
newState& .
). /
{ 	
CurrentState 
. 
	ExitState "
(" #
)# $
;$ %
CurrentState 
= 
newState #
;# $
CurrentState 
. 

EnterState #
(# $
)$ %
;% &
} 	
} 
} Û	
ÇC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\AccountantState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{ 
public		 

class		 
AccountantState		  
:		! "
State		# (
{

 
public 
AccountantState 
( 
StateMachine +
stateMachine, 8
)8 9
:: ;
base< @
(@ A
stateMachineA M
)M N
{ 	
} 	
public 
override 
void 

EnterState '
(' (
)( )
{ 	
base 
. 

EnterState 
( 
) 
; 
} 	
public 
override 
void 
	ExitState &
(& '
)' (
{ 	
base 
. 
	ExitState 
( 
) 
; 
} 	
} 
} °
ÄC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\DirectorState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{ 
public 

class 
DirectorState 
:  
State! &
{ +
IAdvanceRequestStatusDataAccess '
_dal( ,
;, - 
AdvanceRequestStatus 
_advanceRequest ,
;, -
IDbTransaction 
dbTransaction $
;$ %
public 
DirectorState 
( 
StateMachine )
stateMachine* 6
,6 7 
AdvanceRequestStatus8 L
advanceRequestM [
,[ \
IDbTransaction] k
transactionl w
,w x,
IAdvanceRequestStatusDataAccess	y ò
dal
ô ú
)
ú ù
:
û ü
base
† §
(
§ •
stateMachine
• ±
)
± ≤
{ 	
_advanceRequest 
= 
advanceRequest ,
;, -
dbTransaction 
= 
transaction '
;' (
_dal 
= 
dal 
; 
} 	
public 
override 
async 
void "

EnterState# -
(- .
). /
{ 	
base 
. 

EnterState 
( 
) 
; 
await 
_dal 
. 
AddAdvanceRequest (
(( )
_advanceRequest) 8
,8 9
$str: J
,J K
dbTransactionL Y
)Y Z
;Z [
}   	
public"" 
override"" 
void"" 
	ExitState"" &
(""& '
)""' (
{## 	
base$$ 
.$$ 
	ExitState$$ 
($$ 
)$$ 
;$$ 
}&& 	
}'' 
}(( ˇ	
ÜC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\FinanceManagerState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{		 
public

 

class

 
FinanceManagerState

 $
:

% &
State

' ,
{ 
public 
FinanceManagerState "
(" #
StateMachine# /
stateMachine0 <
)< =
:> ?
base@ D
(D E
stateMachineE Q
)Q R
{ 	
} 	
public 
override 
void 

EnterState '
(' (
)( )
{ 	
base 
. 

EnterState 
( 
) 
; 
} 	
public 
override 
void 
	ExitState &
(& '
)' (
{ 	
base 
. 
	ExitState 
( 
) 
; 
} 	
} 
} ≥
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\GMState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{ 
public 

class 
GMState 
: 
State  
{ +
IAdvanceRequestStatusDataAccess '
_dal( ,
;, - 
AdvanceRequestStatus 
_advanceRequest ,
;, -
IDbTransaction 
dbTransaction $
;$ %
public 
GMState 
( 
StateMachine #
stateMachine$ 0
,0 1 
AdvanceRequestStatus2 F
advanceRequestG U
,U V
IDbTransactionW e
dbTransactionf s
,s t,
IAdvanceRequestStatusDataAccess	u î
dal
ï ò
)
ò ô
:
ö õ
base
ú †
(
† °
stateMachine
° ≠
)
≠ Æ
{ 	
_advanceRequest 
= 
advanceRequest ,
;, -
this 
. 
dbTransaction 
=  
dbTransaction! .
;. /
_dal 
= 
dal 
; 
} 	
public 
override 
async 
void "

EnterState# -
(- .
). /
{ 	
base 
. 

EnterState 
( 
) 
; 
await 
_dal 
. 
AddAdvanceRequest (
(( )
_advanceRequest) 8
,8 9
$str: D
,D E
dbTransactionF S
)S T
;T U
} 	
public 
override 
void 
	ExitState &
(& '
)' (
{   	
base!! 
.!! 
	ExitState!! 
(!! 
)!! 
;!! 
}## 	
}$$ 
}%% ∂
{C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\GMYState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{ 
public 

class 
GMYState 
: 
State !
{ +
IAdvanceRequestStatusDataAccess '
_dal( ,
;, - 
AdvanceRequestStatus 
_advanceRequest ,
;, -
IDbTransaction 
dbTransaction $
;$ %
public 
GMYState 
( 
StateMachine $
stateMachine% 1
,1 2 
AdvanceRequestStatus3 G
advanceRequestH V
,V W
IDbTransactionX f
dbTransactiong t
,t u,
IAdvanceRequestStatusDataAccess	v ï
dal
ñ ô
)
ô ö
:
õ ú
base
ù °
(
° ¢
stateMachine
¢ Æ
)
Æ Ø
{ 	
_advanceRequest 
= 
advanceRequest ,
;, -
this 
. 
dbTransaction 
=  
dbTransaction! .
;. /
_dal 
= 
dal 
; 
} 	
public 
override 
async 
void "

EnterState# -
(- .
). /
{ 	
base 
. 

EnterState 
( 
) 
; 
await 
_dal 
. 
AddAdvanceRequest (
(( )
_advanceRequest) 8
,8 9
$str: E
,E F
dbTransactionG T
)T U
;U V
} 	
public   
override   
void   
	ExitState   &
(  & '
)  ' (
{!! 	
base"" 
."" 
	ExitState"" 
("" 
)"" 
;"" 
}$$ 	
}%% 
}&& ¥
C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\PendingState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{ 
public 

class 
PendingState 
: 
State  %
{ +
IAdvanceRequestStatusDataAccess '
_dal( ,
;, - 
AdvanceRequestStatus 
_advanceRequest ,
;, -
IDbTransaction 
dbTransaction $
;$ %
public 
PendingState 
( 
StateMachine (
stateMachine) 5
,5 6 
AdvanceRequestStatus7 K
advanceRequestL Z
,Z [
IDbTransaction\ j
dbTransactionk x
,x y,
IAdvanceRequestStatusDataAccess	z ô
dal
ö ù
)
ù û
:
ü †
base
° •
(
• ¶
stateMachine
¶ ≤
)
≤ ≥
{ 	
_advanceRequest 
= 
advanceRequest ,
;, -
this 
. 
dbTransaction 
=  
dbTransaction! .
;. /
_dal 
= 
dal 
; 
} 	
public 
override 
async 
void "

EnterState# -
(- .
). /
{ 	
base 
. 

EnterState 
( 
) 
; 
_advanceRequest 
. 
IsActive $
=% &
true' +
;+ ,
await 
_dal 
. 
AddAdvanceRequest (
(( )
_advanceRequest) 8
,8 9
$str: E
,E F
dbTransactionG T
)T U
;U V
} 	
public   
override   
void   
	ExitState   &
(  & '
)  ' (
{!! 	
base"" 
."" 
	ExitState"" 
("" 
)"" 
;"" 
}$$ 	
}%% 
}&& ¬
ÉC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\StatePattern\States\UnitManagerState.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
StatePattern4 @
.@ A
StatesA G
{ 
public 

class 
UnitManagerState !
:" #
State$ )
{ +
IAdvanceRequestStatusDataAccess '
_dal( ,
;, - 
AdvanceRequestStatus 
_advanceRequest ,
;, -
IDbTransaction 
dbTransaction $
;$ %
public 
UnitManagerState 
(  
StateMachine  ,
stateMachine- 9
,9 : 
AdvanceRequestStatus; O
advanceRequestP ^
,^ _
IDbTransaction` n
dbTransactiono |
,| },
IAdvanceRequestStatusDataAccess	~ ù
dal
û °
)
° ¢
:
£ §
base
• ©
(
© ™
stateMachine
™ ∂
)
∂ ∑
{ 	
_advanceRequest 
= 
advanceRequest ,
;, -
this 
. 
dbTransaction 
=  
dbTransaction! .
;. /
_dal 
= 
dal 
; 
} 	
public 
override 
async 
void "

EnterState# -
(- .
). /
{ 	
base 
. 

EnterState 
( 
) 
; 
_advanceRequest 
. 
IsActive $
=% &
false' ,
;, -
await 
_dal 
. 
AddAdvanceRequest (
(( )
_advanceRequest) 8
,8 9
$str: N
,N O
dbTransactionP ]
)] ^
;^ _
}   	
public"" 
override"" 
void"" 
	ExitState"" &
(""& '
)""' (
{## 	
base$$ 
.$$ 
	ExitState$$ 
($$ 
)$$ 
;$$ 
}&& 	
}'' 
}(( …
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\TitleAccess\TitleDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4
TitleAccess

4 ?
{ 
public 

class 
TitleDataAccess  
:! "
BaseDataAccess# 1
<1 2
Title2 7
>7 8
,9 :
ITitleDataAccess; K
{ 
} 
} Ö
ûC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\TitleAmountApprovalRuleAccess\TitleAmountApprovalRuleDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4)
TitleAmountApprovalRuleAccess4 Q
{ 
public 

class -
!TitleAmountApprovalRuleDataAccess 2
:3 4
BaseDataAccess5 C
<C D#
TitleAmountApprovalRuleD [
>[ \
,\ ]/
"ITitleAmountApprovalRuleDataAccess	^ Ä
{ 
private 
readonly 
ConnectionHelper )
_connectionHelper* ;
;; <
public -
!TitleAmountApprovalRuleDataAccess 0
(0 1
)1 2
{ 	
_connectionHelper 
= 
new  #
ConnectionHelper$ 4
(4 5
)5 6
;6 7
} 	
public 
async 
Task 
< 
IEnumerable %
<% &#
TitleAmountApprovalRule& =
>= >
>> ?$
GetRuleAccordingToAmount@ X
(X Y
)Y Z
{ 	
using 
var 
conn 
= 
_connectionHelper .
.. /
CreateConnection/ ?
(? @
)@ A
;A B
string 
query 
= 
$str, 	
;,,	 

return00 
await00 
conn00 
.00 

QueryAsync00 (
<00( )#
TitleAmountApprovalRule00) @
,00@ A
Title00B G
,00G H#
TitleAmountApprovalRule00I `
>00` a
(00a b
query11 
,11 
(22 
tar22 
,22 
title22 
)22 
=>22 
{33 
tar44 
.44 
Title44 
=44 
title44  %
;44% &
return55 
tar55 
;55 
}66 
,66 
splitOn77 
:77 
$str77 "
)88 
;88 
}99 	
}:: 
};; √
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\UnitAccess\UnitDataAccess.cs
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
  

DataAccess

  *
.

* +
Concrete

+ 3
.

3 4

UnitAccess

4 >
{ 
public 

class 
UnitDataAccess 
:  !
BaseDataAccess" 0
<0 1
Unit1 5
>5 6
,7 8
IUnitDataAccess9 H
{ 
} 
} ¬U
xC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\UserAccess\UserDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4

UserAccess4 >
{ 
public 

class 
UserDataAccess 
:  !
IUserDataAccess" 1
{ 
private 
readonly 
ConnectionHelper )
_connectionHelper* ;
;; <
public 
UserDataAccess 
( 
) 
{ 	
_connectionHelper 
= 
new  #
ConnectionHelper$ 4
(4 5
)5 6
;6 7
} 	
public 
async 
Task 
< 
User 
> 
AddUser  '
(' (
User( ,
user- 1
,1 2
Worker3 9
worker: @
,A B
stringB H
passwordI Q
)Q R
{ 	
using 
var 
conn 
= 
_connectionHelper .
.. /
CreateConnection/ ?
(? @
)@ A
;A B
using 
( 
IDbTransaction !
transaction" -
=. /
conn0 4
.4 5
BeginTransaction5 E
(E F
)F G
)G H
{ 
try 
{ 
byte 
[ 
] 
passHash #
,# $
passSalt% -
;- .
CreatePassword!! "
(!!" #
password!!# +
,!!+ ,
out!!- 0
passHash!!1 9
,!!9 :
out!!; >
passSalt!!? G
)!!G H
;!!H I
user"" 
."" 
PasswordHash"" %
=""& '
passHash""( 0
;""0 1
user## 
.## 
PasswordSalt## %
=##& '
passSalt##( 0
;##0 1
string$$ 
query$$  
=$$! "
$str	$$# ∑
;
$$∑ ∏
string%% 
workerQuery%% &
=%%' (
$str	%%) «
;
%%« »
var'' 
data'' 
='' 
await'' $
transaction''% 0
.''0 1

Connection''1 ;
.''; <$
QueryFirstOrDefaultAsync''< T
<''T U
User''U Y
>''Y Z
(''Z [
query''[ `
,''` a
new''b e
{''f g
userName''h p
=''q r
user''s w
.''w x
Username	''x Ä
,
''Ä Å
passwordHash
''Ç é
=
''è ê
user
''ë ï
.
''ï ñ
PasswordHash
''ñ ¢
,
''¢ £
passwordSalt
''§ ∞
=
''± ≤
user
''≥ ∑
.
''∑ ∏
PasswordSalt
''∏ ƒ
,
''ƒ ≈
createdDate
''∆ —
=
''“ ”
DateTime
''‘ ‹
.
''‹ ›
Today
''› ‚
,
''‚ „
isActive
''‰ Ï
=
''Ì Ó
user
''Ô Û
.
''Û Ù
IsActive
''Ù ¸
}
''˝ ˛
,
''˛ ˇ
transaction
''Ä ã
)
''ã å
;
''å ç
await(( 
transaction(( %
.((% &

Connection((& 0
.((0 1
ExecuteAsync((1 =
(((= >
workerQuery((> I
,((I J
new((K N
{((O P

WorkerName((Q [
=((\ ]
worker((^ d
.((d e

WorkerName((e o
,((o p
WorkerEmail((q |
=((} ~
worker	(( Ö
.
((Ö Ü
WorkerEmail
((Ü ë
,
((ë í
WorkerPhonenumber
((ì §
=
((• ¶
worker
((ß ≠
.
((≠ Æ
WorkerPhonenumber
((Æ ø
,
((ø ¿
UserID
((¡ «
=
((» …
data
((  Œ
.
((Œ œ
UserID
((œ ’
,
((÷ ◊
IsActive
((◊ ﬂ
=
((‡ ·
true
((‚ Ê
}
((Á Ë
,
((Ë È
transaction
((Í ı
)
((ı ˆ
;
((ˆ ˜
transaction)) 
.))  
Commit))  &
())& '
)))' (
;))( )
return** 
data** 
;**  
}++ 
catch,, 
{-- 
transaction.. 
...  
Rollback..  (
(..( )
)..) *
;..* +
return// 
null// 
;//  
}00 
}11 
}33 	
public55 
async55 
Task55 
<55 
User55 
>55 
Login55  %
(55% &
string55& ,
username55- 5
,555 6
string557 =
password55> F
)55F G
{66 	
var77 
user77 
=77 

LoggedUser77 !
(77! "
username77" *
)77* +
;77+ ,
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
null:: 
;:: 
};; 
if== 
(== 
!== 
ControlPassword==  
(==  !
password==! )
,==) *
user==+ /
.==/ 0
PasswordSalt==0 <
,==< =
user==> B
.==B C
PasswordHash==C O
)==O P
)==P Q
{>> 
return?? 
null?? 
;?? 
}@@ 
returnAA 
userAA 
;AA 
}CC 	
publicFF 
asyncFF 
TaskFF 
<FF 
IEnumerableFF %
<FF% &
PageAuthorizationFF& 7
>FF7 8
>FF8 9'
GetAllAuthorizationOfPersonFF: U
(FFU V
stringFFV \
usernameFF] e
)FFe f
{GG 	
tryHH 
{II 
usingJJ 
varJJ 
connJJ 
=JJ  
_connectionHelperJJ! 2
.JJ2 3
CreateConnectionJJ3 C
(JJC D
)JJD E
;JJE F
stringKK 
queryKK 
=KK 
$str	KK ˘
;
KK˘ ˙
returnLL 
awaitLL 
connLL !
.LL! "

QueryAsyncLL" ,
<LL, -
PageAuthorizationLL- >
>LL> ?
(LL? @
queryLL@ E
,LLE F
newLLG J
{LLK L
UsernameLLM U
=LLV W
usernameLLX `
}LLa b
)LLb c
;LLc d
}MM 
catchNN 
{OO 
returnPP 
nullPP 
;PP 
}QQ 
}RR 	
publicUU 
UserUU 

LoggedUserUU 
(UU 
stringUU %
usernameUU& .
)UU. /
{VV 	
tryWW 
{XX 
usingYY 
varYY 
connYY 
=YY  
_connectionHelperYY! 2
.YY2 3
CreateConnectionYY3 C
(YYC D
)YYD E
;YYE F
stringZZ 
queryZZ 
=ZZ 
$str	ZZ ‚
;
ZZ‚ „
return[[ 
conn[[ 
.[[ 
Query[[ !
<[[! "
User[[" &
,[[& '
Role[[( ,
,[[, -
Worker[[. 4
,[[4 5
Title[[6 ;
,[[; <
User[[< @
>[[@ A
([[A B
query[[B G
,[[G H
([[I J
u[[J K
,[[K L
r[[M N
,[[N O
w[[P Q
,[[Q R
t[[S T
)[[T U
=>[[V X
{[[Y Z
u[[[ \
.[[\ ]
Role[[] a
=[[b c
r[[d e
;[[e f
u[[g h
.[[h i
Worker[[i o
=[[p q
w[[r s
;[[s t
u[[u v
.[[v w
Title[[w |
=[[} ~
t	[[ Ä
;
[[Ä Å
return
[[Ç à
u
[[â ä
;
[[ä ã
}
[[å ç
,
[[ç é
new
[[è í
{
[[ì î
Username
[[ï ù
=
[[û ü
username
[[† ®
}
[[© ™
,
[[™ ´
splitOn
[[¨ ≥
:
[[≥ ¥
$str
[[µ Œ
)
[[Œ œ
.
[[œ –
FirstOrDefault
[[– ﬁ
(
[[ﬁ ﬂ
)
[[ﬂ ‡
;
[[‡ ·
}\\ 
catch]] 
{^^ 
return__ 
null__ 
;__ 
}`` 
}aa 	
privatecc 
voidcc 
CreatePasswordcc #
(cc# $
stringcc$ *
passwordcc+ 3
,cc3 4
outcc5 8
bytecc9 =
[cc= >
]cc> ?
passHashcc@ H
,ccH I
outccJ M
byteccN R
[ccR S
]ccS T
passSaltccU ]
)cc] ^
{dd 	
usingee 
(ee 
varee 
hmacee 
=ee 
newee !

HMACSHA512ee" ,
(ee, -
)ee- .
)ee. /
{ff 
passHashgg 
=gg 
hmacgg 
.gg  
ComputeHashgg  +
(gg+ ,
Encodinggg, 4
.gg4 5
UTF8gg5 9
.gg9 :
GetBytesgg: B
(ggB C
passwordggC K
)ggK L
)ggL M
;ggM N
passSalthh 
=hh 
hmachh 
.hh  
Keyhh  #
;hh# $
}ii 
}jj 	
privatell 
boolll 
ControlPasswordll $
(ll$ %
stringll% +
passwordll, 4
,ll4 5
bytell6 :
[ll: ;
]ll; <
passwordSaltll= I
,llI J
bytellK O
[llO P
]llP Q
passwordHashllR ^
)ll^ _
{mm 	
usingnn 
(nn 
varnn 
hmacnn 
=nn 
newnn !

HMACSHA512nn" ,
(nn, -
passwordSaltnn- 9
)nn9 :
)nn: ;
{oo 
varpp 
passHashpp 
=pp 
hmacpp #
.pp# $
ComputeHashpp$ /
(pp/ 0
Encodingpp0 8
.pp8 9
UTF8pp9 =
.pp= >
GetBytespp> F
(ppF G
passwordppG O
)ppO P
)ppP Q
;ppQ R
forrr 
(rr 
intrr 
irr 
=rr 
$numrr 
;rr 
irr  !
<rr" #
passHashrr$ ,
.rr, -
Lengthrr- 3
;rr3 4
irr5 6
++rr6 8
)rr8 9
{ss 
iftt 
(tt 
passwordHashtt $
[tt$ %
itt% &
]tt& '
!=tt( *
passHashtt+ 3
[tt3 4
itt4 5
]tt5 6
)tt6 7
{uu 
returnvv 
falsevv $
;vv$ %
}ww 
}xx 
returnyy 
trueyy 
;yy 
}zz 
}{{ 	
}|| 
}}} œ
|C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Concrete\WorkerAccess\WorkerDataAccess.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  

DataAccess  *
.* +
Concrete+ 3
.3 4
WorkerAccess4 @
{ 
public 

class 
WorkerDataAccess !
:" #
BaseDataAccess$ 2
<2 3
Worker3 9
>9 :
,: ;
IWorkerDataAccess< M
{ 
} 
} Ø
mC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataAccess\Helper\ConnectionHelper.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  

DataAccess		  *
.		* +
Helper		+ 1
{

 
public 

class 
ConnectionHelper !
{ 
private 
readonly 
string 
connectionString  0
=1 2
$str	3 ≤
;
≤ ≥
public 
ConnectionHelper 
(  
)  !
{ 	
} 	
public 
IDbConnection 
CreateConnection -
(- .
). /
{ 	
var 
conn 
= 
new 
SqlConnection (
(( )
connectionString) 9
)9 :
;: ;
conn 
. 
Open 
( 
) 
; 
return 
conn 
; 
} 	
public 
async 
Task 
< 
IDbConnection '
>' (!
CreateConnectionAsync) >
(> ?
)? @
{ 	
var 
conn 
= 
new 
SqlConnection (
(( )
connectionString) 9
)9 :
;: ;
await 
conn 
. 
	OpenAsync  
(  !
)! "
;" #
return 
conn 
; 
} 	
public!! 
void!! 
CloseConnection!! #
(!!# $
IDbConnection!!$ 1

connection!!2 <
)!!< =
{"" 	
if## 
(## 

connection## 
!=## 
null## "
&&### %

connection##& 0
.##0 1
State##1 6
!=##7 9
ConnectionState##: I
.##I J
Closed##J P
)##P Q
{$$ 

connection%% 
.%% 
Close%%  
(%%  !
)%%! "
;%%" #
}&& 
}'' 	
}(( 
})) 