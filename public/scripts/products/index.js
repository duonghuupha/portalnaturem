var page = 1, keyword = '', url = '';
$(function(){
    $('#list_data').load(baseUrl + '/products/json');
    $('#cate_id').load(baseUrl + '/other/combo_cate');
});

function add(){
    var number = Math.floor(Math.random() * 99999);
    $('#code').val('NTR-'+number);
    $('#modal-data').modal('show');
    url = baseUrl + '/products/add';
}

function edit(idh){
    $('#modal-data').modal('show');
    url = baseUrl + '/products/update?id='+btoa(idh);
}

function del(idh){
    var data_str = "id="+btoa(idh);
    del_data(data_str, "Bạn có chắc chắn muốn xáo bản ghi này?", baseUrl + '/products/del', '#list_data', baseUrl + ' /products/json?page='+page+'&q='+keyword);
}

function save(){
    var img = $('input[type="file"]').val();
    var required = $('input,textarea,select').filter('[required]:visible');
    var allRequired = true, img = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired && img.length != 0){
        save_form_modal('#fm', url, '#modal-data', '#list_data',  baseUrl+'/products/json?page='+page+'&q='+keyword); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}

function view_page_product(pages){
    page = pages;
    $('#list_data').load(baseUrl + '/products/json?page='+page+'&q='+keyword);
}

function search(){
    var q = $('#nav-search-input').val();
    keyword = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_data').load(baseUrl + '/products/json?page=1&q='+keyword);
}

function change(idh, status){
    var data_str = 'id='+btoa(idh)+'&status='+status;
    del_data(data_str, "Bạn có chắc chắn muốn cập nhật trạng thái cho bản ghi này?", baseUrl + '/products/change', '#list_data', baseUrl + '/products/json?page='+page+'&q='+keyword);
}
////////////////////////////////////////////////////////////////////////////////////////////////
function refresh_code(){
    var number = Math.floor(Math.random() * 99999);
    $('#code').val('NTR-'+number);
}

function upload_img(file, number){
    var text = $(file).val();
    if(text.match(/jpg.*/) || text.match(/jpeg.*/) || text.match(/png.*/) || text.match(/gif.*/)){
        var reader = new FileReader();
        reader.onload = function(e){
            $('#img_'+number).attr('src', e.target.result);
        }
        reader.readAsDataURL(file.files[0]);
        setTimeout(change_function_for_remove_image(number), 100);
    }else{
        $("#image_"+number).val(null);
        show_message("error", "Hình ảnh không đúng định dạng");
    }
}

function change_function_for_remove_image(number){
    $('#btn_img_'+number).find(".remove").attr('onclick', 'remove_img('+number+')');
}

function remove_img(number){
    $('#img_'+number).attr('src', baseUrl + '/styles/images/noimg.jpg');
}