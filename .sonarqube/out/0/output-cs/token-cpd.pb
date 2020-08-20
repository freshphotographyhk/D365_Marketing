�<
RC:\Users\eddie\source\repos\D365_Marketing\Plugin\Contact_CalculateContactScore.cs
	namespace 	
Plugin
 
{ 
public 

class )
Contact_CalculateContactScore .
:/ 0
IPlugin1 8
{ 
public 
decimal 
ContactScoreTranAmt *
=+ ,
$num- 2
;2 3
public 
decimal 
ContactScore #
=$ %
$num& +
;+ ,
public 
	PluginEnv 
Env 
; 
public 
List 
< 
string 
> 
StringFDList (
=) *
new+ .
List/ 3
<3 4
string4 :
>: ;
{ 	
Contact 
. 
Email 
, 
Contact 
. 
EmailAddress2 !
,! "
Contact 
. 
EmailAddress3 !
,! "
Contact 
. 
MobilePhone 
,  
Contact 
. 
	HomePhone 
, 
Contact 
. 

HomePhone2 
, 
Contact 
. 
Fax 
, 
Contact 
. 
BusinessPhone !
,! "
Contact 
. 
JobTitle 
, 
Contact 
. 
	FirstName 
, 
Contact 
. 
LastName 
}   	
;  	 

public"" 
void"" 
Execute"" 
("" 
IServiceProvider"" ,
serviceProvider""- <
)""< =
{## 	
Env$$ 
=$$ 
new$$ 
	PluginEnv$$ 
($$  
serviceProvider$$  /
)$$/ 0
;$$0 1
if%% 
(%% 
Env%% 
.%% 

IsValidReq%% 
(%% 
)%%  
)%%  !
{&& 
var'' 
entity'' 
='' 
Env''  
.''  !
Svc''! $
.''$ %
Retrieve''% -
(''- .
Contact''. 5
.''5 6

EntityName''6 @
,''@ A
Env''B E
.''E F
TargetEntity''F R
.''R S
Id''S U
,''U V
new''W Z
	ColumnSet''[ d
(''d e
true''e i
)''i j
)''j k
;''k l
try(( 
{)) 
Env++ 
.++ 
SetPreImageEntity++ )
(++) *
$str++* 4
)++4 5
;++5 6
ContactScore..  
=..! "
Env..# &
...& '
Context..' .
.... /
MessageName../ :
==..; =
$str..> F
?..G H
$num..I O
:..P Q
entity..R X
...X Y
GetAttr..Y `
<..` a
decimal..a h
>..h i
(..i j
Contact..j q
...q r
ContactScore..r ~
)..~ 
;	.. �
foreach00 
(00 
string00 "
fd00# %
in00& (
StringFDList00) 5
)005 6
{11 -
!CalculateString_ContactScoreField22 9
(229 :
fd22: <
,22< =
entity22> D
)22D E
;22E F
}33 
if55 
(55 
ContactScore55 $
>55% &
$num55' .
)55. /
{66 
ContactScore77 $
=77% &
$num77' .
;77. /
}88 
else99 
if99 
(99 
ContactScore99 (
<99) *
$num99+ 0
)990 1
{:: 
ContactScore;; $
=;;% &
$num;;' ,
;;;, -
}<< 
Entity>> 
change>> !
=>>" #
new>>$ '
Entity>>( .
(>>. /
Contact>>/ 6
.>>6 7

EntityName>>7 A
,>>A B
entity>>C I
.>>I J
Id>>J L
)>>L M
;>>M N
change?? 
[?? 
Contact?? "
.??" #
ContactScore??# /
]??/ 0
=??1 2
ContactScore??3 ?
;??? @
Env@@ 
.@@ 
Update@@ 
(@@ 
change@@ %
)@@% &
;@@& '
}AA 
catchBB 
(BB 
	ExceptionBB  
exBB! #
)BB# $
{CC 
EnvDD 
.DD 
TraceDD 
(DD 
exDD  
.DD  !
MessageDD! (
.DD( )
ToStringDD) 1
(DD1 2
)DD2 3
)DD3 4
;DD4 5
}EE 
}FF 
}GG 	
publicII 
voidII -
!CalculateString_ContactScoreFieldII 5
(II5 6
stringII6 <
fdNameII= C
,IIC D
EntityIIE K
entityIIL R
)IIR S
{JJ 	
stringLL 
valueLL 
=LL 
nullLL 
;LL  
ConsoleMM 
.MM 
	WriteLineMM 
(MM 
valueMM #
.MM# $
ToStringMM$ ,
(MM, -
)MM- .
)MM. /
;MM/ 0
tryOO 
{PP 
varTT 
postFdValueTT 
=TT  !
entityTT" (
.TT( )
GetAttrTT) 0
<TT0 1
stringTT1 7
>TT7 8
(TT8 9
fdNameTT9 ?
)TT? @
;TT@ A
ifVV 
(VV 
EnvVV 
.VV 
ContextVV 
.VV  
MessageNameVV  +
==VV, .
$strVV/ 7
)VV7 8
{WW 
ifXX 
(XX 
stringXX 
.XX 
IsNullOrWhiteSpaceXX 1
(XX1 2
postFdValueXX2 =
)XX= >
)XX> ?
ContactScoreXX@ L
-=XXM O
ContactScoreTranAmtXXP c
;XXc d
elseYY 
ContactScoreYY %
+=YY& (
ContactScoreTranAmtYY) <
;YY< =
}ZZ 
else[[ 
if[[ 
([[ 
Env[[ 
.[[ 
Context[[ $
.[[$ %
MessageName[[% 0
==[[1 3
$str[[4 <
)[[< =
{\\ 
var]] 

preFdValue]] "
=]]# $
Env]]% (
.]]( )
PreImageEntity]]) 7
.]]7 8
GetAttr]]8 ?
<]]? @
string]]@ F
>]]F G
(]]G H
fdName]]H N
)]]N O
;]]O P
if^^ 
(^^ 
string^^ 
.^^ 
IsNullOrWhiteSpace^^ 1
(^^1 2

preFdValue^^2 <
)^^< =
)^^= >
{__ 
if`` 
(`` 
!`` 
string`` #
.``# $
IsNullOrWhiteSpace``$ 6
(``6 7
postFdValue``7 B
)``B C
)``C D
ContactScore``E Q
+=``R T
ContactScoreTranAmt``U h
;``h i
}aa 
elsebb 
{cc 
ifdd 
(dd 
stringdd "
.dd" #
IsNullOrWhiteSpacedd# 5
(dd5 6
postFdValuedd6 A
)ddA B
)ddB C
ContactScoreddD P
-=ddQ S
ContactScoreTranAmtddT g
;ddg h
}ee 
}ff 
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
Consolejj 
.jj 
	WriteLinejj !
(jj! "
exjj" $
.jj$ %
InnerExceptionjj% 3
)jj3 4
;jj4 5
}kk 
}ll 	
}mm 
}nn ��
GC:\Users\eddie\source\repos\D365_Marketing\Plugin\EntityMeta\Account.cs
	namespace

 	
D365Meta


 
{ 
public 

static 
class 
Account 
{ 
public 
const 
string 

EntityName &
=' (
$str) 2
;2 3
public 
const 
string  
EntityCollectionName 0
=1 2
$str3 =
;= >
public 
const 
string 

PrimaryKey &
=' (
$str) 4
;4 5
public 
const 
string 
PrimaryName '
=( )
$str* 0
;0 1
public 
const 
string "
DeprecatedProcessStage 2
=3 4
$str5 >
;> ?
public 
const 
string #
DeprecatedTraversedPath 3
=4 5
$str6 E
;E F
public 
const 
string 
AccountNumber )
=* +
$str, ;
;; <
public 
const 
string 
AccountPoints )
=* +
$str, @
;@ A
public!! 
const!! 
string!! 
AccountRating!! )
=!!* +
$str!!, ?
;!!? @
public## 
const## 
string## 
Aging30## #
=##$ %
$str##& /
;##/ 0
public%% 
const%% 
string%% 
Aging30Base%% '
=%%( )
$str%%* 8
;%%8 9
public'' 
const'' 
string'' 
Aging60'' #
=''$ %
$str''& /
;''/ 0
public)) 
const)) 
string)) 
Aging60Base)) '
=))( )
$str))* 8
;))8 9
public++ 
const++ 
string++ 
Aging90++ #
=++$ %
$str++& /
;++/ 0
public-- 
const-- 
string-- 
Aging90Base-- '
=--( )
$str--* 8
;--8 9
public// 
const// 
string// 
AnnualRevenueBase// -
=//. /
$str//0 >
;//> ?
public11 
const11 
string11 
AnnualRevenue11 )
=11* +
$str11, 5
;115 6
public33 
const33 
string33 
BillingAccount33 *
=33+ ,
$str33- C
;33C D
public55 
const55 
string55 
BusinessType55 (
=55) *
$str55+ =
;55= >
public77 
const77 
string77 
Category77 $
=77% &
$str77' <
;77< =
public99 
const99 
string99 
Classification99 *
=99+ ,
$str99- H
;99H I
public;; 
const;; 
string;; 
	CreatedBy;; %
=;;& '
$str;;( 3
;;;3 4
public== 
const== 
string== "
CreatedByExternalParty== 2
===3 4
$str==5 M
;==M N
public?? 
const?? 
string?? 
	CreatedOn?? %
=??& '
$str??( 3
;??3 4
publicAA 
constAA 
stringAA 

CreditHoldAA &
=AA' (
$strAA) 7
;AA7 8
publicCC 
constCC 
stringCC 
CreditLimitBaseCC +
=CC, -
$strCC. @
;CC@ A
publicEE 
constEE 
stringEE 
CreditLimitEE '
=EE( )
$strEE* 7
;EE7 8
publicGG 
constGG 
stringGG 
CurrencyGG $
=GG% &
$strGG' >
;GG> ?
publicII 
constII 
stringII 
CustomerSizeII (
=II) *
$strII+ =
;II= >
publicKK 
constKK 
stringKK 
DescriptionKK '
=KK( )
$strKK* 7
;KK7 8
publicMM 
constMM 
stringMM  
DonotallowBulkEmailsMM 0
=MM1 2
$strMM3 C
;MMC D
publicOO 
constOO 
stringOO 
DonotallowBulkMailsOO /
=OO0 1
$strOO2 G
;OOG H
publicQQ 
constQQ 
stringQQ 
DonotallowEmailsQQ ,
=QQ- .
$strQQ/ ;
;QQ; <
publicSS 
constSS 
stringSS 
DonotallowFaxesSS +
=SS, -
$strSS. 8
;SS8 9
publicUU 
constUU 
stringUU 
DonotallowMailsUU +
=UU, -
$strUU. ?
;UU? @
publicWW 
constWW 
stringWW  
DonotallowPhoneCallsWW 0
=WW1 2
$strWW3 ?
;WW? @
publicYY 
constYY 
stringYY 
EmailYY !
=YY" #
$strYY$ 3
;YY3 4
public[[ 
const[[ 
string[[ 
EmailAddress2[[ )
=[[* +
$str[[, ;
;[[; <
public]] 
const]] 
string]] 
EmailAddress3]] )
=]]* +
$str]], ;
;]]; <
public__ 
const__ 
string__ 
EntityImageId__ )
=__* +
$str__, ;
;__; <
publicaa 
constaa 
stringaa 
ExchangeRateaa (
=aa) *
$straa+ 9
;aa9 :
publiccc 
constcc 
stringcc 

ExternalIDcc &
=cc' (
$strcc) B
;ccB C
publicee 
constee 
stringee 
Faxee 
=ee  !
$stree" '
;ee' (
publicgg 
constgg 
stringgg 
FollowEmailActivitygg /
=gg0 1
$strgg2 ?
;gg? @
publicii 
constii 
stringii 
FTPSiteii #
=ii$ %
$strii& 2
;ii2 3
publickk 
constkk 
stringkk 
Industrykk $
=kk% &
$strkk' 5
;kk5 6
publicmm 
constmm 
stringmm 
	isprivatemm %
=mm& '
$strmm( 3
;mm3 4
publicoo 
constoo 
stringoo &
LastDateIncludedinCampaignoo 6
=oo7 8
$stroo9 M
;ooM N
publicqq 
constqq 
stringqq 
LastOnHoldTimeqq *
=qq+ ,
$strqq- =
;qq= >
publicss 
constss 
stringss 
LastSLAappliedss *
=ss+ ,
$strss- ;
;ss; <
publicuu 
constuu 
stringuu 
	MainPhoneuu %
=uu& '
$struu( 4
;uu4 5
publicww 
constww 
stringww $
MarketCapitalizationBaseww 4
=ww5 6
$strww7 G
;wwG H
publicyy 
constyy 
stringyy  
MarketCapitalizationyy 0
=yy1 2
$stryy3 >
;yy> ?
public{{ 
const{{ 
string{{ 
MarketingOnly{{ )
={{* +
$str{{, ;
;{{; <
public}} 
const}} 
string}} 
MasterID}} $
=}}% &
$str}}' 1
;}}1 2
public 
const 
string 
Merged "
=# $
$str% -
;- .
public
�� 
const
�� 
string
�� %
ModifiedByExternalParty
�� 3
=
��4 5
$str
��6 O
;
��O P
public
�� 
const
�� 
string
�� 

ModifiedBy
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 

ModifiedOn
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 
NumberofEmployees
�� -
=
��. /
$str
��0 C
;
��C D
public
�� 
const
�� 
string
�� 
OnHoldTimeMinutes
�� -
=
��. /
$str
��0 <
;
��< =
public
�� 
const
�� 
string
�� $
OpenDealsLastUpdatedOn
�� 2
=
��3 4
$str
��5 E
;
��E F
public
�� 
const
�� 
string
�� 
	OpenDeals
�� %
=
��& '
$str
��( 3
;
��3 4
public
�� 
const
�� 
string
�� 
OpenDealsState
�� *
=
��+ ,
$str
��- >
;
��> ?
public
�� 
const
�� 
string
�� 
OpenRevenueBase
�� +
=
��, -
$str
��. @
;
��@ A
public
�� 
const
�� 
string
�� &
OpenRevenueLastUpdatedOn
�� 4
=
��5 6
$str
��7 I
;
��I J
public
�� 
const
�� 
string
�� 
OpenRevenue
�� '
=
��( )
$str
��* 7
;
��7 8
public
�� 
const
�� 
string
�� 
OpenRevenueState
�� ,
=
��- .
$str
��/ B
;
��B C
public
�� 
const
�� 
string
�� 
OriginatingLead
�� +
=
��, -
$str
��. A
;
��A B
public
�� 
const
�� 
string
�� 

OtherPhone
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 
Owner
�� !
=
��" #
$str
��$ -
;
��- .
public
�� 
const
�� 
string
�� 
	Ownership
�� %
=
��& '
$str
��( 7
;
��7 8
public
�� 
const
�� 
string
�� 
ParentAccount
�� )
=
��* +
$str
��, =
;
��= >
public
�� 
const
�� 
string
�� $
ParticipatesinWorkflow
�� 2
=
��3 4
$str
��5 M
;
��M N
public
�� 
const
�� 
string
�� 
PaymentTerms
�� (
=
��) *
$str
��+ =
;
��= >
public
�� 
const
�� 
string
�� 
PreferredDay
�� (
=
��) *
$str
��+ H
;
��H I
public
�� 
const
�� 
string
�� )
PreferredFacility_Equipment
�� 7
=
��8 9
$str
��: P
;
��P Q
public
�� 
const
�� 
string
�� &
PreferredMethodofContact
�� 4
=
��5 6
$str
��7 S
;
��S T
public
�� 
const
�� 
string
�� )
PreferredResourceDeprecated
�� 7
=
��8 9
$str
��: S
;
��S T
public
�� 
const
�� 
string
�� 
PreferredService
�� ,
=
��- .
$str
��/ C
;
��C D
public
�� 
const
�� 
string
�� 
PreferredTime
�� )
=
��* +
$str
��, J
;
��J K
public
�� 
const
�� 
string
�� 
PreferredUser
�� )
=
��* +
$str
��, C
;
��C D
public
�� 
const
�� 
string
�� 
PrimaryContact
�� *
=
��+ ,
$str
��- ?
;
��? @
public
�� 
const
�� 
string
�� 
PrimarySatoriID
�� +
=
��, -
$str
��. ?
;
��? @
public
�� 
const
�� 
string
�� 
PrimaryTwitterID
�� ,
=
��- .
$str
��/ A
;
��A B
public
�� 
const
�� 
string
�� 
Process
�� #
=
��$ %
$str
��& 1
;
��1 2
public
�� 
const
�� 
string
�� 
ProductPriceList
�� ,
=
��- .
$str
��/ D
;
��D E
public
�� 
const
�� 
string
�� 
RelationshipType
�� ,
=
��- .
$str
��/ A
;
��A B
public
�� 
const
�� 
string
�� 
SalesTaxCode
�� (
=
��) *
$str
��+ ?
;
��? @
public
�� 
const
�� 
string
�� $
SendMarketingMaterials
�� 2
=
��3 4
$str
��5 B
;
��B C
public
�� 
const
�� 
string
�� 
ServiceTerritory
�� ,
=
��- .
$str
��/ G
;
��G H
public
�� 
const
�� 
string
�� 
SharesOutstanding
�� -
=
��. /
$str
��0 C
;
��C D
public
�� 
const
�� 
string
�� 
ShippingMethod
�� *
=
��+ ,
$str
��- A
;
��A B
public
�� 
const
�� 
string
�� 
SICCode
�� #
=
��$ %
$str
��& +
;
��+ ,
public
�� 
const
�� 
string
�� 
SLA
�� 
=
��  !
$str
��" )
;
��) *
public
�� 
const
�� 
string
�� 
Status
�� "
=
��# $
$str
��% 0
;
��0 1
public
�� 
const
�� 
string
�� 
StatusReason
�� (
=
��) *
$str
��+ 7
;
��7 8
public
�� 
const
�� 
string
�� 
StockExchange
�� )
=
��* +
$str
��, ;
;
��; <
public
�� 
const
�� 
string
�� 
	TaxExempt
�� %
=
��& '
$str
��( 9
;
��9 :
public
�� 
const
�� 
string
�� 
TaxExemptNumber
�� +
=
��, -
$str
��. E
;
��E F
public
�� 
const
�� 
string
�� 
TeamsFollowed
�� )
=
��* +
$str
��, ;
;
��; <
public
�� 
const
�� 
string
�� 

Telephone3
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 
	Territory
�� %
=
��& '
$str
��( 5
;
��5 6
public
�� 
const
�� 
string
�� 
TerritoryCode
�� )
=
��* +
$str
��, ;
;
��; <
public
�� 
const
�� 
string
�� 
TickerSymbol
�� (
=
��) *
$str
��+ 9
;
��9 :
public
�� 
const
�� 
string
�� 
TimeSpentbyme
�� )
=
��* +
$str
��, M
;
��M N
public
�� 
const
�� 
string
�� 
TravelChargeBase
�� ,
=
��- .
$str
��/ H
;
��H I
public
�� 
const
�� 
string
�� 
TravelCharge
�� (
=
��) *
$str
��+ ?
;
��? @
public
�� 
const
�� 
string
�� 
TravelChargeType
�� ,
=
��- .
$str
��/ G
;
��G H
public
�� 
const
�� 
string
�� 
Website
�� #
=
��$ %
$str
��& 2
;
��2 3
public
�� 
const
�� 
string
�� 
WorkHourTemplate
�� ,
=
��- .
$str
��/ G
;
��G H
public
�� 
const
�� 
string
�� #
WorkOrderInstructions
�� 1
=
��2 3
$str
��4 Q
;
��Q R
public
�� 
const
�� 
string
�� 
YomiAccountName
�� +
=
��, -
$str
��. 8
;
��8 9
public
�� 
const
�� 
string
�� #
Rel1M_AccountMasterID
�� 1
=
��2 3
$str
��4 L
;
��L M
public
�� 
const
�� 
string
�� (
Rel1M_AccountParentAccount
�� 6
=
��7 8
$str
��9 Q
;
��Q R
public
�� 
const
�� 
string
�� )
Rel1M_AccountBillingAccount
�� 7
=
��8 9
$str
��: `
;
��` a
public
�� 
enum
�� %
AccountRating_OptionSet
�� +
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
BusinessType_OptionSet
�� *
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
��  
Category_OptionSet
�� &
{
�� 	
PreferredCustomer
�� 
=
�� 
$num
��  !
,
��! "
Standard
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� &
Classification_OptionSet
�� ,
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
CustomerSize_OptionSet
�� *
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
��  
Industry_OptionSet
�� &
{
�� 	

Accounting
�� 
=
�� 
$num
�� 
,
�� ?
1AgricultureandNon_petrolNaturalResourceExtraction
�� =
=
��> ?
$num
��@ A
,
��A B/
!BroadcastingPrintingandPublishing
�� -
=
��. /
$num
��0 1
,
��1 2
Brokers
�� 
=
�� 
$num
�� 
,
�� "
BuildingSupplyRetail
��  
=
��! "
$num
��# $
,
��$ %
BusinessServices
�� 
=
�� 
$num
��  
,
��  !

Consulting
�� 
=
�� 
$num
�� 
,
�� 
ConsumerServices
�� 
=
�� 
$num
��  
,
��  !2
$DesignDirectionandCreativeManagement
�� 0
=
��1 2
$num
��3 4
,
��4 52
$DistributorsDispatchersandProcessors
�� 0
=
��1 2
$num
��3 5
,
��5 6&
DoctorsOfficesandClinics
�� $
=
��% &
$num
��' )
,
��) *"
DurableManufacturing
��  
=
��! "
$num
��# %
,
��% &%
EatingandDrinkingPlaces
�� #
=
��$ %
$num
��& (
,
��( )!
EntertainmentRetail
�� 
=
��  !
$num
��" $
,
��$ %'
EquipmentRentalandLeasing
�� %
=
��& '
$num
��( *
,
��* +
	Financial
�� 
=
�� 
$num
�� 
,
�� &
FoodandTobaccoProcessing
�� $
=
��% &
$num
��' )
,
��) */
!InboundCapitalIntensiveProcessing
�� -
=
��. /
$num
��0 2
,
��2 3&
InboundRepairandServices
�� $
=
��% &
$num
��' )
,
��) *
	Insurance
�� 
=
�� 
$num
�� 
,
�� 
LegalServices
�� 
=
�� 
$num
�� 
,
�� *
Non_DurableMerchandiseRetail
�� (
=
��) *
$num
��+ -
,
��- .%
OutboundConsumerService
�� #
=
��$ %
$num
��& (
,
��( )4
&PetrochemicalExtractionandDistribution
�� 2
=
��3 4
$num
��5 7
,
��7 8
ServiceRetail
�� 
=
�� 
$num
�� 
,
�� 
SIGAffiliations
�� 
=
�� 
$num
��  
,
��  !
SocialServices
�� 
=
�� 
$num
�� 
,
��  -
SpecialOutboundTradeContractors
�� +
=
��, -
$num
��. 0
,
��0 1
SpecialtyRealty
�� 
=
�� 
$num
��  
,
��  !
Transportation
�� 
=
�� 
$num
�� 
,
��  ,
UtilityCreationandDistribution
�� *
=
��+ ,
$num
��- /
,
��/ 0
VehicleRetail
�� 
=
�� 
$num
�� 
,
�� 
	Wholesale
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� !
Ownership_OptionSet
�� '
{
�� 	
Public
�� 
=
�� 
$num
�� 
,
�� 
Private
�� 
=
�� 
$num
�� 
,
�� 

Subsidiary
�� 
=
�� 
$num
�� 
,
�� 
Other
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
PaymentTerms_OptionSet
�� *
{
�� 	
Net30
�� 
=
�� 
$num
�� 
,
�� 
	_210Net30
�� 
=
�� 
$num
�� 
,
�� 
Net45
�� 
=
�� 
$num
�� 
,
�� 
Net60
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
PreferredDay_OptionSet
�� *
{
�� 	
Sunday
�� 
=
�� 
$num
�� 
,
�� 
Monday
�� 
=
�� 
$num
�� 
,
�� 
Tuesday
�� 
=
�� 
$num
�� 
,
�� 
	Wednesday
�� 
=
�� 
$num
�� 
,
�� 
Thursday
�� 
=
�� 
$num
�� 
,
�� 
Friday
�� 
=
�� 
$num
�� 
,
�� 
Saturday
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� 0
"PreferredMethodofContact_OptionSet
�� 6
{
�� 	
Any
�� 
=
�� 
$num
�� 
,
�� 
Email
�� 
=
�� 
$num
�� 
,
�� 
Phone
�� 
=
�� 
$num
�� 
,
�� 
Fax
�� 
=
�� 
$num
�� 
,
�� 
Mail
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� %
PreferredTime_OptionSet
�� +
{
�� 	
Morning
�� 
=
�� 
$num
�� 
,
�� 
	Afternoon
�� 
=
�� 
$num
�� 
,
�� 
Evening
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� (
RelationshipType_OptionSet
�� .
{
�� 	

Competitor
�� 
=
�� 
$num
�� 
,
�� 

Consultant
�� 
=
�� 
$num
�� 
,
�� 
Customer
�� 
=
�� 
$num
�� 
,
�� 
Investor
�� 
=
�� 
$num
�� 
,
�� 
Partner
�� 
=
�� 
$num
�� 
,
�� 

Influencer
�� 
=
�� 
$num
�� 
,
�� 
Press
�� 
=
�� 
$num
�� 
,
�� 
Prospect
�� 
=
�� 
$num
�� 
,
�� 
Reseller
�� 
=
�� 
$num
�� 
,
�� 
Supplier
�� 
=
�� 
$num
�� 
,
�� 
Vendor
�� 
=
�� 
$num
�� 
,
�� 
Other
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� &
ShippingMethod_OptionSet
�� ,
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� 
Status_OptionSet
�� $
{
�� 	
Active
�� 
=
�� 
$num
�� 
,
�� 
Inactive
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
StatusReason_OptionSet
�� *
{
�� 	
Active
�� 
=
�� 
$num
�� 
,
�� 
Inactive
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� %
TerritoryCode_OptionSet
�� +
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� (
TravelChargeType_OptionSet
�� .
{
�� 	
Hourly
�� 
=
�� 
$num
�� 
,
�� 
Mileage
�� 
=
�� 
$num
�� 
,
��  
Fixed
�� 
=
�� 
$num
�� 
,
�� 
None
�� 
=
�� 
$num
�� 
}
�� 	
}
�� 
}�� Ӯ
GC:\Users\eddie\source\repos\D365_Marketing\Plugin\EntityMeta\Contact.cs
	namespace

 	
D365Meta


 
{ 
public 

static 
class 
Contact 
{ 
public 
const 
string 

EntityName &
=' (
$str) 2
;2 3
public 
const 
string  
EntityCollectionName 0
=1 2
$str3 =
;= >
public 
const 
string 

PrimaryKey &
=' (
$str) 4
;4 5
public 
const 
string 
PrimaryName '
=( )
$str* 4
;4 5
public 
const 
string "
DeprecatedProcessStage 2
=3 4
$str5 >
;> ?
public 
const 
string #
DeprecatedTraversedPath 3
=4 5
$str6 E
;E F
public 
const 
string 
Aging30 #
=$ %
$str& /
;/ 0
public 
const 
string 
Aging30Base '
=( )
$str* 8
;8 9
public!! 
const!! 
string!! 
Aging60!! #
=!!$ %
$str!!& /
;!!/ 0
public## 
const## 
string## 
Aging60Base## '
=##( )
$str##* 8
;##8 9
public%% 
const%% 
string%% 
Aging90%% #
=%%$ %
$str%%& /
;%%/ 0
public'' 
const'' 
string'' 
Aging90Base'' '
=''( )
$str''* 8
;''8 9
public)) 
const)) 
string)) 
Anniversary)) '
=))( )
$str))* 7
;))7 8
public++ 
const++ 
string++ 
AnnualIncome++ (
=++) *
$str+++ 9
;++9 :
public-- 
const-- 
string-- 
AnnualIncomeBase-- ,
=--- .
$str--/ B
;--B C
public// 
const// 
string// 
	Assistant// %
=//& '
$str//( 7
;//7 8
public11 
const11 
string11 
AssistantPhone11 *
=11+ ,
$str11- =
;11= >
public33 
const33 
string33 
Auto_created33 (
=33) *
$str33+ 9
;339 :
public55 
const55 
string55 
BackOfficeCustomer55 .
=55/ 0
$str551 G
;55G H
public77 
const77 
string77 
Birthday77 $
=77% &
$str77' 2
;772 3
public99 
const99 
string99 
BusinessCard99 (
=99) *
$str99+ 9
;999 :
public;; 
const;; 
string;; 
BusinessPhone;; )
=;;* +
$str;;, 8
;;;8 9
public== 
const== 
string== 
BusinessPhone2== *
===+ ,
$str==- 8
;==8 9
public?? 
const?? 
string?? "
BusinessCardAttributes?? 2
=??3 4
$str??5 M
;??M N
publicAA 
constAA 
stringAA 
CallbackNumberAA *
=AA+ ,
$strAA- 7
;AA7 8
publicCC 
constCC 
stringCC 
ChildrensNamesCC *
=CC+ ,
$strCC- =
;CC= >
publicEE 
constEE 
stringEE 
CompanyNameEE '
=EE( )
$strEE* <
;EE< =
publicGG 
constGG 
stringGG 
CompanyPhoneGG (
=GG) *
$strGG+ 4
;GG4 5
publicII 
constII 
stringII 
ContactScoreII (
=II) *
$strII+ =
;II= >
publicKK 
constKK 
stringKK 
	CreatedByKK %
=KK& '
$strKK( 3
;KK3 4
publicMM 
constMM 
stringMM "
CreatedByExternalPartyMM 2
=MM3 4
$strMM5 M
;MMM N
publicOO 
constOO 
stringOO 
	CreatedOnOO %
=OO& '
$strOO( 3
;OO3 4
publicQQ 
constQQ 
stringQQ 

CreditHoldQQ &
=QQ' (
$strQQ) 7
;QQ7 8
publicSS 
constSS 
stringSS 
CreditLimitBaseSS +
=SS, -
$strSS. @
;SS@ A
publicUU 
constUU 
stringUU 
CreditLimitUU '
=UU( )
$strUU* 7
;UU7 8
publicWW 
constWW 
stringWW 
CurrencyWW $
=WW% &
$strWW' >
;WW> ?
publicYY 
constYY 
stringYY 
CustomerSizeYY (
=YY) *
$strYY+ =
;YY= >
public[[ 
const[[ 
string[[ 

Department[[ &
=[[' (
$str[[) 5
;[[5 6
public]] 
const]] 
string]] 
Description]] '
=]]( )
$str]]* 7
;]]7 8
public__ 
const__ 
string__  
DonotallowBulkEmails__ 0
=__1 2
$str__3 C
;__C D
publicaa 
constaa 
stringaa 
DonotallowBulkMailsaa /
=aa0 1
$straa2 G
;aaG H
publiccc 
constcc 
stringcc 
DonotallowEmailscc ,
=cc- .
$strcc/ ;
;cc; <
publicee 
constee 
stringee 
DonotallowFaxesee +
=ee, -
$stree. 8
;ee8 9
publicgg 
constgg 
stringgg 
DonotallowMailsgg +
=gg, -
$strgg. ?
;gg? @
publicii 
constii 
stringii  
DonotallowPhoneCallsii 0
=ii1 2
$strii3 ?
;ii? @
publickk 
constkk 
stringkk 
	Educationkk %
=kk& '
$strkk( 7
;kk7 8
publicmm 
constmm 
stringmm 
Emailmm !
=mm" #
$strmm$ 3
;mm3 4
publicoo 
constoo 
stringoo 
EmailAddress2oo )
=oo* +
$stroo, ;
;oo; <
publicqq 
constqq 
stringqq 
EmailAddress3qq )
=qq* +
$strqq, ;
;qq; <
publicss 
constss 
stringss 
Employeess $
=ss% &
$strss' 3
;ss3 4
publicuu 
constuu 
stringuu 
EntityImageIduu )
=uu* +
$struu, ;
;uu; <
publicww 
constww 
stringww 
ExchangeRateww (
=ww) *
$strww+ 9
;ww9 :
publicyy 
constyy 
stringyy "
ExternalUserIdentifieryy 2
=yy3 4
$stryy5 M
;yyM N
public{{ 
const{{ 
string{{ 
Fax{{ 
={{  !
$str{{" '
;{{' (
public}} 
const}} 
string}} 
	FirstName}} %
=}}& '
$str}}( 3
;}}3 4
public 
const 
string 
FollowEmailActivity /
=0 1
$str2 ?
;? @
public
�� 
const
�� 
string
�� 
FTPSite
�� #
=
��$ %
$str
��& 2
;
��2 3
public
�� 
const
�� 
string
�� 

GDPROptout
�� &
=
��' (
$str
��) ;
;
��; <
public
�� 
const
�� 
string
�� 
Gender
�� "
=
��# $
$str
��% 1
;
��1 2
public
�� 
const
�� 
string
�� 

Government
�� &
=
��' (
$str
��) 7
;
��7 8
public
�� 
const
�� 
string
�� 
HasChildren
�� '
=
��( )
$str
��* ;
;
��; <
public
�� 
const
�� 
string
�� 
	HomePhone
�� %
=
��& '
$str
��( 4
;
��4 5
public
�� 
const
�� 
string
�� 

HomePhone2
�� &
=
��' (
$str
��) 0
;
��0 1
public
�� 
const
�� 
string
�� 
	isprivate
�� %
=
��& '
$str
��( 3
;
��3 4
public
�� 
const
�� 
string
�� 
JobTitle
�� $
=
��% &
$str
��' 1
;
��1 2
public
�� 
const
�� 
string
�� (
LastDateIncludedinCampaign
�� 6
=
��7 8
$str
��9 M
;
��M N
public
�� 
const
�� 
string
�� 
LastName
�� $
=
��% &
$str
��' 1
;
��1 2
public
�� 
const
�� 
string
�� 
LastOnHoldTime
�� *
=
��+ ,
$str
��- =
;
��= >
public
�� 
const
�� 
string
�� 
LastSLAapplied
�� *
=
��+ ,
$str
��- ;
;
��; <
public
�� 
const
�� 
string
�� 

LeadSource
�� &
=
��' (
$str
��) 9
;
��9 :
public
�� 
const
�� 
string
�� 
Manager
�� #
=
��$ %
$str
��& 3
;
��3 4
public
�� 
const
�� 
string
�� 
ManagerPhone
�� (
=
��) *
$str
��+ 9
;
��9 :
public
�� 
const
�� 
string
�� 
MaritalStatus
�� )
=
��* +
$str
��, >
;
��> ?
public
�� 
const
�� 
string
�� 
MarketingOnly
�� )
=
��* +
$str
��, ;
;
��; <
public
�� 
const
�� 
string
�� 
MasterID
�� $
=
��% &
$str
��' 1
;
��1 2
public
�� 
const
�� 
string
�� 
Merged
�� "
=
��# $
$str
��% -
;
��- .
public
�� 
const
�� 
string
�� 

MiddleName
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 
MobilePhone
�� '
=
��( )
$str
��* 7
;
��7 8
public
�� 
const
�� 
string
�� %
ModifiedByExternalParty
�� 3
=
��4 5
$str
��6 O
;
��O P
public
�� 
const
�� 
string
�� 

ModifiedBy
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 

ModifiedOn
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 
Nickname
�� $
=
��% &
$str
��' 1
;
��1 2
public
�� 
const
�� 
string
�� 
NoofChildren
�� (
=
��) *
$str
��+ =
;
��= >
public
�� 
const
�� 
string
�� 
NotatCompanyFlag
�� ,
=
��- .
$str
��/ F
;
��F G
public
�� 
const
�� 
string
�� 
OnHoldTimeMinutes
�� -
=
��. /
$str
��0 <
;
��< =
public
�� 
const
�� 
string
�� 
OriginatingLead
�� +
=
��, -
$str
��. A
;
��A B
public
�� 
const
�� 
string
�� 
Owner
�� !
=
��" #
$str
��$ -
;
��- .
public
�� 
const
�� 
string
�� 
Pager
�� !
=
��" #
$str
��$ +
;
��+ ,
public
�� 
const
�� 
string
��  
ParentCustomerType
�� .
=
��/ 0
$str
��1 G
;
��G H
public
�� 
const
�� 
string
�� "
parentcustomeridname
�� 0
=
��1 2
$str
��3 I
;
��I J
public
�� 
const
�� 
string
�� &
parentcustomeridyominame
�� 4
=
��5 6
$str
��7 Q
;
��Q R
public
�� 
const
�� 
string
�� $
ParticipatesinWorkflow
�� 2
=
��3 4
$str
��5 M
;
��M N
public
�� 
const
�� 
string
�� 
PaymentTerms
�� (
=
��) *
$str
��+ =
;
��= >
public
�� 
const
�� 
string
�� 
PreferredDay
�� (
=
��) *
$str
��+ H
;
��H I
public
�� 
const
�� 
string
�� )
PreferredFacility_Equipment
�� 7
=
��8 9
$str
��: P
;
��P Q
public
�� 
const
�� 
string
�� &
PreferredMethodofContact
�� 4
=
��5 6
$str
��7 S
;
��S T
public
�� 
const
�� 
string
�� 
PreferredService
�� ,
=
��- .
$str
��/ C
;
��C D
public
�� 
const
�� 
string
�� 
PreferredTime
�� )
=
��* +
$str
��, J
;
��J K
public
�� 
const
�� 
string
�� 
PreferredUser
�� )
=
��* +
$str
��, C
;
��C D
public
�� 
const
�� 
string
�� 
	PriceList
�� %
=
��& '
$str
��( =
;
��= >
public
�� 
const
�� 
string
�� 
Process
�� #
=
��$ %
$str
��& 1
;
��1 2
public
�� 
const
�� 
string
�� 
RelationshipType
�� ,
=
��- .
$str
��/ A
;
��A B
public
�� 
const
�� 
string
�� 
Role
��  
=
��! "
$str
��# 4
;
��4 5
public
�� 
const
�� 
string
�� 

Salutation
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� $
SendMarketingMaterials
�� 2
=
��3 4
$str
��5 B
;
��B C
public
�� 
const
�� 
string
�� 
ShippingMethod
�� *
=
��+ ,
$str
��- A
;
��A B
public
�� 
const
�� 
string
�� 
SLA
�� 
=
��  !
$str
��" )
;
��) *
public
�� 
const
�� 
string
��  
Spouse_PartnerName
�� .
=
��/ 0
$str
��1 >
;
��> ?
public
�� 
const
�� 
string
�� 
Status
�� "
=
��# $
$str
��% 0
;
��0 1
public
�� 
const
�� 
string
�� 
StatusReason
�� (
=
��) *
$str
��+ 7
;
��7 8
public
�� 
const
�� 
string
�� 
Subscription
�� (
=
��) *
$str
��+ ;
;
��; <
public
�� 
const
�� 
string
�� 
Suffix
�� "
=
��# $
$str
��% -
;
��- .
public
�� 
const
�� 
string
�� 
TeamsFollowed
�� )
=
��* +
$str
��, ;
;
��; <
public
�� 
const
�� 
string
�� 

Telephone3
�� &
=
��' (
$str
��) 5
;
��5 6
public
�� 
const
�� 
string
�� 
	Territory
�� %
=
��& '
$str
��( 7
;
��7 8
public
�� 
const
�� 
string
�� 
TimeSpentbyme
�� )
=
��* +
$str
��, M
;
��M N
public
�� 
const
�� 
string
�� 
Website
�� #
=
��$ %
$str
��& 2
;
��2 3
public
�� 
const
�� 
string
�� 
YomiFirstName
�� )
=
��* +
$str
��, ;
;
��; <
public
�� 
const
�� 
string
�� 
YomiFullName
�� (
=
��) *
$str
��+ 9
;
��9 :
public
�� 
const
�� 
string
�� 
YomiLastName
�� (
=
��) *
$str
��+ 9
;
��9 :
public
�� 
const
�� 
string
�� 
YomiMiddleName
�� *
=
��+ ,
$str
��- =
;
��= >
public
�� 
enum
�� $
CustomerSize_OptionSet
�� *
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� !
Education_OptionSet
�� '
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� 
Gender_OptionSet
�� $
{
�� 	
Male
�� 
=
�� 
$num
�� 
,
�� 
Female
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� #
HasChildren_OptionSet
�� )
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� "
LeadSource_OptionSet
�� (
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� %
MaritalStatus_OptionSet
�� +
{
�� 	
Single
�� 
=
�� 
$num
�� 
,
�� 
Married
�� 
=
�� 
$num
�� 
,
�� 
Divorced
�� 
=
�� 
$num
�� 
,
�� 
Widowed
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� (
NotatCompanyFlag_OptionSet
�� .
{
�� 	

NoFeedback
�� 
=
�� 
$num
�� 
,
�� 
NotatCompany
�� 
=
�� 
$num
�� 
,
�� 
Ignore
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� *
ParentCustomerType_OptionSet
�� 0
{
�� 	
}
�� 	
public
�� 
enum
�� $
PaymentTerms_OptionSet
�� *
{
�� 	
Net30
�� 
=
�� 
$num
�� 
,
�� 
	_210Net30
�� 
=
�� 
$num
�� 
,
�� 
Net45
�� 
=
�� 
$num
�� 
,
�� 
Net60
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
PreferredDay_OptionSet
�� *
{
�� 	
Sunday
�� 
=
�� 
$num
�� 
,
�� 
Monday
�� 
=
�� 
$num
�� 
,
�� 
Tuesday
�� 
=
�� 
$num
�� 
,
�� 
	Wednesday
�� 
=
�� 
$num
�� 
,
�� 
Thursday
�� 
=
�� 
$num
�� 
,
�� 
Friday
�� 
=
�� 
$num
�� 
,
�� 
Saturday
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� 0
"PreferredMethodofContact_OptionSet
�� 6
{
�� 	
Any
�� 
=
�� 
$num
�� 
,
�� 
Email
�� 
=
�� 
$num
�� 
,
�� 
Phone
�� 
=
�� 
$num
�� 
,
�� 
Fax
�� 
=
�� 
$num
�� 
,
�� 
Mail
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� %
PreferredTime_OptionSet
�� +
{
�� 	
Morning
�� 
=
�� 
$num
�� 
,
�� 
	Afternoon
�� 
=
�� 
$num
�� 
,
�� 
Evening
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� (
RelationshipType_OptionSet
�� .
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� 
Role_OptionSet
�� "
{
�� 	
DecisionMaker
�� 
=
�� 
$num
�� 
,
�� 
Employee
�� 
=
�� 
$num
�� 
,
�� 

Influencer
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� &
ShippingMethod_OptionSet
�� ,
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� 
Status_OptionSet
�� $
{
�� 	
Active
�� 
=
�� 
$num
�� 
,
�� 
Inactive
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� $
StatusReason_OptionSet
�� *
{
�� 	
Active
�� 
=
�� 
$num
�� 
,
�� 
Inactive
�� 
=
�� 
$num
�� 
}
�� 	
public
�� 
enum
�� !
Territory_OptionSet
�� '
{
�� 	
DefaultValue
�� 
=
�� 
$num
�� 
}
�� 	
}
�� 
}�� �e
CC:\Users\eddie\source\repos\D365_Marketing\Plugin\Library\Helper.cs
	namespace 	
Plugin
 
. 
Library 
{ 
public 

static 
class 
Helper 
{		 
public

 
static

 
OptionSetValue

 $
ToOS

% )
<

) *
TValue

* 0
>

0 1
(

1 2
this

2 6
TValue

7 =
value

> C
)

C D
where

E J
TValue

K Q
:

R S
struct

T Z
,

Z [
IConvertible

\ h
{ 	
if 
( 
! 
typeof 
( 
TValue 
) 
.  
IsEnum  &
)& '
{ 
throw 
new 
ArgumentException +
(+ ,
nameof, 2
(2 3
value3 8
)8 9
)9 :
;: ;
} 
return 
new 
OptionSetValue %
(% &
(& '
int' *
)* +
(+ ,
object, 2
)2 3
value3 8
)8 9
;9 :
} 	
public 
static 
int 
ToInt 
<  
TValue  &
>& '
(' (
this( ,
TValue- 3
value4 9
)9 :
where; @
TValueA G
:H I
structJ P
,P Q
IConvertibleR ^
{ 	
if 
( 
! 
typeof 
( 
TValue 
) 
.  
IsEnum  &
)& '
{ 
throw 
new 
ArgumentException +
(+ ,
nameof, 2
(2 3
value3 8
)8 9
)9 :
;: ;
} 
return 
( 
int 
) 
( 
object 
)  
value  %
;% &
} 	
public 
static 
Money 
ToMoney #
(# $
this$ (
decimal) 0
value1 6
)6 7
{ 	
return   
new   
Money   
(   
value   "
)  " #
;  # $
}!! 	
public## 
static## 
void## 
Swap## 
<##  
T##  !
>##! "
(##" #
ref### &
T##' (
a##) *
,##* +
ref##, /
T##0 1
b##2 3
)##3 4
where##5 :
T##; <
:##= >
new##? B
(##B C
)##C D
{$$ 	
T%% 
temp%% 
=%% 
default%% 
(%% 
T%% 
)%% 
;%%  
temp'' 
='' 
b'' 
;'' 
b(( 
=(( 
a(( 
;(( 
a)) 
=)) 
temp)) 
;)) 
}** 	
public,, 
static,, 
int,, 
GetInt,,  
(,,  !
this,,! %
Entity,,& ,
e,,- .
,,,. /
string,,0 6
_fd,,7 :
),,: ;
{-- 	
int.. 
value.. 
;.. 
try00 
{11 
value22 
=22 
e22 
.22 
GetAttributeValue22 +
<22+ ,
int22, /
>22/ 0
(220 1
_fd221 4
)224 5
;225 6
}33 
catch44 
{55 
value66 
=66 
e66 
.66 
GetAttributeValue66 +
<66+ ,
OptionSetValue66, :
>66: ;
(66; <
_fd66< ?
)66? @
?66@ A
.66A B
Value66B G
??66H J
$num66K L
;66L M
}77 
return99 
value99 
;99 
}:: 	
public<< 
static<< 
DateTime<< 
?<< 

GetUTCDate<<  *
(<<* +
this<<+ /
Entity<<0 6
e<<7 8
,<<8 9
string<<: @
_fd<<A D
)<<D E
{== 	
return>> 
e>> 
.>> 
GetAttributeValue>> &
<>>& '
DateTime>>' /
>>>/ 0
(>>0 1
_fd>>1 4
)>>4 5
;>>5 6
}?? 	
publicAA 
staticAA 
DateTimeAA 
?AA 
GetLocalDateAA  ,
(AA, -
thisAA- 1
EntityAA2 8
eAA9 :
,AA: ;
stringAA< B
_fdAAC F
)AAF G
{BB 	
DateTimeCC 
?CC 
valueCC 
;CC 
valueEE 
=EE 
eEE 
.EE 
GetAttributeValueEE '
<EE' (
DateTimeEE( 0
>EE0 1
(EE1 2
_fdEE2 5
)EE5 6
;EE6 7
ifGG 
(GG 
valueGG 
!=GG 
nullGG 
)GG 
{HH 
DateTimeII 
utcDateII  
=II! "
DateTimeII# +
.II+ ,
SpecifyKindII, 7
(II7 8
valueII8 =
.II= >
ValueII> C
,IIC D
DateTimeKindIIE Q
.IIQ R
UtcIIR U
)IIU V
;IIV W
valueJJ 
=JJ 
utcDateJJ 
.JJ  
ToLocalTimeJJ  +
(JJ+ ,
)JJ, -
;JJ- .
}KK 
returnMM 
valueMM 
;MM 
}NN 	
publicPP 
staticPP 
DateTimePP 
?PP 
	GetHKDatePP  )
(PP) *
thisPP* .
EntityPP/ 5
ePP6 7
,PP7 8
stringPP9 ?
_fdPP@ C
)PPC D
{QQ 	
DateTimeRR 
?RR 
valueRR 
;RR 
valueTT 
=TT 
eTT 
.TT 
GetAttributeValueTT '
<TT' (
DateTimeTT( 0
>TT0 1
(TT1 2
_fdTT2 5
)TT5 6
;TT6 7
ifVV 
(VV 
valueVV 
!=VV 
nullVV 
)VV 
{WW 
valueXX 
=XX 
valueXX 
.XX 
ValueXX #
.XX# $
AddHoursXX$ ,
(XX, -
$numXX- .
)XX. /
;XX/ 0
}YY 
return[[ 
value[[ 
;[[ 
}\\ 	
public^^ 
static^^ 
string^^ 
GetHKDateString^^ ,
(^^, -
this^^- 1
Entity^^2 8
e^^9 :
,^^: ;
string^^< B
_fd^^C F
,^^F G
string^^H N
defaultFormat^^O \
=^^] ^
$str^^_ k
)^^k l
{__ 	
string`` 
value`` 
=`` 
$str`` 
;`` 
DateTimebb 
?bb 
datebb 
=bb 
ebb 
.bb 
	GetHKDatebb (
(bb( )
_fdbb) ,
)bb, -
;bb- .
ifdd 
(dd 
datedd 
!=dd 
nulldd 
)dd 
{ee 
valueff 
=ff 
dateff 
.ff 
Valueff "
.ff" #
ToStringff# +
(ff+ ,
defaultFormatff, 9
)ff9 :
;ff: ;
}gg 
returnii 
valueii 
;ii 
}jj 	
publicll 
staticll 
decimalll 

GetDecimalll (
(ll( )
thisll) -
Entityll. 4
ell5 6
,ll6 7
stringll8 >
_fdll? B
)llB C
{mm 	
decimalnn 
valuenn 
;nn 
trypp 
{qq 
valuerr 
=rr 
err 
.rr 
GetAttributeValuerr +
<rr+ ,
decimalrr, 3
>rr3 4
(rr4 5
_fdrr5 8
)rr8 9
;rr9 :
}ss 
catchtt 
{uu 
valuevv 
=vv 
evv 
.vv 
GetAttributeValuevv +
<vv+ ,
Moneyvv, 1
>vv1 2
(vv2 3
_fdvv3 6
)vv6 7
?vv7 8
.vv8 9
Valuevv9 >
??vv? A
$numvvB G
;vvG H
}ww 
returnyy 
valueyy 
;yy 
}zz 	
public|| 
static|| 
string|| 
	GetString|| &
(||& '
this||' +
Entity||, 2
e||3 4
,||4 5
string||6 <
_fd||= @
)||@ A
{}} 	
return~~ 
e~~ 
.~~ 
GetAttributeValue~~ &
<~~& '
string~~' -
>~~- .
(~~. /
_fd~~/ 2
)~~2 3
;~~3 4
} 	
public
�� 
static
�� 
string
�� 
	GetOSName
�� &
(
��& '
this
��' +
Entity
��, 2
e
��3 4
,
��4 5
string
��6 <
_fd
��= @
)
��@ A
{
�� 	
return
�� 
e
�� 
.
�� 
FormattedValues
�� $
[
��$ %
_fd
��% (
]
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
bool
�� 
?
�� 
GetBool
�� #
(
��# $
this
��$ (
Entity
��) /
e
��0 1
,
��1 2
string
��3 9
_fd
��: =
)
��= >
{
�� 	
bool
�� 
?
�� 
value
�� 
;
�� 
try
�� 
{
�� 
value
�� 
=
�� 
e
�� 
.
�� 
GetAttributeValue
�� +
<
��+ ,
bool
��, 0
>
��0 1
(
��1 2
_fd
��2 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
{
�� 
value
�� 
=
�� 
null
�� 
;
�� 
}
�� 
return
�� 
value
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
T
�� 
GetAttr
�� 
<
��  
T
��  !
>
��! "
(
��" #
this
��# '
Entity
��( .
e
��/ 0
,
��0 1
string
��2 8
_fd
��9 <
)
��< =
{
�� 	
return
�� 
e
�� 
.
�� 
GetAttributeValue
�� &
<
��& '
T
��' (
>
��( )
(
��) *
_fd
��* -
)
��- .
;
��. /
}
�� 	
public
�� 
static
�� 
QueryExpression
�� %
CreateQuery
��& 1
(
��1 2
string
��2 8

entityName
��9 C
)
��C D
{
�� 	
return
�� 
new
�� 
QueryExpression
�� &
(
��& '

entityName
��' 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
static
�� 
QueryExpression
�� %
AddAttrs
��& .
(
��. /
this
��/ 3
QueryExpression
��4 C
qe
��D F
,
��F G
params
��H N
string
��O U
[
��U V
]
��V W

fieldNames
��X b
)
��b c
{
�� 	
foreach
�� 
(
�� 
var
�� 
_fd
�� 
in
�� 

fieldNames
��  *
)
��* +
{
�� 
qe
�� 
.
�� 
	ColumnSet
�� 
.
�� 
	AddColumn
�� &
(
��& '
_fd
��' *
)
��* +
;
��+ ,
}
�� 
return
�� 
qe
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
QueryExpression
�� %
AddAllAttrs
��& 1
(
��1 2
this
��2 6
QueryExpression
��7 F
qe
��G I
)
��I J
{
�� 	
qe
�� 
.
�� 
	ColumnSet
�� 
=
�� 
new
�� 
	ColumnSet
�� (
(
��( )
true
��) -
)
��- .
;
��. /
return
�� 
qe
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
QueryExpression
�� %
	AddFilter
��& /
(
��/ 0
this
��0 4
QueryExpression
��5 D
qe
��E G
,
��G H
LogicalOperator
��I X
op
��Y [
)
��[ \
{
�� 	
qe
�� 
.
�� 
	AddFilter
�� 
(
�� 
op
�� 
)
�� 
;
�� 
return
�� 
qe
�� 
;
�� 
}
�� 	
}
�� 
}�� �3
FC:\Users\eddie\source\repos\D365_Marketing\Plugin\Library\PluginEnv.cs
	namespace 	
Plugin
 
. 
Library 
{ 
public 

class 
	PluginEnv 
{ 
public		 
IServiceProvider		 
ServiceProvider		  /
{		0 1
get		2 5
;		5 6
}		7 8
public

 
ITracingService

 
TraceService

 +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public #
IPluginExecutionContext &
Context' .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public '
IOrganizationServiceFactory *
ServiceFactory+ 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public  
IOrganizationService #
Svc$ '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
Entity 
TargetEntity "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
Entity 
PreImageEntity $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
	PluginEnv 
( 
IServiceProvider )
serviceProvider* 9
)9 :
{ 	#
IPluginExecutionContext #
context$ +
=, -
( #
IPluginExecutionContext (
)( )
serviceProvider) 8
.8 9

GetService9 C
(C D
typeofD J
(J K#
IPluginExecutionContextK b
)b c
)c d
;d e'
IOrganizationServiceFactory '
factory( /
=0 1
( '
IOrganizationServiceFactory ,
), -
serviceProvider- <
.< =

GetService= G
(G H
typeofH N
(N O'
IOrganizationServiceFactoryO j
)j k
)k l
;l m 
IOrganizationService  
service! (
=) *
factory 
. %
CreateOrganizationService 1
(1 2
context2 9
.9 :
UserId: @
)@ A
;A B
ITracingService 
trace !
=" #
( 
ITracingService  
)  !
serviceProvider! 0
.0 1

GetService1 ;
(; <
typeof< B
(B C
ITracingServiceC R
)R S
)S T
;T U
Context   
=   
context   
;   
Svc!! 
=!! 
service!! 
;!! 
TraceService"" 
="" 
trace""  
;""  !
}## 	
public$$ 
	PluginEnv$$ 
($$ #
IPluginExecutionContext%% #
_context%%$ ,
,%%, - 
IOrganizationService&&  
_service&&! )
,&&) *
ITracingService'' 
_trace'' "
)''" #
{(( 	
Context)) 
=)) 
_context)) 
;)) 
Svc** 
=** 
_service** 
;** 
TraceService++ 
=++ 
_trace++ !
;++! "
},, 	
public.. 
bool.. 

IsValidReq.. 
(.. 
)..  
{// 	
if00 
(00 
Context00 
.00 
InputParameters00 '
.00' (
Contains00( 0
(000 1
$str001 9
)009 :
&&00; =
Context00> E
.00E F
InputParameters00F U
[00U V
$str00V ^
]00^ _
is00` b
Entity00c i
)00i j
{11 
TargetEntity22 
=22 
(22  
Entity22  &
)22& '
Context22' .
.22. /
InputParameters22/ >
[22> ?
$str22? G
]22G H
;22H I
return33 
true33 
;33 
}44 
Trace66 
(66 
$str66 +
)66+ ,
;66, -
return77 
false77 
;77 
}88 	
public99 
void99 
Trace99 
(99 
string99  
msg99! $
)99$ %
{:: 	
TraceService;; 
.;; 
Trace;; 
(;; 
msg;; "
);;" #
;;;# $
}<< 	
public== 
Guid== 
Create== 
(== 
Entity== !
e==" #
)==# $
{>> 	
var?? 
ID?? 
=?? 
Svc?? 
.?? 
Create?? 
(??  
e??  !
)??! "
;??" #
return@@ 
ID@@ 
;@@ 
}AA 	
publicBB 
voidBB 
UpdateBB 
(BB 
EntityBB !
eBB" #
)BB# $
{CC 	
SvcDD 
.DD 
UpdateDD 
(DD 
eDD 
)DD 
;DD 
}EE 	
publicFF 
voidFF 
DeleteFF 
(FF 
stringFF !

entityNameFF" ,
,FF, -
GuidFF. 2
idFF3 5
)FF5 6
{GG 	
SvcHH 
.HH 
DeleteHH 
(HH 

entityNameHH !
,HH! "
idHH# %
)HH% &
;HH& '
}II 	
publicJJ 
voidJJ 
SetPreImageEntityJJ %
(JJ% &
stringJJ& ,
preImageNameJJ- 9
)JJ9 :
{KK 	
ifLL 
(LL 
ContextLL 
.LL 
PreEntityImagesLL '
.LL' (
ContainsLL( 0
(LL0 1
preImageNameLL1 =
)LL= >
&&LL? A
ContextLLB I
.LLI J
PreEntityImagesLLJ Y
[LLY Z
preImageNameLLZ f
]LLf g
isLLh j
EntityLLk q
)LLq r
{MM 
PreImageEntityNN 
=NN  
(NN! "
EntityNN" (
)NN( )
ContextNN) 0
.NN0 1
PreEntityImagesNN1 @
[NN@ A
preImageNameNNA M
]NNM N
;NNN O
}OO 
}PP 	
}QQ 
}RR �
LC:\Users\eddie\source\repos\D365_Marketing\Plugin\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *