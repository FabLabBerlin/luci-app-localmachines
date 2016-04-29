local m, s

m = Map("localmcahines", translate("Localmachines"),
	translate("Localmachines setup wizard"))

s = m:section(TypedSection, "localmachines", translate("Server Settings"))
s.anonymous = true

s:option(Value, "jabberid", translate("Jabber-ID"),
         translate("The Local Machines JabberID assigned to you."))
         
s:option(Value, "jabberpw", translate("Password"),
         translate("The Local Machines password assigned to you."))
         
return m