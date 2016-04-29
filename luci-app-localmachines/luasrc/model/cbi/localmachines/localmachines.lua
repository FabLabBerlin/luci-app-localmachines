local m, s

m = Map("localmachines", "Local Machines", translate("This section will help you configure your localmachines gateway."))

m.on_after_commit = function(self)
       luci.sys.call("/etc/init.d/gateway restart")    
end

s = m:section(TypedSection, "localmachines", translate("Account Credentials"))

s:option(Value, "jabberid", translate("Jabber-ID"),
         translate("The Local Machines JabberID which was assigned to your Lab."))
         
s:option(Value, "jabberpw", translate("Password"),
         translate("The Local Machines password which was assigned to your Lab."))
         

s:option(Value, "apiid", translate("API-User"),
         translate("The API User used to connect to the API Server."))
         
s:option(Value, "apikey", translate("API-Key"),
         translate("The API Token used to connect to the API Server."))
     
s:option(Value, "locationid", translate("Lab ID"),
         translate("The Location ID that was supplied to your Lab."))    
         
return m