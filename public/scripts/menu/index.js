var page = 1, url = '', keyword = '', page_blogs = 1, keyword_blogs = '', page_pro = 1, keyword_pro = '';
$(function(){
    $('#list_data').load(baseUrl + '/menu/json');
    $('#parent_id').load(baseUrl + '/other/combo_menu_parent');
    $('#product_cate').load(baseUrl + '/other/combo_cate');
    $('#single_blog, #single_product, #list_pro, #link_out').hide();
    $('#single_blog_title, #single_pro_title, #product_cate, #link').attr('required', false);
});

function add(){
    $('#parent_id').val('').trigger('change'); $('#title').val(null); $('#type_menu').val('').trigger('change');
    $('#position').val(1).trigger('change'); $('#order_menu').val(null);
    $('#modal-data').modal('show');
    url = baseUrl + '/menu/add';
}

function edit(idh){
    $('#parent_id').val($('#parent_'+idh).text()).trigger('change');
    $('#title').val($('#title_'+idh).text()); $('#type_menu').val($('#type_'+idh).text()).trigger('change');
    $('#position').val($('#position_'+idh).text()).trigger('change');
    $('#order_menu').val($('#ordermenu_'+idh).text());
    if($('#type_'+idh).text() == 1){ // mot bai viet
        $('#blog_id').val($('#link_'+idh).text());
        $('#single_blog_title').val($('#single_'+idh).text());
    }else if($('#type_'+idh).text() == 3){ // mot san pham
        $('#product_id').val($('#link_'+idh).text());
        ('#single_pro_title').val($('#single_'+idh).text());
    }else if($('#type_'+idh).text() == 4){ // danh sachs san pham
        $('#product_cate').val($('#link_'+idh).text()).trigger('change');
    }else if($('#type_'+idh).text() == 6){ // lien ket ngoai
        $('#link').val($('#link_'+idh).text());
    }
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
    $('#blog_id').val(null); $('#product_id').val(null); $('#single_blog_title').val(null);
    $('#single_pro_title').val(null);
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
///////////////////////////////////////////////////////////////////////////////////////////////////
function select_blogs(){
    $('#list_blogs').load(baseUrl + '/menu/list_blogs');
    $('#pager_blogs').load(baseUrl + '/menu/list_blogs_page');
    $('#modal-blogs').modal('show');
}

function view_page_blogs(pages){
    page_blogs = pages;
    $('#list_blogs').load(baseUrl + '/menu/list_blogs?page='+page_blogs+'&q='+keyword_blogs);
    $('#pager_blogs').load(baseUrl + '/menu/list_blogs_page?page='+page_blogs+'&q='+keyword_blogs);
}

function search_blogs(){
    var q = $('#nav-search-input-blogs').val();
    keyword_blogs = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_blogs').load(baseUrl + '/menu/list_blogs?page=1&q='+keyword_blogs);
    $('#pager_blogs').load(baseUrl + '/menu/list_blogs_page?page=1&q='+keyword_blogs);
}

function confirm_blogs(idh){
    $('#blog_id').val(idh);
    $('#single_blog_title').val($('#titleblog_'+idh).text());
    $('#modal-blogs').modal('hide');
}
/******************************************************************************************** */
function select_pro(){
    $('#list_product').load(baseUrl + '/menu/list_pro');
    $('#pager_pro').load(baseUrl + '/menu/list_pro_page');
    $('#modal-pro').modal('show');
}

function view_page_pro(pages){
    page_pro = pages;
    $('#list_product').load(baseUrl + '/menu/list_pro?page='+page_pro+'&q='+keyword_pro);
    $('#pager_pro').load(baseUrl + '/menu/list_pro_page?page='+page_pro+'&q='+keyword_pro);
}

function search_pro(){
    var q = $('#nav-search-input-pro').val();
    keyword_pro = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_product').load(baseUrl + '/menu/list_pro?page=1&q='+keyword_pro);
    $('#pager_pro').load(baseUrl + '/menu/list_pro_page?page=1&q='+keyword_pro);
}

function confirm_pro(idh){
    $('#product_id').val(idh);
    $('#single_pro_title').val($('#titlepro_'+idh).text());
    $('#modal-pro').model('hide');
}