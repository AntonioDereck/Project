var loadedVars = new LoadVars();
var sendVars = new LoadVars();
sendVars.user = _root.user;
sendVars.pass = _root.pass;

loadedVars.onLoad = function() {
	if (loadedVars.accessID eq "0") {
		gotoAndStop(nextScene());
	}
	// Ellers hvis forkert bruger el password:
	else {
		getURL("index.html", "_self");
	}
};

sendVars.sendAndLoad("http://www.ekgl.dk/booking/OYNFX/adminCheck.php", loadedVars, "POST");
// T�nkefilm synlig.
statusMessage = "Loader";