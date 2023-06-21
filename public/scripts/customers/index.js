var page = 1, keyword = '';
$(function(){
    $('#list_data').load(baseUrl + '/customers/json');
});

function view_page_cus(pages){
    page = pages;
    $('#list_data').load(baseUrl + '/customers/json?page='+page+'&q='+keyword);
}

function search(){
    var q = $('#nav-search-input').val();
    keyword = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_data').load(baseUrl + '/customers/json?page=1&q='+keyword);
}