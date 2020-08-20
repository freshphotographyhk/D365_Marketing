func @_Plugin.Library.Helper.ToOS$TValue$$TValue$(none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :9 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :9 :50)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :9 :50)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :11 :17) // typeof(TValue) (TypeOfExpression)
%2 = cbde.unknown : i1 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :11 :17) // typeof(TValue).IsEnum (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :11 :16) // !typeof(TValue).IsEnum (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :11 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :13 :44) // nameof(value) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :13 :22) // new ArgumentException(nameof(value)) (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :13 :16)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :16 :51) // Not a variable of known type: value
%7 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :16 :43) // (object)value (CastExpression)
%8 = cbde.unknown : i32 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :16 :38) // (int)(object)value (CastExpression)
%9 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :16 :19) // new OptionSetValue((int)(object)value) (ObjectCreationExpression)
return %9 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :16 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.ToInt$TValue$$TValue$(none) -> i32 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :19 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :19 :40)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :19 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :21 :17) // typeof(TValue) (TypeOfExpression)
%2 = cbde.unknown : i1 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :21 :17) // typeof(TValue).IsEnum (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :21 :16) // !typeof(TValue).IsEnum (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :21 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :23 :44) // nameof(value) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :23 :22) // new ArgumentException(nameof(value)) (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :23 :16)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :26 :32) // Not a variable of known type: value
%7 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :26 :24) // (object)value (CastExpression)
%8 = cbde.unknown : i32 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :26 :19) // (int)(object)value (CastExpression)
return %8 : i32 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :26 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.ToMoney$decimal$(none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :29 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :29 :36)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :29 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :31 :29) // Not a variable of known type: value
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :31 :19) // new Money(value) (ObjectCreationExpression)
return %2 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :31 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.Swap$T$$refT.refT$(none, none) -> () loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :34 :8) {
^entry (%_a : none, %_b : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :34 :35)
cbde.store %_a, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :34 :35)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :34 :44)
cbde.store %_b, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :34 :44)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :36 :21) // default(T) (DefaultExpression)
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :38 :19) // Not a variable of known type: b
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :39 :16) // Not a variable of known type: a
%6 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :40 :16) // Not a variable of known type: temp
br ^1

^1: // ExitBlock
return

}
// Skipping function GetInt(none, none), it contains poisonous unsupported syntaxes

func @_Plugin.Library.Helper.GetUTCDate$Microsoft.Xrm.Sdk.Entity.string$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :59 :8) {
^entry (%_e : none, %__fd : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :59 :43)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :59 :43)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :59 :58)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :59 :58)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :61 :19) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :61 :49) // Not a variable of known type: _fd
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :61 :19) // e.GetAttributeValue<DateTime>(_fd) (InvocationExpression)
return %4 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :61 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.GetLocalDate$Microsoft.Xrm.Sdk.Entity.string$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :64 :8) {
^entry (%_e : none, %__fd : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :64 :45)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :64 :45)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :64 :60)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :64 :60)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :68 :20) // Not a variable of known type: e
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :68 :50) // Not a variable of known type: _fd
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :68 :20) // e.GetAttributeValue<DateTime>(_fd) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :70 :16) // Not a variable of known type: value
%7 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :70 :25) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :70 :16) // comparison of unknown type: value != null
cond_br %8, ^1, ^2 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :70 :16)

^1: // SimpleBlock
// Entity from another assembly: DateTime
%9 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :72 :56) // Not a variable of known type: value
%10 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :72 :56) // value.Value (SimpleMemberAccessExpression)
// Entity from another assembly: DateTimeKind
%11 = constant unit loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :72 :69) // DateTimeKind.Utc (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :72 :35) // DateTime.SpecifyKind(value.Value, DateTimeKind.Utc) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :73 :24) // Not a variable of known type: utcDate
%15 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :73 :24) // utcDate.ToLocalTime() (InvocationExpression)
br ^2

^2: // JumpBlock
%16 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :76 :19) // Not a variable of known type: value
return %16 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :76 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.GetHKDate$Microsoft.Xrm.Sdk.Entity.string$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :79 :8) {
^entry (%_e : none, %__fd : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :79 :42)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :79 :42)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :79 :57)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :79 :57)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :83 :20) // Not a variable of known type: e
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :83 :50) // Not a variable of known type: _fd
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :83 :20) // e.GetAttributeValue<DateTime>(_fd) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :85 :16) // Not a variable of known type: value
%7 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :85 :25) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :85 :16) // comparison of unknown type: value != null
cond_br %8, ^1, ^2 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :85 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :87 :24) // Not a variable of known type: value
%10 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :87 :24) // value.Value (SimpleMemberAccessExpression)
%11 = constant 8 : i32 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :87 :45)
%12 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :87 :24) // value.Value.AddHours(8) (InvocationExpression)
br ^2

^2: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :90 :19) // Not a variable of known type: value
return %13 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :90 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.GetHKDateString$Microsoft.Xrm.Sdk.Entity.string.string$(none, none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :8) {
^entry (%_e : none, %__fd : none, %_defaultFormat : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :45)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :45)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :60)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :60)
%2 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :72)
cbde.store %_defaultFormat, %2 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :93 :72)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :95 :27) // "" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :97 :29) // Not a variable of known type: e
%6 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :97 :41) // Not a variable of known type: _fd
%7 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :97 :29) // e.GetHKDate(_fd) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :99 :16) // Not a variable of known type: date
%10 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :99 :24) // null (NullLiteralExpression)
%11 = cbde.unknown : i1  loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :99 :16) // comparison of unknown type: date != null
cond_br %11, ^1, ^2 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :99 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :101 :24) // Not a variable of known type: date
%13 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :101 :24) // date.Value (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :101 :44) // Not a variable of known type: defaultFormat
%15 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :101 :24) // date.Value.ToString(defaultFormat) (InvocationExpression)
br ^2

^2: // JumpBlock
%16 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :104 :19) // Not a variable of known type: value
return %16 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :104 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetDecimal(none, none), it contains poisonous unsupported syntaxes

func @_Plugin.Library.Helper.GetString$Microsoft.Xrm.Sdk.Entity.string$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :123 :8) {
^entry (%_e : none, %__fd : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :123 :39)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :123 :39)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :123 :54)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :123 :54)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :125 :19) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :125 :47) // Not a variable of known type: _fd
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :125 :19) // e.GetAttributeValue<string>(_fd) (InvocationExpression)
return %4 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :125 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.GetOSName$Microsoft.Xrm.Sdk.Entity.string$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :128 :8) {
^entry (%_e : none, %__fd : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :128 :39)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :128 :39)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :128 :54)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :128 :54)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :130 :19) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :130 :19) // e.FormattedValues (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :130 :37) // Not a variable of known type: _fd
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :130 :19) // e.FormattedValues[_fd] (ElementAccessExpression)
return %5 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :130 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetBool(none, none), it contains poisonous unsupported syntaxes

func @_Plugin.Library.Helper.GetAttr$T$$Microsoft.Xrm.Sdk.Entity.string$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :148 :8) {
^entry (%_e : none, %__fd : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :148 :35)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :148 :35)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :148 :50)
cbde.store %__fd, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :148 :50)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :150 :19) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :150 :42) // Not a variable of known type: _fd
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :150 :19) // e.GetAttributeValue<T>(_fd) (InvocationExpression)
return %4 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :150 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.CreateQuery$string$(none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :154 :8) {
^entry (%_entityName : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :154 :50)
cbde.store %_entityName, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :154 :50)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :156 :39) // Not a variable of known type: entityName
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :156 :19) // new QueryExpression(entityName) (ObjectCreationExpression)
return %2 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :156 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddAttrs(none, none), it contains poisonous unsupported syntaxes

func @_Plugin.Library.Helper.AddAllAttrs$Microsoft.Xrm.Sdk.Query.QueryExpression$(none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :169 :8) {
^entry (%_qe : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :169 :50)
cbde.store %_qe, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :169 :50)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :171 :12) // Not a variable of known type: qe
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :171 :12) // qe.ColumnSet (SimpleMemberAccessExpression)
%3 = constant 1 : i1 loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :171 :41) // true
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :171 :27) // new ColumnSet(true) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :173 :19) // Not a variable of known type: qe
return %5 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :173 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.Helper.AddFilter$Microsoft.Xrm.Sdk.Query.QueryExpression.Microsoft.Xrm.Sdk.Query.LogicalOperator$(none, none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :176 :8) {
^entry (%_qe : none, %_op : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :176 :48)
cbde.store %_qe, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :176 :48)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :176 :73)
cbde.store %_op, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :176 :73)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :178 :12) // Not a variable of known type: qe
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :178 :25) // Not a variable of known type: op
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :178 :12) // qe.AddFilter(op) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :180 :19) // Not a variable of known type: qe
return %5 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\Helper.cs" :180 :12)

^1: // ExitBlock
cbde.unreachable

}
