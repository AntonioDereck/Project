var loadedVars = new LoadVars();
var sendVars = new LoadVars();
sendVars.year = _root.selectedDate.getFullYear();
sendVars.month = _root.selectedDate.getMonth();
sendVars.date = _root.selectedDate.getDate();

loadedVars.onLoad = function() {
	// T�nkefilm usynlig.
	bookingsText = loadedVars.times.split("|");
	updateSchedule();
};

sendVars.sendAndLoad("http://www.ekgl.dk/booking/OYNFX/getShedule.php", loadedVars, "POST");
// T�nkefilm synlig.