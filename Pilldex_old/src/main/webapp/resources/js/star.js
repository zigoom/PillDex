let bookmark = document.querySelector("#star");

//즐겨찾기를 아직 하지 않았다면 별의 색깔을 채우고 그게아니면 비움
bookmark.addEventListener("click", function () {
  if (bookmark.classList.contains("fa-regular")) {
    bookmark.classList.remove("fa-regular");
    bookmark.classList.add("fa-solid");
  } else {
    bookmark.classList.remove("fa-solid");
    bookmark.classList.add("fa-regular");
  }
});
