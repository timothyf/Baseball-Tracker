window.addEvent("domready", function(){
	var today = new Date();	
	var calender = new Calendar("calendar", null, {visible: true, 
													 onSelect: load_scoreboard,
													 startDate:new Date(2007,0,3),
													 selectedDate:today,
													 allowWeekendSelection:true,
													 weekend:[],
													 inputField:{date:'date',
																 month:'month',
																 year:'year'},
																 inputType:'select',
																 idPrefix:'cal',
																 numMonths:6
															});
																
});

var loading = true;
function load_scoreboard() {
	if (loading == true) {
		loading = false;
	}
	else {
		var year = this.date.getFullYear();
		var month = this.date.getMonth() + 1;
		var date = this.date.getDate();
		location.href = "/scoreboard?year=" + year + "&month=" + month + "&date=" + date;
	}
}