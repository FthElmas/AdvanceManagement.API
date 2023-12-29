¡
|C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\Complex\ErrorDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
ComplexA H
{ 
public		 

class		 
ErrorDTO		 
{

 
public 
int 

StatusCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
List 
< 
string 
> 
ErrorMessages )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
List> B
<B C
stringC I
>I J
(J K
)K L
;L M
} 
} ∆
|C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\Complex\LoginDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
Complex		A H
{

 
public 

class 
LoginDTO 
{ 
public 
UserDTO 
User 
{ 
get !
;! "
set# &
;& '
}( )
=* +
new, /
UserDTO0 7
(7 8
)8 9
;9 :
public 
WorkerAddDTO 
Worker "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
WorkerAddDTO7 C
(C D
)D E
;E F
} 
} Â
åC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\Complex\PreviousAdvanceDetailDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
ComplexA H
{ 
public		 

class		 $
PreviousAdvanceDetailDTO		 )
{

 
} 
} á
ÜC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\Complex\PreviousAdvanceDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
ComplexA H
{ 
public		 

record		 
PreviousAdvanceDTO		 $
{

 
public 
decimal 
AdvanceAmount $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ProjectName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

WorkerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	TitleName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
ProcessDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 
ApprovedAmount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime !
DeterminedPaymentDate -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
}"" 
}## “
C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\Complex\RegisterDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
Complex		A H
{

 
public 

class 
RegisterDTO 
{ 
public 

UserAddDTO 
User 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
new/ 2

UserAddDTO3 =
(= >
)> ?
;? @
public 
WorkerAddDTO 
Worker "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
WorkerAddDTO7 C
(C D
)D E
;E F
} 
} ¢
ÇC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\Complex\TitleAmountDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
Complex		A H
{

 
public 

class 
TitleAmountDTO 
{ 
public 
int 
TitleID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	TitleName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
TitleDescription &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int %
TitleAmountApprovalRuleID ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public## 
decimal## 
	MinAmount##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public&& 
decimal&& 
	MaxAmount&&  
{&&! "
get&&# &
;&&& '
set&&( +
;&&+ ,
}&&- .
}++ 
},, Ô
ùC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTAdvanceRequestStatus\AdvanceRequestStatusAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A"
DTAdvanceRequestStatusA W
{ 
public 

record &
AdvanceRequestStatusAddDTO ,
{ 
public 
int "
AdvanceRequestStatusID )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 

StatusName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
StatusDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public!! 
decimal!! 
ApprovedAmount!! %
{!!& '
get!!( +
;!!+ ,
set!!- 0
;!!0 1
}!!2 3
public$$ 
int$$ 
?$$ 
ApprovingRejectedID$$ '
{$$( )
get$$* -
;$$- .
set$$/ 2
;$$2 3
}$$4 5
public'' 
int'' 
?'' 
ApprovalStatusID'' $
{''% &
get''' *
;''* +
set'', /
;''/ 0
}''1 2
public++ 
DateTime++ 
?++ 
ProcessDate++ $
{++% &
get++' *
;++* +
set++, /
;++/ 0
}++1 2
public.. 
bool.. 
?.. 
IsActive.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
public11 
int11 
?11 

ModifiedBy11 
{11  
get11! $
;11$ %
set11& )
;11) *
}11+ ,
public33 
DateTime33 
?33 
CreatedDate33 $
{33% &
get33' *
;33* +
set33, /
;33/ 0
}331 2
public77 
DateTime77 
?77 
ModifiedDate77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
public:: 
int:: 
?:: 
	CreatedBy:: 
{:: 
get::  #
;::# $
set::% (
;::( )
}::* +
[?? 	
	NotMapped??	 
]?? 
public@@ 
AdvanceSelectDTO@@ 
Advance@@  '
{@@( )
get@@* -
;@@- .
set@@/ 2
;@@2 3
}@@4 5
[CC 	
	NotMappedCC	 
]CC 
publicDD #
FinanceManagerSelectDTODD &
FinanceManagerDD' 5
{DD6 7
getDD8 ;
;DD; <
setDD= @
;DD@ A
}DDB C
[FF 	
	NotMappedFF	 
]FF 
publicGG #
ApprovalStatusSelectDTOGG &
ApprovalStatusGG' 5
{GG6 7
getGG8 ;
;GG; <
setGG= @
;GG@ A
}GGB C
[II 	
	NotMappedII	 
]II 
publicJJ 
WorkerSelectDTOJJ 
WorkerJJ %
{JJ& '
getJJ( +
;JJ+ ,
setJJ- 0
;JJ0 1
}JJ2 3
[LL 	
	NotMappedLL	 
]LL 
publicMM 
ProjectSelectDTOMM 
ProjectMM  '
{MM( )
getMM* -
;MM- .
setMM/ 2
;MM2 3
}MM4 5
[OO 	
	NotMappedOO	 
]OO 
publicPP 
TitleSelectDTOPP 
TitlePP #
{PP$ %
getPP& )
;PP) *
setPP+ .
;PP. /
}PP0 1
}RR 
}SS ®#
†C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTAdvanceRequestStatus\AdvanceRequestStatusSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A"
DTAdvanceRequestStatusA W
{ 
public 

record )
AdvanceRequestStatusSelectDTO /
{ 
public 
int "
AdvanceRequestStatusID )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 

StatusName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
StatusDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public"" 
decimal"" 
ApprovedAmount"" %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
public%% 
int%% 
?%% 
ApprovingRejectedID%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
public(( 
int(( 
?(( 
ApprovalStatusID(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
public,, 
DateTime,, 
?,, 
ProcessDate,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
public// 
bool// 
?// 
IsActive// 
{// 
get//  #
;//# $
set//% (
;//( )
}//* +
public22 
int22 
?22 

ModifiedBy22 
{22  
get22! $
;22$ %
set22& )
;22) *
}22+ ,
public44 
DateTime44 
?44 
CreatedDate44 $
{44% &
get44' *
;44* +
set44, /
;44/ 0
}441 2
public88 
DateTime88 
?88 
ModifiedDate88 %
{88& '
get88( +
;88+ ,
set88- 0
;880 1
}882 3
public;; 
int;; 
?;; 
	CreatedBy;; 
{;; 
get;;  #
;;;# $
set;;% (
;;;( )
};;* +
[@@ 	
	NotMapped@@	 
]@@ 
publicAA 
AdvanceSelectDTOAA 
AdvanceAA  '
{AA( )
getAA* -
;AA- .
setAA/ 2
;AA2 3
}AA4 5
[DD 	
	NotMappedDD	 
]DD 
publicEE #
FinanceManagerSelectDTOEE &
FinanceManagerEE' 5
{EE6 7
getEE8 ;
;EE; <
setEE= @
;EE@ A
}EEB C
[GG 	
	NotMappedGG	 
]GG 
publicHH #
ApprovalStatusSelectDTOHH &
ApprovalStatusHH' 5
{HH6 7
getHH8 ;
;HH; <
setHH= @
;HH@ A
}HHB C
[JJ 	
	NotMappedJJ	 
]JJ 
publicKK 
WorkerSelectDTOKK 
WorkerKK %
{KK& '
getKK( +
;KK+ ,
setKK- 0
;KK0 1
}KK2 3
[LL 	
	NotMappedLL	 
]LL 
publicMM 
WorkerSelectDTOMM 
AdvanceWorkerMM ,
{MM- .
getMM/ 2
;MM2 3
setMM4 7
;MM7 8
}MM9 :
[OO 	
	NotMappedOO	 
]OO 
publicPP 
ProjectSelectDTOPP 
ProjectPP  '
{PP( )
getPP* -
;PP- .
setPP/ 2
;PP2 3
}PP4 5
[RR 	
	NotMappedRR	 
]RR 
publicSS 
TitleSelectDTOSS 
TitleSS #
{SS$ %
getSS& )
;SS) *
setSS+ .
;SS. /
}SS0 1
[TT 	
	NotMappedTT	 
]TT 
publicUU 
UnitSelectDTOUU 
UnitUU !
{UU" #
getUU$ '
;UU' (
setUU) ,
;UU, -
}UU. /
}WW 
}XX Ø
†C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTAdvanceRequestStatus\AdvanceRequestStatusUpdateDTO.cs
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
  
DataTransfer

  ,
.

, -
DataTransferObjects

- @
.

@ A"
DTAdvanceRequestStatus

A W
{ 
public 

record )
AdvanceRequestStatusUpdateDTO /
{ 
public 
int "
AdvanceRequestStatusID )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
? 

StatusName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
StatusDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
ApprovingRejectedID '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
decimal 
? 
ApprovedAmount &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
ProcessDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 

ModifiedBy 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   
DateTime   
?   
ModifiedDate   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
}"" 
}## ˘
ÉC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTAdvance\AdvanceAddDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
	DTAdvance		A J
{

 
public 

class 
AdvanceAddDTO 
{ 
public 
decimal 
? 
AdvanceAmount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
? 
AdvanceExplanation )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? 
WorkerID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
RequestDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
AmountPaymentDate *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
DateTime 
? 
PaybackDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
	ProjectID 
{ 
get  #
;# $
set% (
;( )
}* +
public   
DateTime   
?   
CreatedDate   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
public## 
bool## 
?## 
IsActive## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
}$$ 
}%% Ô
ÜC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTAdvance\AdvanceSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
	DTAdvanceA J
{ 
public 

record 
AdvanceSelectDTO "
{ 
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
AdvanceAmount $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AdvanceExplanation (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public!! 
DateTime!! 
AmountPaymentDate!! )
{!!* +
get!!, /
;!!/ 0
set!!1 4
;!!4 5
}!!6 7
public## 
DateTime## 
PaybackDate## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
public%% 
int%% 
	ProjectID%% 
{%% 
get%% "
;%%" #
set%%$ '
;%%' (
}%%) *
public(( 
DateTime(( 
CreatedDate(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public++ 
bool++ 
IsActive++ 
{++ 
get++ "
;++" #
set++$ '
;++' (
}++) *
[11 	
	NotMapped11	 
]11 
public22 )
AdvanceRequestStatusSelectDTO22 , 
AdvanceRequestStatus22- A
{22B C
get22D G
;22G H
set22I L
;22L M
}22N O
[44 	
	NotMapped44	 
]44 
public55 #
FinanceManagerSelectDTO55 &
FinanceManager55' 5
{556 7
get558 ;
;55; <
set55= @
;55@ A
}55B C
[77 	
	NotMapped77	 
]77 
public88 #
ApprovalStatusSelectDTO88 &
ApprovalStatus88' 5
{886 7
get888 ;
;88; <
set88= @
;88@ A
}88B C
[:: 	
	NotMapped::	 
]:: 
public;; 
WorkerSelectDTO;; 
Worker;; %
{;;& '
get;;( +
;;;+ ,
set;;- 0
;;;0 1
};;2 3
[<< 	
	NotMapped<<	 
]<< 
public== 
WorkerSelectDTO== 
AdvanceWorker== ,
{==- .
get==/ 2
;==2 3
set==4 7
;==7 8
}==9 :
[?? 	
	NotMapped??	 
]?? 
public@@ 
ProjectSelectDTO@@ 
Project@@  '
{@@( )
get@@* -
;@@- .
set@@/ 2
;@@2 3
}@@4 5
[BB 	
	NotMappedBB	 
]BB 
publicCC 
TitleSelectDTOCC 
TitleCC #
{CC$ %
getCC& )
;CC) *
setCC+ .
;CC. /
}CC0 1
[DD 	
	NotMappedDD	 
]DD 
publicEE 
TitleSelectDTOEE 
AdvanceTitleEE *
{EE+ ,
getEE- 0
;EE0 1
setEE2 5
;EE5 6
}EE7 8
[FF 	
	NotMappedFF	 
]FF 
publicGG 
UnitSelectDTOGG 
UnitGG !
{GG" #
getGG$ '
;GG' (
setGG) ,
;GG, -
}GG. /
}II 
}JJ €
ÜC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTAdvance\AdvanceUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
	DTAdvanceA J
{ 
internal		 
class		 
AdvanceUpdateDTO		 #
{

 
} 
} √
ëC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTApprovalStatus\ApprovalStatusAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTApprovalStatusA Q
{ 
public		 

record		  
ApprovalStatusAddDTO		 &
{

 
public 
int 
ApprovalStatusID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ApprovalName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} …
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTApprovalStatus\ApprovalStatusSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTApprovalStatusA Q
{ 
public		 

record		 #
ApprovalStatusSelectDTO		 )
{

 
public 
int 
ApprovalStatusID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ApprovalName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} …
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTApprovalStatus\ApprovalStatusUpdateDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTApprovalStatus		A Q
{

 
public 

record #
ApprovalStatusUpdateDTO )
{ 
public 
int 
ApprovalStatusID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ApprovalName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
	CreatedBy   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
}!! 
}"" Ë
ëC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTFinanceManager\FinanceManagerAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTFinanceManagerA Q
{		 
public

 

record

  
FinanceManagerAddDTO

 &
{ 
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime !
DeterminedPaymentDate -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˝
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTFinanceManager\FinanceManagerSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTFinanceManagerA Q
{ 
public		 

record		 #
FinanceManagerSelectDTO		 )
{

 
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? !
DeterminedPaymentDate .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ó
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTFinanceManager\FinanceManagerUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTFinanceManagerA Q
{ 
public		 

record		 #
FinanceManagerUpdateDTO		 )
{

 
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime !
DeterminedPaymentDate -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ∆
öC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTPageAuthorization\PageAuthorizationSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPageAuthorizationA T
{		 
public

 

record

 &
PageAuthorizationSelectDTO

 ,
{ 
public 
int 
PageAuthorizationID &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string !
PageAuthorizationName +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string !
PageAuthorizationPath +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 

ModifiedBy 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
ModifiedDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public"" 
int"" 
?"" 
	CreatedBy"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
}## 
}$$ Ñ
ëC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTPaybackReceipt\PaybackReceiptAddDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTPaybackReceipt		A Q
{

 
public 

record  
PaybackReceiptAddDTO &
{ 
public 
int 
PaybackReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public"" 
DateTime"" 
ModifiedDate"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
public%% 
DateTime%% 
CreatedDate%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
}&& 
}'' ä
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTPaybackReceipt\PaybackReceiptSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPaybackReceiptA Q
{ 
public		 

record		 #
PaybackReceiptSelectDTO		 )
{

 
public 
int 
PaybackReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public"" 
DateTime"" 
CreatedDate"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
}## 
}$$ 
îC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTPaybackReceipt\PaybackReceiptUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPaybackReceiptA Q
{ 
public		 

record		 #
PaybackReceiptUpdateDTO		 )
{

 
public 
int 
PaybackReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
DateTime   
CreatedDate   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
}!! 
}"" Ù
ëC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTPaymentReceipt\PaymentReceiptAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPaymentReceiptA Q
{		 
public

 

record

  
PaymentReceiptAddDTO

 &
{ 
public 
int 
PaymentReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
	CreatedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} è
ÜC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTProject\ProjectSelectDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
	DTProject		A J
{

 
public 

record 
ProjectSelectDTO "
{ 
public 
int 
	ProjectID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ProjectName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ProjectExplanation (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} õ
ÄC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTRole\RoleSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTRoleA G
{ 
public		 

record		 
RoleSelectDTO		 
{

 
public 
int 
RoleID 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˛
¶C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTTitleAmountApprovalRule\TitleAmountApprovalRuleSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A%
DTTitleAmountApprovalRuleA Z
{ 
public 

class ,
 TitleAmountApprovalRuleSelectDTO 1
{ 
[ 	
Key	 
] 
public 
int %
TitleAmountApprovalRuleID ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
Column	 
] 
public 
decimal 
	MinAmount  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Column	 
] 
public 
decimal 
	MaxAmount  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
int 
TitleID 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
] 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
[   	
Column  	 
]   
public!! 
bool!! 
IsActive!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
[$$ 	
	NotMapped$$	 
]$$ 
public%% 
TitleSelectDTO%% 
Title%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
}&& 
}'' À
C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTTitle\TitleAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTTitleA H
{ 
public		 

record		 
TitleAddDTO		 
{

 
} 
} Ω
ÇC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTTitle\TitleSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTTitleA H
{		 
public

 

record

 
TitleSelectDTO

  
{ 
public 
int 
TitleID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	TitleName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
TitleDescription &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} “
ÇC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTTitle\TitleUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTTitleA H
{ 
public		 

record		 
TitleUpdateDTO		  
{

 
} 
} æ
ÄC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTUnit\UnitSelectDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTUnit		A G
{

 
public 

record 
UnitSelectDTO 
{ 
public 
int 
UnitID 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UnitName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UnitExplanation %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ∆
}C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTUser\UserAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTUserA G
{ 
public		 

record		 

UserAddDTO		 
{

 
public 
string 
? 
Username 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Î	
~C:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTUser\UserAuthDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTUser		A G
{

 
public 

class 
UserAuthDTO 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public 
RoleSelectDTO 
Role !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
WorkerSelectDTO 
Worker %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ê
zC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTUser\UserDTO.cs
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
  
DataTransfer

  ,
.

, -
DataTransferObjects

- @
.

@ A
DTUser

A G
{ 
public 

class 
UserDTO 
{ 
public 
string 
? 
Username 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
? 
RoleName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
TitleID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
WorkerID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 

WorkerName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ƒ
ÅC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTWorker\WorkerAddDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTWorker		A I
{

 
public 

class 
WorkerAddDTO 
{ 
public 
string 

WorkerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
WorkerEmail "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ú
ÑC:\Users\Fatih\source\repos\AdvanceManagement.API\AdvanceManagement.API.DataTransfer\DataTransferObjects\DTWorker\WorkerSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTWorkerA I
{ 
public		 

record		 
WorkerSelectDTO		 !
{

 
public 
string 

WorkerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
WorkerEmail "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
WorkerPhonenumber (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
UserID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
UnitID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
TitleID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
	ManagerID 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 