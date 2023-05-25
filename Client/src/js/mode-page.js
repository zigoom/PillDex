let selectBox = document.querySelectorAll(".select-box");
let detailViewBox = document.querySelectorAll(".detail-view-box");

for (let i = 0; i < selectBox.length; i++) {
  selectBox[i].addEventListener("click", function (e) {
    // 현재 클릭한 요소에 "clickable" 클래스를 추가
    // 현재 클릭한 요소에 "hidden" 클래스를 제거
    if (!selectBox[i].classList.contains("clickable")) {
      selectBox[i].classList.add("clickable");
      detailViewBox[i].classList.remove("hidden");
    } else {
      selectBox[i].classList.remove("clickable");
      detailViewBox[i].classList.add("hidden");
    }

    // 다른 요소들에서 "clickable" 클래스를 제거
    // 다른 요소들에서 "hidden" 클래스를 추가
    for (let j = 0; j < selectBox.length; j++) {
      if (j !== i) {
        selectBox[j].classList.remove("clickable");
        detailViewBox[j].classList.add("hidden");
      }
    }
  });
}

//모양 안에 옵션이 선택되면 모양은 색깔 추가된채로 고정 , 옵션이 빠지면 색도빠짐
let selectBoxShape = document.querySelectorAll(".select-box-shape img");
for (let i = 0; i < selectBoxShape.length; i++) {
  selectBoxShape[i].addEventListener("click", function () {
    if (!selectBoxShape[i].classList.contains("clickable")) {
      selectBoxShape[i].classList.add("clickable");
      selectBox[0].classList.add("click-option");
    } else {
      selectBoxShape[i].classList.remove("clickable");
      selectBox[0].classList.remove("click-option");
    }
    for (let j = 0; j < selectBoxShape.length; j++) {
      if (j !== i) {
        selectBoxShape[j].classList.remove("clickable");
      }
    }
  });
}

let selectBoxColor = document.querySelectorAll(".select-box-color img");
for (let i = 0; i < selectBoxColor.length; i++) {
  selectBoxColor[i].addEventListener("click", function () {
    if (!selectBoxColor[i].classList.contains("clickable")) {
      selectBoxColor[i].classList.add("clickable");
      selectBox[1].classList.add("click-option");
    } else {
      selectBoxColor[i].classList.remove("clickable");
      selectBox[1].classList.remove("click-option");
    }
    for (let j = 0; j < selectBoxColor.length; j++) {
      if (j !== i) {
        selectBoxColor[j].classList.remove("clickable");
      }
    }
  });
}
