var page_block_one = 1, url_block_one = '';

function add_block_1(){
    $('#form-decoration').load(baseUrl + '/block_one/form');
    $('#modal-decoration').modal('show');
    url_block_one = baseUrl + '/block_one/add';
}

function edit_block_1(idh){
    $('#form-decoration').load(baseUrl + '/block_one/form?id='+btoa(idh));
    $('#modal-decoration').modal('show');
    url_block_one = baseUrl + '/block_one/update?id='+btoa(idh);
}

function del_block_1(idh){
    var data_str = "id="+btoa(idh);
    del_data(data_str, "Bạn có chắc chắn muốn xóa bảng ghi này?", baseUrl + '/block_one/del', '#content-decoration', baseUrl + '/block_one/json?page='+page_block_one);
}

function change_block_one(idh,status){
    var data_str = "id="+btoa(idh)+'&status='+status;
    del_data(data_str, "Bạn có chắc chắn muốn cập nhật trạng thái cho bảng ghi này?", baseUrl + '/block_one/change', '#content-decoration', baseUrl + '/block_one/json?page='+page_block_one);
}

function view_page_block_one(pages){
    page_block_one = pages;
    $('#content-decoration').load(baseUrl + '/block_one/json?page='+page_block_one);
}

function check_size(){
    var fileUpload = document.getElementById("image_block_1");
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
                    if (height != 536 || width != 639){
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

function save_block_one(){
    var required = $('#fm-block-1 input, #fm-block-1 textarea, #fm-block-1 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_form_modal('#fm-block-1', url_block_one, '#modal-decoration', '#content-decoration',  baseUrl+'/block_one/json?page='+page_block_one); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}