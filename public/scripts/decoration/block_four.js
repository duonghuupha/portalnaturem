var page = 1, keyword = '', url = '', type = 0;

function save_block_4(){
    var required = $('#fm-block-4 input, #fm-block-4 textarea, #fm-block-4 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_reject('#fm-block-4', baseUrl + '/block_four/update', baseUrl + '/decoration'); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}
//////////////////////////////////////////////////////////////////////////////////////////////////
function select_pro(value){
    $('#list_data_block_4').load(baseUrl + '/block_four/list_pro');
    $('#pager_pro_block_4').load(baseUrl + '/block_four/list_pro_page');
    $('#modal-pro').modal('show'); type = value;
}

function view_page_pro_block_4(pages){
    page = pages;
    $('#list_data_block_4').load(baseUrl + '/block_four/list_pro?page='+page+'&q='+keyword);
    $('#pager_pro_block_4').load(baseUrl + '/block_four/list_pro_page?page='+page+'&q='+keyword);
}

function search_pro_block_4(){
    var q = $('#nav-search-input-pro-block-4').val();
    keyword = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_data_block_4').load(baseUrl + '/block_four/list_pro?page=1&q='+keyword);
    $('#pager_pro_block_4').load(baseUrl + '/block_four/list_pro_page?page=1&q='+keyword);
}

function confirm_pro_block_4(idh){
    $('#pro_id_'+type+'_block_4').val(idh);
    $('#single_pro_title_'+type).val($('#titlepro_'+idh).text());
    $('#modal-pro').modal('hide');
}

function check_size_block_4(){
    var fileUpload = document.getElementById("image_block_4");
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
                    if (height != 572 || width != 559){
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