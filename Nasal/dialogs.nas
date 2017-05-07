var aerotow_dialog = gui.Dialog.new("sim/gui/dialogs/Ka6/aerotow/dialog", 
                                    "Aircraft/Ka6/Dialogs/aerotow.xml");
var winch_dialog = gui.Dialog.new("sim/gui/dialogs/Ka6/winch/dialog", 
                                    "Aircraft/Ka6/Dialogs/winch.xml");
var groundservice_dialog = gui.Dialog.new("sim/gui/dialogs/Ka6/groundservice/dialog", 
                                    "Aircraft/Ka6/Dialogs/groundservice.xml");
var options_dialog = gui.Dialog.new("sim/gui/dialogs/Ka6/options/dialog", 
                                    "Aircraft/Ka6/Dialogs/options.xml");
var winchhelp_dialog = gui.Dialog.new("sim/gui/dialogs/Ka6/winchhelp/dialog", 
                                    "Aircraft/Ka6/Dialogs/winchhelp.xml");


                                    
                                    

setlistener("/sim/signals/fdm-initialized", func {
    if(getprop("/sim/config/hide-winch-msg")==0){
        winchhelp_dialog.open()
    }
    });

