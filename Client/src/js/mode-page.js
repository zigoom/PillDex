let selectBox = document.querySelectorAll(".select-box");
let detailViewBox = document.querySelectorAll(".detail-view-box");

for (let i = 0; i < selectBox.length; i++) {
  selectBox[i].addEventListener("click", function (e) {
    // 현재 클릭한 요소에 "clickable" 클래스를 추가
    // 현재 클릭한 요소에 "hidden" 클래스를 제거
    selectBox[i].classList.add("clickable");
    detailViewBox[i].classList.remove("hidden");

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
