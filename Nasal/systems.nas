#A310 Systems by Joshua Davidson (it0uchpods/411)
  
setlistener("/sim/signals/fdm-initialized", func {	
	itaf.ap_init();			
	var autopilot = gui.Dialog.new("sim/gui/dialogs/autopilot/dialog", "Aircraft/A310/Systems/autopilot-dlg.xml");
});