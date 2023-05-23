var page = 1, url = '', keyword = '';
$(function(){
    $('#list_data').load(baseUrl + '/menu/json');
    $('#parent_id').load(baseUrl + '/other/combo_menu_parent');
    $('#product_cate').load(baseUrl + '/other/combo_cate');
    $('#single_blog, #single_product, #list_pro, #link_out').hide();
    $('#single_blog_title, #single_pro_title, #product_cate, #link').attr('required', false);
});

function add(){
    $('#modal-data').modal('show');
    url = baseUrl + '/menu/add';
}

function edit(idh){
    $('#modal-data').modal('show');
    url = baseUrl + '/menu/update?id='+btoa(idh);
}

function del(idh){
    var data_str = 'id='+btoa(idh);
    del_data(data_str, "Bạn có chắc chắn muốn xóa bản ghi này?", baseUrl + '/menu/del', '#list_data', baseUrl + '/menu/json?page='+page+'&q='+keyword);
}

function save(){
    var required = $('input,textarea,select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_form_modal('#fm', url, '#modal-data', '#list_data',  baseUrl+'/menu/json?page='+page+'&q='+keyword); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}

function change(idh, status){
    var data_str = 'id='+btoa(idh)+'&status='+status;
    del_data(data_str, "Bạn có chắc chắn muốn xóa bản ghi này?", baseUrl + '/menu/change', '#list_data', baseUrl + '/menu/json?page='+page+'&q='+keyword);
}

function search(){
    var q = $('#nav-search-input').val();
    keyword = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_data').load(baseUrl + '/menu/json?page=1&q='+keyword);
}

function view_page_menu(pages){
    page = pages;
    $('#list_data').load(baseUrl + '/menu/json?page='+page+'&q='+keyword);
}
////////////////////////////////////////////////////////////////////////////////////////////////
function set_data(value){
    if(value == 1){ // single blog
        $('#single_blog').show(100); $('#single_blog_title').attr('required', true);
        $('#single_product, #list_pro, #link_out').hide();
        $('#single_pro_title, #product_cate, #link').attr('required', false);
    }else if(value == 3){ // single product
        $('#single_product').show(100); $('#single_pro_title').attr('required', true);
        $('#single_blog, #list_pro, #link_out').hide();
        $('#single_blog_title, #product_cate, #link').attr('required', false);
    }else if(value == 4){ // list product
        $('#list_pro').show(100); $('#product_cate').attr('required', true);
        $('#single_product, #single_blog, #link_out').hide();
        $('#single_pro_title, #single_blog_title, #link').attr('required', false);
    }else if(value == 6){ // link out
        $('#link_out').show(100); $('#link').attr('required', true);
        $('#single_product, #list_pro, #list_pro').hide();
        $('#single_pro_title, #product_cate, #product_cate').attr('required', false);
    }else{
        $('#single_blog, #single_product, #list_pro, #link_out').hide();
        $('#single_blog_title, #single_pro_title, #product_cate, #link').attr('required', false);
    }
}