var loadedVars = new LoadVars();
var sendVars = new LoadVars();
sendVars.year = _root.selectedDate.getFullYear();
sendVars.month = _root.selectedDate.getMonth();
sendVars.date = _root.selectedDate.getDate()
sendVars.time = "time" + time;
sendVars.info = _root.info;

loadedVars.onLoad = function() {
	// T�nkefilm usynlig.
	updateAll(_root.selectedDate);
};

sendVars.sendAndLoad("http://www.ekgl.dk/booking/OYNFX/bookTime.php", loadedVars, "POST");
// T�nkefilm synlig.
bookWait[time-1]._visible = true;
