let selectBox = document.querySelectorAll(".select-box");
let detailViewBox = document.querySelectorAll(".detail-view-box");

for (let i = 0; i < selectBox.length; i++) {
	selectBox[i].addEventListener("click", function(e) {
		if (!selectBox[i].classList.contains("clickable")) {
			selectBox[i].classList.add("clickable");
			detailViewBox[i].classList.remove("hidden");
		} else {
			selectBox[i].classList.remove("clickable");
			detailViewBox[i].classList.add("hidden");
		}

		for (let j = 0; j < selectBox.length; j++) {
			if (j !== i) {
				selectBox[j].classList.remove("clickable");
				detailViewBox[j].classList.add("hidden");
			}
		}
	});
}

let selectBoxShape = document.querySelectorAll(".select-box-shape img");
let selectedShape = null;

for (let i = 0; i < selectBoxShape.length; i++) {
	selectBoxShape[i].addEventListener("click", function() {
		if (!selectBoxShape[i].classList.contains("clickable")) {
			selectBoxShape[i].classList.add("clickable");
			selectBox[0].classList.add("click-option");
		} else {
			selectBoxShape[i].classList.remove("clickable");
			selectBox[0].classList.remove("click-option");
		}
		selectedShape = selectBoxShape[i].getAttribute("data-value");
		resetClickable(selectBoxShape, i);
	});
}

let selectBoxColor = document.querySelectorAll(".select-box-color img");
let selectedColor = null;

for (let i = 0; i < selectBoxColor.length; i++) {
	selectBoxColor[i].addEventListener("click", function() {
		if (!selectBoxColor[i].classList.contains("clickable")) {
			selectBoxColor[i].classList.add("clickable");
			selectBox[1].classList.add("click-option");
		} else {
			selectBoxColor[i].classList.remove("clickable");
			selectBox[1].classList.remove("click-option");
		}
		selectedColor = selectBoxColor[i].getAttribute("data-value");
		resetClickable(selectBoxColor, i);
	});
}

let selectBoxChart = document.querySelectorAll(".select-box-chart img");
let selectedChart = null;

for (let i = 0; i < selectBoxChart.length; i++) {
	selectBoxChart[i].addEventListener("click", function() {
		if (!selectBoxChart[i].classList.contains("clickable")) {
			selectBoxChart[i].classList.add("clickable");
			selectBox[2].classList.add("click-option");
		} else {
			selectBoxChart[i].classList.remove("clickable");
			selectBox[2].classList.remove("click-option");
		}
		selectedChart = selectBoxChart[i].getAttribute("data-value");
		resetClickable(selectBoxChart, i);
	});
}

let selectBoxLine = document.querySelectorAll(".select-box-line img");
let selectedLine = null;

for (let i = 0; i < selectBoxLine.length; i++) {
	selectBoxLine[i].addEventListener("click", function() {
		if (!selectBoxLine[i].classList.contains("clickable")) {
			selectBoxLine[i].classList.add("clickable");
			selectBox[3].classList.add("click-option");
		} else {
			selectBoxLine[i].classList.remove("clickable");
			selectBox[3].classList.remove("click-option");
		}
		selectedLine = selectBoxLine[i].getAttribute("data-value");
		resetClickable(selectBoxLine, i);
	});
}

let submitButton = document.querySelector("#submit-button");

submitButton.addEventListener("click", function() {
	console.log("Shape:", selectedShape);
	console.log("Color:", selectedColor);
	console.log("Chart:", selectedChart);
	console.log("Line:", selectedLine);

});

function resetClickable(elements, selectedIndex) {
	for (let j = 0; j < elements.length; j++) {
		if (j !== selectedIndex) {
			elements[j].classList.remove("clickable");
		}
	}
}