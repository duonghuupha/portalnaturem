var page = 1, keyword = '', url = ''; let data_img = [];
$(function(){
    $('#list_data').load(baseUrl + '/products/json');
    $('#cate_id').load(baseUrl + '/other/combo_cate');
    CKEDITOR.replace( 'description', {
        toolbar: [
            ['Bold', 'Italic', 'Underline', 'Strike', 'TextColor', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Maximize']
        ]
    } );
});

function add(){
    var number = Math.floor(Math.random() * 99999);
    $('#code').val('NTR-'+number); $('#cate_id').val('').trigger('change');
    $('#stock').val(null); $('#price').val(null); $('#longs').val(null); $('#wide').val(null);
    $('#hight').val(null); $('#weight').val(null); $('#title').val(null);
    $('.image_prev').attr('src', baseUrl + '/styles/images/noimg.jpg');
    $('.file_attach').ace_file_input('reset_input'); CKEDITOR.instances['description'].setData(null);
    $('#id').val(0); data_img = []; $('#modal-data').modal('show');
    url = baseUrl + '/products/add';
}

function edit(idh, code){
    data_img = [];
    $.getJSON(baseUrl + '/products/info?id='+btoa(idh), function(data){
        $('#code').val(data.code); $('#cate_id').val(data.cate_id).trigger('change');
        $('#stock').val(data.stock); $('#price').val(CurrencyFormatted(data.price));
        $('#longs').val(data.longs); $('#wide').val(data.wide); $('#hight').val(data.hight);
        $('#weight').val(data.weight);
        /*************************************************************************** */
        $('#title').val(data.title);CKEDITOR.instances['description'].setData(data.description);
        var val_tags = data.tags.split(', '); var $tag_obj = $('.form-field-tags').data('tag');
        for(var i = 0; i < val_tags.length; i++){
		    $tag_obj.add(val_tags[i]);
        }
    });
    $.getJSON(baseUrl + '/products/image?code='+btoa(code), function(data){
        for(var i = 0; i < data.length; i++){
            $('#img_'+(i+1)).attr('src', baseUrl + '/public/images/product/'+code+'/'+data[i].image);
            $('#image_'+(i+1)).attr('data-id', data[i].id);
        }
        data_image_edit(data);
    });
    $('#id').val(idh); $('#modal-data').modal('show'); 
    url = baseUrl + '/products/update?idh='+btoa(idh);
}

function del(idh){
    var data_str = "id="+btoa(idh);
    del_data(data_str, "Bạn có chắc chắn muốn xáo bản ghi này?", baseUrl + '/products/del', '#list_data', baseUrl + ' /products/json?page='+page+'&q='+keyword);
}

function save(){
    var img = $('input[type="file"]').val(); var noidung = CKEDITOR.instances['description'].getData()
    var required = $('input,textarea,select').filter('[required]:visible');
    var allRequired = true, img = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired && img.length != 0 && noidung.length > 0){
        $('#data_edit').val(JSON.stringify(data_img)); $('#noidung').val(noidung);
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
        /// kiem tra xem cao phai thay doi anh cu khong
        if($('#id').val() != 0){ // co thay doi anh cu
            let number_edit = $('#image_'+number).attr('data-id');
            if(number_edit != undefined){
                let objIndex = data_img.findIndex(item => item.id == number_edit);
                data_img[objIndex].status = 1;
            }
        }
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

function data_image_edit(json){
    for(var i = 0; i < json.length; i++){
        var str = {"id": json[i].id, "status": 0, "image": json[i].image};
        data_img.push(str);
    }
}
//////////////////////////////////////////////////////////////////////////////////////////////
function detail(idh){
    var html = '', url_view = base_front + '/'+$('#alias_'+idh).text()+'-product-'+btoa(idh)+'.html';
    html += '<iframe src="'+url_view+'" width="100%" height="100%" style="border:none;"></iframe>';
    $('#detail_view').html(html);
    $('#modal-view').modal('show');
}