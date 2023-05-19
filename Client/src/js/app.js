let bookmark = document.querySelector('#star');
bookmark.addEventListener('click', function () {
    if (bookmark.classList.contains('fa-regular')) {
        bookmark.classList.remove('fa-regular');
        bookmark.classList.add('fa-solid');
    } else {
        bookmark.classList.remove('fa-solid');
        bookmark.classList.add('fa-regular');
    }
});
