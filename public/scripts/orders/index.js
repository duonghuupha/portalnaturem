var page = 1, keyqord = '';
$(function(){
    $('#list_data').load(baseUrl + '/orders/json');
});

function detail(idh){
    $('#detail_view').load(baseUrl +'/orders/invoice?id='+btoa(idh));
    $('#modal-view').modal('show');
}

function view_page_order(pages){
    page = pages;
    $('#list_data').load(baseUrl + '/orders/json?page='+pages+'&q='+keyqord);
}

function search(){

}