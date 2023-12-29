´&
mC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Controllers\AdvanceController.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Controllers% 0
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
AdvanceController "
(" #
IAdvanceBusiness# 3
buss4 8
)8 9
:: ;

Controller< F
{ 
[ 	
HttpGet	 
( 
$str 
)  
]  !
public 
async 
Task 
< 
IActionResult '
>' (
GetAll) /
(/ 0
)0 1
{ 	
var 
data 
= 
await 
buss !
.! "
GetAll" (
(( )
)) *
;* +
return 
Ok 
( 
data 
) 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetAllWithID) 5
(5 6
int6 9
workerID: B
)B C
{ 	
var 
data 
= 
await 
buss !
.! "
GetWorkerAdvance" 2
(2 3
workerID3 ;
); <
;< =
return 
Ok 
( 
data 
) 
; 
} 	
[ 	
ServiceFilter	 
( 
typeof 
( 
AdvanceActionFilter 1
)1 2
)2 3
]3 4
[ 	
HttpPost	 
( 
$str (
)( )
]) *
public 
async 
Task 
< 
IActionResult '
>' (

AddAdvance) 3
(3 4
[4 5
FromBody5 =
]= >
AdvanceAddDTO> K
advanceL S
)S T
{   	
var!! 
data!! 
=!! 
await!! 
buss!! !
.!!! " 
AddAdvanceWithStatus!!" 6
(!!6 7
advance!!7 >
)!!> ?
;!!? @
if"" 
("" 
data"" 
)"" 
return## 
Ok## 
(## 
data## 
)## 
;##  
else$$ 
return%% 

BadRequest%% !
(%%! "
)%%" #
;%%# $
}&& 	
[)) 	
HttpGet))	 
()) 
$str)) &
)))& '
]))' (
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
BringAllForFinance**) ;
(**; <
)**< =
{++ 	
var,, 
data,, 
=,, 
await,, 
buss,, !
.,,! "%
BringAllAdvanceForFinance,," ;
(,,; <
),,< =
;,,= >
return-- 
Ok-- 
(-- 
data-- 
)-- 
;-- 
}.. 	
[11 	
HttpGet11	 
(11 
$str11 /
)11/ 0
]110 1
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
GetAllWithAdvanceID22) <
(22< =
int22= @
	advanceID22A J
)22J K
{33 	
var44 
data44 
=44 
await44 
buss44 !
.44! "
GetAdvanceByID44" 0
(440 1
	advanceID441 :
)44: ;
;44; <
if55 
(55 
data55 
!=55 
null55 
)55 
return66 
Ok66 
(66 
data66 
)66 
;66  
return88 

BadRequest88 
(88 
)88 
;88  
}99 	
[<< 	
HttpGet<<	 
(<< 
$str<< )
)<<) *
]<<* +
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (!
BringAllForAccountant==) >
(==> ?
)==? @
{>> 	
var?? 
data?? 
=?? 
await?? 
buss?? !
.??! "(
BringAllAdvanceForAccountant??" >
(??> ?
)??? @
;??@ A
return@@ 
Ok@@ 
(@@ 
data@@ 
)@@ 
;@@ 
}AA 	
}BB 
}CC µ 
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Controllers\AdvanceRequestStatusController.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 *
AdvanceRequestStatusController		 /
(		/ 0)
IAdvanceRequestStatusBusiness		0 M
buss		N R
)		R S
:		T U

Controller		V `
{

 
[ 	
HttpGet	 
( 
$str 
) 
]  
public 
async 
Task 
< 
IActionResult '
>' (
GetAll) /
(/ 0
int0 3
	advanceID4 =
)= >
{ 	
var 
data 
= 
await 
buss !
.! "
GetWorkerAdvance" 2
(2 3
	advanceID3 <
)< =
;= >
if 
( 
data 
!= 
null 
) 
return 
Ok 
( 
data 
) 
;  
return 

BadRequest 
( 
) 
;  
} 	
[ 	
HttpGet	 
( 
$str ,
), -
]- .
public 
async 
Task 
< 
IActionResult '
>' (
GetAllWithTitle) 8
(8 9
int9 <
titleID= D
)D E
{ 	
var 
data 
= 
await 
buss !
.! "
GetRequestWithTitle" 5
(5 6
titleID6 =
)= >
;> ?
if 
( 
data 
!= 
null 
) 
return 
Ok 
( 
data 
) 
;  
return 

BadRequest 
( 
) 
;  
} 	
[!! 	
HttpGet!!	 
(!! 
$str!! 1
)!!1 2
]!!2 3
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' ( 
GetAllForUnitManager"") =
(""= >
int""> A
titleID""B I
)""I J
{## 	
var$$ 
data$$ 
=$$ 
await$$ 
buss$$ !
.$$! "$
GetRequestForUnitManager$$" :
($$: ;
titleID$$; B
)$$B C
;$$C D
if&& 
(&& 
data&& 
!=&& 
null&& 
)&& 
return'' 
Ok'' 
('' 
data'' 
)'' 
;''  
return(( 

BadRequest(( 
((( 
)(( 
;((  
})) 	
[++ 	
HttpPut++	 
(++ 
$str++ -
)++- .
]++. /
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' ( 
UpdateAdvanceRequest,,) =
(,,= >
[,,> ?
FromBody,,? G
],,G H)
AdvanceRequestStatusUpdateDTO,,H e
advance,,f m
),,m n
{-- 	
if.. 
(.. 
advance.. 
!=.. 
null.. 
)..  
{// 
var00 
data00 
=00 
await00  
buss00! %
.00% & 
UpdateAdvanceRequest00& :
(00: ;
advance00; B
)00B C
;00C D
return11 
Ok11 
(11 
data11 
)11 
;11  
}22 
else33 
return44 

BadRequest44 !
(44! "
)44" #
;44# $
}55 	
}77 
}88 Ð
tC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Controllers\FinanceManagerController.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 $
FinanceManagerController		 )
(		) *#
IFinanceManagerBusiness		* A
buss		B F
)		F G
:		H I

Controller		J T
{

 
[ 	
HttpPost	 
( 
$str $
)$ %
]% &
public 
async 
Task 
< 
IActionResult '
>' (
AddFinanceManager) :
(: ;
[; <
FromBody< D
]D E 
FinanceManagerAddDTOE Y
financeZ a
)a b
{ 	
if 
( 
finance 
!= 
null 
)  
{ 
var 
data 
= 
await  
buss! %
.% &
AddFinanceManager& 7
(7 8
finance8 ?
)? @
;@ A
return 
Ok 
( 
data 
) 
;  
} 
return 

BadRequest 
( 
) 
;  
} 	
} 
} ö3
kC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Controllers\LoginController.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
LoginController  
(  !
IUserBusiness! .
business/ 7
,7 8
IConfiguration9 G
confH L
)L M
:N O

ControllerP Z
{ 
[ 	
HttpPost	 
( 
$str 
)  
]  !
public 
async 
Task 
< 
IActionResult '
>' (
Login) .
(. /
[/ 0
FromBody0 8
]8 9
UserDTO9 @
dtoA D
)D E
{ 	
var 
doExists 
= 
await  
business! )
.) *
Login* /
(/ 0
dto0 3
.3 4
Username4 <
,< =
dto> A
.A B
PasswordB J
)J K
;K L
if 
( 
doExists 
== 
null  
)  !
{ 
return 
null 
; 
} 
var 
issuer 
= 
conf 
[ 
$str )
]) *
;* +
var 
audience 
= 
conf 
[  
$str  -
]- .
;. /
var   
desc   
=   
new   #
SecurityTokenDescriptor   2
(  2 3
)  3 4
{!! 
Expires"" 
="" 
DateTime"" "
.""" #
Now""# &
.""& '

AddMinutes""' 1
(""1 2
$num""2 4
)""4 5
,""5 6
Subject## 
=## 
new## 
ClaimsIdentity## ,
(##, -
new##- 0
Claim##1 6
[##6 7
]##7 8
{$$ 
new%% 
Claim%% 
(%% 

ClaimTypes%% (
.%%( )
Name%%) -
,%%- .
dto%%. 1
.%%1 2
Username%%2 :
)%%: ;
,%%; <
new&& 
Claim&& 
(&& 

ClaimTypes&& (
.&&( )
Role&&) -
,&&- .
doExists&&/ 7
.&&7 8
RoleName&&8 @
)&&@ A
,&&A B
new'' 
Claim'' 
('' 
$str'' '
,''' (
doExists'') 1
.''1 2
TitleID''2 9
.''9 :
ToString'': B
(''B C
)''C D
)''D E
,''E F
new(( 
Claim(( 
((( 
$str(( (
,((( )
doExists((* 2
.((2 3
WorkerID((3 ;
.((; <
ToString((< D
(((D E
)((E F
)((F G
,((G H
new)) 
Claim)) 
()) 
$str)) *
,))* +
doExists)), 4
.))4 5

WorkerName))5 ?
)))? @
}** 
)** 
,** 
Issuer++ 
=++ 
issuer++ 
,++  
Audience,, 
=,, 
audience,, #
,,,# $
	NotBefore-- 
=-- 
DateTime-- $
.--$ %
Now--% (
,--( )
SigningCredentials.. "
=..# $
new..% (
SigningCredentials..) ;
(..; <
new..< ? 
SymmetricSecurityKey..@ T
(..T U
Encoding..U ]
...] ^
UTF8..^ b
...b c
GetBytes..c k
(..k l
conf..l p
[..p q
$str..q 
]	.. €
)
..€ 
)
.. ‚
,
..‚ ƒ 
SecurityAlgorithms
..„ –
.
..– —

HmacSha256
..— ¡
)
..¡ ¢
}// 
;// 
var11 
tokenhandler11 
=11 
new11 "#
JwtSecurityTokenHandler11# :
(11: ;
)11; <
;11< =
var22 
token22 
=22 
tokenhandler22 $
.22$ %
CreateToken22% 0
(220 1
desc221 5
)225 6
;226 7
var33 
userTokenValue33 
=33  
tokenhandler33! -
.33- .

WriteToken33. 8
(338 9
token339 >
)33> ?
;33? @
return55 
Ok55 
(55 
userTokenValue55 $
)55$ %
;55% &
}66 	
[88 	
HttpPost88	 
(88 
$str88 "
)88" #
]88# $
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' (
Register99) 1
(991 2
[992 3
FromBody993 ;
]99; <
RegisterDTO99< G
registerDTO99H S
)99S T
{:: 	
var;; 
data;; 
=;; 
await;; 
business;; %
.;;% &
AddUser;;& -
(;;- .
registerDTO;;. 9
.;;9 :
User;;: >
,;;> ?
registerDTO;;@ K
.;;K L
Worker;;L R
,;;R S
registerDTO;;T _
.;;_ `
User;;` d
.;;d e
Password;;e m
);;m n
;;;n o
return<< 
Ok<< 
(<< 
data<< 
)<< 
;<< 
}== 	
[@@ 	
HttpGet@@	 
(@@ 
$str@@ 
)@@ 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
GetAuthorizationAA) 9
(AA9 :
stringAA: @
usernameAAA I
)AAI J
{BB 	
varCC 
dataCC 
=CC 
awaitCC 
businessCC %
.CC% &'
GetAllAuthorizationOfPersonCC& A
(CCA B
usernameCCB J
)CCJ K
;CCK L
ifEE 
(EE 
dataEE 
!=EE 
nullEE 
)EE 
returnFF 
OkFF 
(FF 
dataFF 
)FF 
;FF  
returnHH 

BadRequestHH 
(HH 
)HH 
;HH  
}II 	
}JJ 
}KK â
tC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Controllers\PaymentReceiptController.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 $
PaymentReceiptController		 )
(		) *#
IPaymentReceiptBusiness		* A
buss		B F
)		F G
:		H I

Controller		J T
{

 
[ 	
HttpPost	 
( 
$str +
)+ ,
], -
public 
async 
Task 
< 
IActionResult '
>' (
AddPaymentReceipt) :
(: ;
[; <
FromBody< D
]D E 
PaymentReceiptAddDTOE Y
receiptZ a
)a b
{ 	
if 
( 
receipt 
!= 
null 
)  
{ 
var 
data 
= 
await  
buss! %
.% &
AddPaymentReceipt& 7
(7 8
receipt8 ?
)? @
;@ A
return 
Ok 
( 
data 
) 
;  
} 
else 
return 

BadRequest !
(! "
)" #
;# $
} 	
} 
} ö
mC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Controllers\ProjectController.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 
ProjectController		 "
(		" #
IProjectBusiness		# 3
buss		4 8
)		8 9
:		: ;

Controller		< F
{

 
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetProjects) 4
(4 5
int5 8
workerID9 A
)A B
{ 	
if 
( 
workerID 
!= 
$num 
) 
{ 
var 
data 
= 
await  
buss! %
.% &!
GetAllProjectOfWorker& ;
(; <
workerID< D
)D E
;E F
return 
Ok 
( 
data 
) 
;  
} 
return 

BadRequest 
( 
) 
;  
} 	
} 
} ‹
kC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Filters\AdvanceActionFilter.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Filters% ,
{		 
public

 

class

 
AdvanceActionFilter

 $
(

$ %
IAdvanceBusiness

% 5
business

6 >
)

> ?
:

@ A!
ActionFilterAttribute

B W
{ 
public 
override 
async 
Task ""
OnActionExecutionAsync# 9
(9 :"
ActionExecutingContext: P
contextQ X
,X Y#
ActionExecutionDelegateZ q
nextr v
)v w
{ 	
var 
reqValue 
= 
context "
." #
ActionArguments# 2
.2 3
Values3 9
.9 :
FirstOrDefault: H
(H I
)I J
asK M
AdvanceAddDTON [
;[ \
var 
data 
= 
await 
business %
.% &
FindAdvance& 1
(1 2
(2 3
int3 6
)6 7
reqValue7 ?
.? @
WorkerID@ H
,H I
(J K
intK N
)N O
reqValueO W
.W X
	ProjectIDX a
)a b
;b c
if 
( 
reqValue 
!= 
null  
&&! #
data$ (
==) +
null, 0
)0 1
{ 
await 
next 
( 
) 
; 
} 
else 
{ 
var 
error 
= 
new 
ErrorDTO  (
(( )
)) *
{ 

StatusCode 
=  
$num! $
,$ %
ErrorMessages !
=" #
new$ '
List( ,
<, -
string- 3
>3 4
{5 6
$str7 f
}g h
} 
; 
context 
. 
Result 
=  
new! $"
BadRequestObjectResult% ;
(; <
error< A
)A B
;B C
} 
} 	
}   
}!! Ê
oC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Middlewares\ExceptionMiddleware.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
Base  $
.$ %
Middlewares% 0
{ 
public 

class 
ExceptionMiddleware $
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private		 
readonly		 
ILogger		  
<		  !
ExceptionMiddleware		! 4
>		4 5
_logger		6 =
;		= >
public 
ExceptionMiddleware "
(" #
RequestDelegate# 2
next3 7
,7 8
ILogger9 @
<@ A
ExceptionMiddlewareA T
>T U
loggerV \
)\ ]
{ 	
_next 
= 
next 
?? 
throw !
new" %!
ArgumentNullException& ;
(; <
nameof< B
(B C
nextC G
)G H
)H I
;I J
_logger 
= 
logger 
?? 
throw  %
new& )!
ArgumentNullException* ?
(? @
nameof@ F
(F G
loggerG M
)M N
)N O
;O P
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
httpContext2 =
)= >
{ 	
try 
{ 
await 
_next 
( 
httpContext '
)' (
;( )
} 
catch 
( 
	Exception 
ex 
)  
{ 
_logger 
. 
LogError  
(  !
ex! #
,# $
$str% K
)K L
;L M
var 
logger 
= 
NLog !
.! "

LogManager" ,
., -
	GetLogger- 6
(6 7
$str7 A
)A B
;B C
logger 
. 
Error 
( 
ex 
,  
$str! G
)G H
;H I
httpContext 
. 
Response $
.$ %
ContentType% 0
=1 2
$str3 E
;E F
httpContext 
. 
Response $
.$ %

StatusCode% /
=0 1
(2 3
int3 6
)6 7
HttpStatusCode7 E
.E F
InternalServerErrorF Y
;Y Z
await!! 
httpContext!! !
.!!! "
Response!!" *
.!!* +

WriteAsync!!+ 5
(!!5 6
$str!!6 M
)!!M N
;!!N O
}"" 
}## 	
}$$ 
}%% £I
WC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.Base\Program.cs
var++ 
builder++ 
=++ 
WebApplication++ 
.++ 
CreateBuilder++ *
(++* +
args+++ /
)++/ 0
;++0 1
builder// 
.// 
Services// 
.// 
AddControllers// 
(//  
)//  !
;//! "
builder11 
.11 
Services11 
.11 #
AddEndpointsApiExplorer11 (
(11( )
)11) *
;11* +
builder22 
.22 
Services22 
.22 
AddSwaggerGen22 
(22 
)22  
;22  !
builder55 
.55 
Services55 
.55 
	AddScoped55 
<55 
AdvanceActionFilter55 .
>55. /
(55/ 0
)550 1
;551 2
builder66 
.66 
Services66 
.66 
	AddScoped66 
<66  
ApprovalStateMachine66 /
>66/ 0
(660 1
)661 2
;662 3
builder77 
.77 
Services77 
.77 
	AddScoped77 
<77 
ConnectionHelper77 +
>77+ ,
(77, -
)77- .
;77. /
builder88 
.88 
Services88 
.88 
	AddScoped88 
<88 
IAdvanceDataAccess88 -
,88- .
AdvanceDataAccess88/ @
>88@ A
(88A B
)88B C
;88C D
builder99 
.99 
Services99 
.99 
	AddScoped99 
<99 
IAdvanceBusiness99 +
,99+ ,
AdvanceBusiness99- <
>99< =
(99= >
)99> ?
;99? @
builder:: 
.:: 
Services:: 
.:: 
	AddScoped:: 
<:: 
IUserDataAccess:: *
,::* +
UserDataAccess::, :
>::: ;
(::; <
)::< =
;::= >
builder;; 
.;; 
Services;; 
.;; 
	AddScoped;; 
<;; 
IUserBusiness;; (
,;;( )
UserBusiness;;* 6
>;;6 7
(;;7 8
);;8 9
;;;9 :
builder<< 
.<< 
Services<< 
.<< 
	AddScoped<< 
<<< .
"ITitleAmountApprovalRuleDataAccess<< =
,<<= >-
!TitleAmountApprovalRuleDataAccess<<? `
><<` a
(<<a b
)<<b c
;<<c d
builder== 
.== 
Services== 
.== 
	AddScoped== 
<== ,
 ITitleAmountApprovalRuleBusiness== ;
,==; <+
TitleAmountApprovalRuleBusiness=== \
>==\ ]
(==] ^
)==^ _
;==_ `
builder>> 
.>> 
Services>> 
.>> 
	AddScoped>> 
<>> 
IProjectBusiness>> +
,>>+ ,
ProjectBusiness>>- <
>>>< =
(>>= >
)>>> ?
;>>? @
builder?? 
.?? 
Services?? 
.?? 
	AddScoped?? 
<?? 
IProjectDataAccess?? -
,??- .
ProjectDataAccess??/ @
>??@ A
(??A B
)??B C
;??C D
builder@@ 
.@@ 
Services@@ 
.@@ 
	AddScoped@@ 
<@@ )
IAdvanceRequestStatusBusiness@@ 8
,@@8 9(
AdvanceRequestStatusBusiness@@: V
>@@V W
(@@W X
)@@X Y
;@@Y Z
builderAA 
.AA 
ServicesAA 
.AA 
	AddScopedAA 
<AA +
IAdvanceRequestStatusDataAccessAA :
,AA: ;*
AdvanceRequestStatusDataAccessAA< Z
>AAZ [
(AA[ \
)AA\ ]
;AA] ^
builderBB 
.BB 
ServicesBB 
.BB 
	AddScopedBB 
<BB #
IFinanceManagerBusinessBB 2
,BB2 3"
FinanceManagerBusinessBB4 J
>BBJ K
(BBK L
)BBL M
;BBM N
builderCC 
.CC 
ServicesCC 
.CC 
	AddScopedCC 
<CC %
IFinanceManagerDataAccessCC 4
,CC4 5$
FinanceManagerDataAccessCC6 N
>CCN O
(CCO P
)CCP Q
;CCQ R
builderDD 
.DD 
ServicesDD 
.DD 
	AddScopedDD 
<DD %
IPaymentReceiptDataAccessDD 4
,DD4 5$
PaymentReceiptDataAccessDD6 N
>DDN O
(DDO P
)DDP Q
;DDQ R
builderEE 
.EE 
ServicesEE 
.EE 
	AddScopedEE 
<EE #
IPaymentReceiptBusinessEE 2
,EE2 3"
PaymentReceiptBusinessEE4 J
>EEJ K
(EEK L
)EEL M
;EEM N
builderFF 
.FF 
ServicesFF 
.FF 
	AddScopedFF 
<FF "
ValidateFinanceManagerFF 1
>FF1 2
(FF2 3
)FF3 4
;FF4 5
builderGG 
.GG 
ServicesGG 
.GG 
	AddScopedGG 
<GG (
ValidateAdvanceRequestStatusGG 7
>GG7 8
(GG8 9
)GG9 :
;GG: ;
builderHH 
.HH 
ServicesHH 
.HH 
	AddScopedHH 
<HH "
ValidatePaymentReceiptHH 1
>HH1 2
(HH2 3
)HH3 4
;HH4 5
varKK 
configurationKK 
=KK 
newKK  
ConfigurationBuilderKK ,
(KK, -
)KK- .
.LL !
AddInMemoryCollectionLL 
(LL 
newLL 

DictionaryLL )
<LL) *
stringLL* 0
,LL0 1
stringLL2 8
?LL8 9
>LL9 :
(LL: ;
)LL; <
{MM 
[NN 	
$strNN	 
]NN 
=NN 
$strNN M
,NNM N
[OO 	
$strOO	 
]OO 
=OO 
$strOO ,
,OO, -
[PP 	
$strPP	 
]PP 
=PP 
$strPP .
}QQ 
)QQ 
.RR 
BuildRR 

(RR
 
)RR 
;RR 
varUU 
secretUU 

=UU 
EncodingUU 
.UU 
UTF8UU 
.UU 
GetBytesUU #
(UU# $
configurationUU$ 1
.UU1 2

GetSectionUU2 <
(UU< =
$strUU= K
)UUK L
.UUL M
ValueUUM R
)UUR S
;UUS T
builderVV 
.VV 
ServicesVV 
.VV 
AddAuthenticationVV "
(VV" #
JwtBearerDefaultsVV# 4
.VV4 5 
AuthenticationSchemeVV5 I
)VVI J
.VVJ K
AddJwtBearerVVK W
(VVW X
optVVX [
=>VV\ ^
{WW 
optXX 
.XX %
TokenValidationParametersXX !
=XX" #
newXX$ '%
TokenValidationParametersXX( A
(XXA B
)XXB C
{YY 
ValidIssuerZZ 
=ZZ 
configurationZZ #
[ZZ# $
$strZZ$ /
]ZZ/ 0
,ZZ0 1
ValidAudience[[ 
=[[ 
configuration[[ %
[[[% &
$str[[& 3
][[3 4
,[[4 5
IssuerSigningKey\\ 
=\\ 
new\\  
SymmetricSecurityKey\\ 3
(\\3 4
secret\\4 :
)\\: ;
,\\; <
ValidateIssuer]] 
=]] 
true]] 
,]] $
ValidateIssuerSigningKey^^  
=^^! "
true^^# '
,^^' (
	ClockSkew__ 
=__ 
TimeSpan__ 
.__ 
FromSeconds__ (
(__( )
$num__) *
)__* +
,__+ ,
ValidateLifetime`` 
=`` 
true`` 
,``  
ValidateAudienceaa 
=aa 
trueaa 
,aa  
}cc 
;cc 
}ee 
)ee 
;ee 
builderff 
.ff 
Servicesff 
.ff 
AddAuthorizationff !
(ff! "
)ff" #
;ff# $
varnn 
appnn 
=nn 	
buildernn
 
.nn 
Buildnn 
(nn 
)nn 
;nn 
ifqq 
(qq 
appqq 
.qq 
Environmentqq 
.qq 
IsDevelopmentqq !
(qq! "
)qq" #
)qq# $
{rr 
appss 
.ss 

UseSwaggerss 
(ss 
)ss 
;ss 
apptt 
.tt 
UseSwaggerUItt 
(tt 
)tt 
;tt 
}uu 
appww 
.ww 
UseAuthorizationww 
(ww 
)ww 
;ww 
appxx 
.xx 
UseAuthenticationxx 
(xx 
)xx 
;xx 
appyy 
.yy 
UseMiddlewareyy 
<yy 
ExceptionMiddlewareyy %
>yy% &
(yy& '
)yy' (
;yy( )
app{{ 
.{{ 
MapControllers{{ 
({{ 
){{ 
;{{ 
app}} 
.}} 
Run}} 
(}} 
)}} 	
;}}	 
