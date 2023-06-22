let selectBox = document.querySelectorAll('.select-box');
let detailViewBox = document.querySelectorAll('.detail-view-box');
let selectedDataInput = document.querySelectorAll('.selected-data-input');

const existingItems = JSON.parse(localStorage.getItem('items')) || [];
const existingImages = JSON.parse(localStorage.getItem('images')) || [];
const searchListNames = document.querySelectorAll('.search_list_name');
const searchListImages = document.querySelectorAll('.search_list_img');
const searchList = document.querySelectorAll('.search_list');
const recentSearch = document.querySelectorAll('.recent-search');
const removeBtn = document.querySelectorAll('.remove-btn');
const printFB = document.querySelector('.printFB');

for (let i = 0; i < selectBox.length; i++) {
	selectBox[i].addEventListener('click', function(e) {
		if (!selectBox[i].classList.contains('clickable')) {
			selectBox[i].classList.add('clickable');
			detailViewBox[i].classList.remove('hidden');
		} else {
			selectBox[i].classList.remove('clickable');
			detailViewBox[i].classList.add('hidden');
		}

		for (let j = 0; j < selectBox.length; j++) {
			if (j !== i) {
				selectBox[j].classList.remove('clickable');
				detailViewBox[j].classList.add('hidden');
			}
		}
	});
}

let selectBoxShape = document.querySelectorAll('.select-box-shape img');
let selectedShape = null;

for (let i = 0; i < selectBoxShape.length; i++) {
	selectBoxShape[i].addEventListener('click', function() {
		if (!selectBoxShape[i].classList.contains('clickable')) {
			selectBoxShape[i].classList.add('clickable');
			selectBox[0].classList.add('click-option');
		} else {
			selectBoxShape[i].classList.remove('clickable');
			selectBox[0].classList.remove('click-option');
		}
		selectedShape = selectBoxShape[i].getAttribute('data-value');
		selectedDataInput[0].value = selectedShape;

		resetClickable(selectBoxShape, i);
	});
}

let selectBoxColor = document.querySelectorAll('.select-box-color img');
let selectedColor = null;

for (let i = 0; i < selectBoxColor.length; i++) {
	selectBoxColor[i].addEventListener('click', function() {
		if (!selectBoxColor[i].classList.contains('clickable')) {
			selectBoxColor[i].classList.add('clickable');
			selectBox[1].classList.add('click-option');
		} else {
			selectBoxColor[i].classList.remove('clickable');
			selectBox[1].classList.remove('click-option');
		}
		selectedColor = selectBoxColor[i].getAttribute('data-value');
		selectedDataInput[1].value = selectedColor;
		resetClickable(selectBoxColor, i);
	});
}

let selectBoxChart = document.querySelectorAll('.select-box-chart img');
let selectedChart = null;

for (let i = 0; i < selectBoxChart.length; i++) {
	selectBoxChart[i].addEventListener('click', function() {
		if (!selectBoxChart[i].classList.contains('clickable')) {
			selectBoxChart[i].classList.add('clickable');
			selectBox[2].classList.add('click-option');
		} else {
			selectBoxChart[i].classList.remove('clickable');
			selectBox[2].classList.remove('click-option');
		}
		selectedChart = selectBoxChart[i].getAttribute('data-value');
		selectedDataInput[2].value = selectedChart;
		resetClickable(selectBoxChart, i);
	});
}

let selectBoxLine = document.querySelectorAll('.select-box-line img');
let selectedLine = null;

for (let i = 0; i < selectBoxLine.length; i++) {
	selectBoxLine[i].addEventListener('click', function() {
		if (!selectBoxLine[i].classList.contains('clickable')) {
			selectBoxLine[i].classList.add('clickable');
			selectBox[3].classList.add('click-option');
		} else {
			selectBoxLine[i].classList.remove('clickable');
			selectBox[3].classList.remove('click-option');
		}
		selectedLine = selectBoxLine[i].getAttribute('data-value');
		selectedDataInput[3].value = selectedLine;
		selectedDataInput[4].value = selectedLine;
		resetClickable(selectBoxLine, i);
	});
}

function resetClickable(elements, selectedIndex) {
	for (let j = 0; j < elements.length; j++) {
		if (j !== selectedIndex) {
			elements[j].classList.remove('clickable');
		}
	}
}

selectedDataInput[7].addEventListener('keyup', function() {
	if (selectedDataInput[7].value != '') {
		printFB.value = printFB.value.toUpperCase();
		selectedDataInput[5].value = selectedDataInput[7].value;
		selectedDataInput[6].value = selectedDataInput[7].value;
	} else {
		selectedDataInput[5].value = '';
		selectedDataInput[6].value = '';
	}
});

for (let i = 0; i < document.querySelectorAll('.card-submit').length; i++) {
	document.querySelectorAll('.card-submit')[i].addEventListener('click',
			function(e) {
				const existingItems = JSON.parse(localStorage.getItem('items'))
						|| [];
				const existingImages = JSON.parse(localStorage
						.getItem('images'))
						|| [];
				const dataImage = this.getAttribute('data-image');

				if (!existingItems.includes(e.target.id)) {
					existingItems.push(e.target.id);
					existingImages.push(dataImage);

					if (existingItems.length > 10) {
						existingItems.shift();
						existingImages.shift();
					}

					localStorage
							.setItem('items', JSON.stringify(existingItems));
					localStorage.setItem('images', JSON
							.stringify(existingImages));
				}
			});
}

for (let i = 0; i < existingItems.length && i < searchListNames.length; i++) {
	const storageItem = existingItems[i];
	if (searchListNames[i]) {
		searchListNames[i].innerHTML = storageItem;
		recentSearch[i].value = storageItem;
		searchList[i].classList.remove('hidden');
	}

	const storageImage = existingImages[i];
	if (searchListImages[i]) {
		searchListImages[i].setAttribute('src', storageImage);
	}
}
for (let i = 0; i < existingItems.length; i++) {
	removeBtn[i].addEventListener('click', function(e) {
		e.preventDefault();
		let items = JSON.parse(localStorage.getItem('items'));
		let images = JSON.parse(localStorage.getItem('images'));

		items.splice(i, 1);
		images.splice(i, 1);

		localStorage.setItem('items', JSON.stringify(items));
		localStorage.setItem('images', JSON.stringify(images));

		location.reload();
	});
}

