
module "luci.controller.localmachines"

function index()
	entry({"admin", "services", "localmachines"}, cbi("localmachines/localmachines"), _("Localmachines Wizard"), 40)
end
