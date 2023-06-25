var page = 1, url = '';
$(function(){
    $('#list_data').load(baseUrl + '/slider/json');
});

function add(){
    $('#title_1, #title_2, #title_btn, #link_btn').val(null);
    $('.file_attach').ace_file_input('reset_input'); $('#image').attr("required", true);
    $('#modal-data').modal('show');
    url = baseUrl + '/slider/add';
}

function edit(idh){
    $.getJSON(baseUrl + '/slider/info?id='+btoa(idh), function(data){
        $('#title_1').val(data.title_1); $('#title_2').val(data.title_2);
        $('#title_btn').val(data.title_btn); $('#link_btn').val(data.link_btn);
        $('#image_old').val(data.image);
    }); 
    $('.file_attach').ace_file_input('reset_input'); $('#image').attr("required", false);
    $('#modal-data').modal('show');
    url = baseUrl + '/slider/update?id='+btoa(idh);
}

function del(idh){
    var data_str = "id="+btoa(idh);
    del_data(data_str, "Bạn có chắc chắn muốn xóa bản ghi này?", baseUrl + '/slider/del', '#list_data', baseUrl + '/slider/json?page'+page);
}

function change(idh, status){
    var data_str = "id="+btoa(idh)+"&status="+status;
    del_data(data_str, "Bạn có chắc chắn muốn thay đổi trạng thái bản ghi này?", baseUrl + '/slider/change', '#list_data', baseUrl + '/slider/json?page'+page);
}

function view_page_slider(pages){
    page = pages;
    $('#list_data').load(baseUrl + '/slider/json?page='+page);
}

function save(){
    var required = $('#fm input, #fm textarea, #fm select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_form_modal('#fm', url, '#modal-data', '#list_data',  baseUrl+'/slider/json?page='+page); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}