// Skipping function IsValidReq(), it contains poisonous unsupported syntaxes

func @_Plugin.Library.PluginEnv.Trace$string$(none) -> () loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :56 :8) {
^entry (%_msg : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :56 :26)
cbde.store %_msg, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :56 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :58 :12) // Not a variable of known type: TraceService
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :58 :31) // Not a variable of known type: msg
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :58 :12) // TraceService.Trace(msg) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Plugin.Library.PluginEnv.Create$Microsoft.Xrm.Sdk.Entity$(none) -> none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :60 :8) {
^entry (%_e : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :60 :27)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :60 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :62 :21) // Not a variable of known type: Svc
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :62 :32) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :62 :21) // Svc.Create(e) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :63 :19) // Not a variable of known type: ID
return %5 : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :63 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Plugin.Library.PluginEnv.Update$Microsoft.Xrm.Sdk.Entity$(none) -> () loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :65 :8) {
^entry (%_e : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :65 :27)
cbde.store %_e, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :65 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :67 :12) // Not a variable of known type: Svc
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :67 :23) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :67 :12) // Svc.Update(e) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Plugin.Library.PluginEnv.Delete$string.System.Guid$(none, none) -> () loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :69 :8) {
^entry (%_entityName : none, %_id : none):
%0 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :69 :27)
cbde.store %_entityName, %0 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :69 :27)
%1 = cbde.alloca none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :69 :46)
cbde.store %_id, %1 : memref<none> loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :69 :46)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :71 :12) // Not a variable of known type: Svc
%3 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :71 :23) // Not a variable of known type: entityName
%4 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :71 :35) // Not a variable of known type: id
%5 = cbde.unknown : none loc("C:\\Users\\eddie\\source\\repos\\D365_Marketing\\Plugin\\Library\\PluginEnv.cs" :71 :12) // Svc.Delete(entityName, id) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function SetPreImageEntity(none), it contains poisonous unsupported syntaxes

