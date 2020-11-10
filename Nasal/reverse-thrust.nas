togglereverser = func {
	r1 = "/fdm/jsbsim/propulsion/engine";
	r2 = "/fdm/jsbsim/propulsion/engine[1]";

	r5 = "/controls/engines/engine"; 
	r6 = "/controls/engines/engine[1]"; 

	r9 = "/sim/input/selected";

	rv1 = "/engines/engine/reverser-pos-norm"; 
	rv2 = "/engines/engine[1]/reverser-pos-norm"; 

	val = getprop(rv1);
	if (
		(val == 0 or val == nil) and (getprop("/controls/engines/engine[0]/throttle") == 0) and 
		(getprop("/controls/engines/engine[1]/throttle") == 0)
	) {
		interpolate(rv1, 1.0, 1.4); 
		interpolate(rv2, 1.0, 1.4);  

		setprop(r1,"reverser-angle-rad","180");
		setprop(r2,"reverser-angle-rad","180");

		setprop(r5,"reverser", "true");
		setprop(r6,"reverser", "true");

		setprop(r9,"engine", "true");
		setprop(r9,"engine[1]", "true");
	} else {
		if (
			(val == 1.0) and (getprop("/controls/engines/engine[0]/throttle") == 0) and 
			(getprop("/controls/engines/engine[1]/throttle") == 0)
		) {
			interpolate(rv1, 0.0, 1.4);
			interpolate(rv2, 0.0, 1.4);   

			setprop(r1,"reverser-angle-rad",0);
			setprop(r2,"reverser-angle-rad",0);

			setprop(r5,"reverser",0);
			setprop(r6,"reverser",0);

			setprop(r9,"engine", "true");
			setprop(r9,"engine[1]", "true");
		}
	}
}
