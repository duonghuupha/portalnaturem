var page_block_seven = 1, url_block_seven = '';

function add_block_7(){
    $('#form-decoration').load(baseUrl + '/block_seven/form');
    $('#modal-decoration').modal('show');
    url_block_seven = baseUrl + '/block_seven/add';
}

function edit_block_7(idh){
    $('#form-decoration').load(baseUrl + '/block_seven/form?id='+btoa(idh));
    $('#modal-decoration').modal('show');
    url_block_seven = baseUrl + '/block_seven/update?id='+btoa(idh);
}

function del_block_7(idh){
    var data_str = "id="+btoa(idh);
    del_data(data_str, "Bạn có chắc chắn muốn xóa bảng ghi này?", baseUrl + '/block_seven/del', '#content-decoration', baseUrl + '/block_seven/json?page='+page_block_seven);
}

function change_block_seven(idh,status){
    var data_str = "id="+btoa(idh)+'&status='+status;
    del_data(data_str, "Bạn có chắc chắn muốn cập nhật trạng thái cho bảng ghi này?", baseUrl + '/block_seven/change', '#content-decoration', baseUrl + '/block_seven/json?page='+page_block_seven);
}

function view_page_block_seven(pages){
    page_block_seven = pages;
    $('#content-decoration').load(baseUrl + '/block_seven/json?page='+page_block_seven);
}

function check_size_block_7(){
    var fileUpload = document.getElementById("image_block_7");
    var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(.jpg|.png|.gif)$");
    if (regex.test(fileUpload.value.toLowerCase())) {
        if (typeof (fileUpload.files) != "undefined") {
            var reader = new FileReader();
            reader.readAsDataURL(fileUpload.files[0]);
            reader.onload = function (e){
                var image = new Image();
                image.src = e.target.result;
                image.onload = function () {
                    var height = this.height;
                    var width = this.width;
                    if (height != 390 || width != 600){
                        show_message("error", "Kích thước ảnh không đúng");
                        $('.file_attach').ace_file_input('reset_input'); 
                    }
                    return true;
                };
            }
        }else{
            show_message("error", "Trình duyệt này không hỗ trợ HTML5.");
            $('.file_attach').ace_file_input('reset_input'); 
        }
    }else{
        show_message("error", "Định dạng file không chính xác");
        $('.file_attach').ace_file_input('reset_input'); 
    }
}

function save_block_seven(){
    var required = $('#fm-block-7 input, #fm-block-7 textarea, #fm-block-7 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_form_modal('#fm-block-7', url_block_seven, '#modal-decoration', '#content-decoration',  baseUrl+'/block_seven/json?page='+page_block_seven); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}