/*
Deepbox base JavaScript functions
*/
var YEAR = 2008;
var MONTH = 3;
var DAY = 26;

function initPage(year, month, day) {
  YEAR = year;
  MONTH = month;
  DAY = day;
}

var gotoBoxscore = function (obj) {
  var newUrl = '/boxscore?year=' + YEAR + '&month=' + MONTH + '&day=' + DAY + '&gid=' + obj.id.substring(4);
  //var newUrl = '/boxscore?year=' + YEAR + '&month=' + MONTH + '&day=' + DAY + '&gid=' + obj;
  window.location = newUrl; 
}

var gotoBatterPBP = function (obj, gid) {
  var newUrl = '/batterpbp?year=' + YEAR + '&month=' + MONTH + '&day=' + DAY + '&gid=' + gid + '&bid=' + obj.id.substring(1);
  window.location = newUrl; 
}

var gotoPitcherPBP = function (obj, gid) {
  var newUrl = '/pitcherpbp?year=' + YEAR + '&month=' + MONTH + '&day=' + DAY + '&gid=' + gid + '&pid=' + obj.id.substring(1);
  window.location = newUrl; 
}

function selectItem(obj) {
  obj.className += "-selected";
}

function deselectItem(obj) {
  var index = obj.className.indexOf("-selected");
  obj.className = obj.className.substring(0, index);
}

function toggleDisplay(obj) {
  var c = obj.className;
  if(c === "game" || c === "game-selected") {
    var pm = document.getElementById(obj.id+"-pm");
    if(pm.style.display === "block") {
      pm.style.display = "none";
    } else {
      pm.style.display = "block";
    }
  } else if(c === "player" || c === "player-selected") {
    var fm = document.getElementById(obj.id+"-fm");
    if(fm.style.display === "block") {
      fm.style.display = "none";
    } else {
      fm.style.display = "block";
    }
  } else if(c === "feature" || c === "feature-selected") {
    if(obj.style.display === "block") {
      obj.style.display = "none";
    } else {
      obj.style.display = "block";
    }
  } else {
    alert("Error in toggleDisplay.");
  }
}

function showHighlight() {
	  var highlightContainerDiv = document.getElementById("highlightContainer");
	  for(var i=0; i<highlightContainerDiv.childNodes.length; i++) {
	    if(highlightContainerDiv.childNodes[i].nodeType === Node.ELEMENT_NODE) {
	      highlightContainerDiv.childNodes[i].style.display = "none";
	    }
	  }
	  var highlightSelect = document.getElementById("highlightSelect");
	  var highlightId = highlightSelect.options[highlightSelect.selectedIndex].value;
	  var highlightDiv = document.getElementById(highlightId);
	  highlightDiv.style.display = "block";
	}
