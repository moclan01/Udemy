(function () {

    const newsDetailTitle = document.getElementById('newsDetailTitle').innerText;

    const invoke = () => {
        createBreadcrumb('#newsItemBreadcrumb', [
            {name: 'Trang chủ', link: '/home', active: false},
            {name: 'Tin tức', link: '/news', active: false},
            {name: newsDetailTitle, link: '/', active: true},
        ]);
    }
    invoke();
})();