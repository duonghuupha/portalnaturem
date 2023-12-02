var page = 1, keyword = '', url = '', data = [];

function view_page_pro(pages){

    page = pages;

    $('#list_data_block_2').load(baseUrl + '/block_two/list_pro?page='+page);

    if(data.length == 0){

        data = $('#data_id').val().split(",").map(Number);

    }

    setTimeout(function(){

        for(const item of data){

            $('#ck_block_2_'+item).prop('checked',  true);

        }

    }, 200);

}



function set_type(value){

    if(value == 1){ // lua chon danh muc  san pham

        $('#pro_cate_block_2').prop('disabled', false).prop('required', true);

        $('#typedata2').prop("checked", false); $('#data_id').val(null).prop("required",  false);

        $('#type_data').val(1); $('#list_data_block_2').empty();

    }else{

        $('#pro_cate_block_2').prop('disabled', true).prop('required', false);

        $('#typedata1').prop("checked", false); $('#data_id').val(null).prop("required",  true);

        $('#type_data').val(2); $('#pro_cate_block_2').val(null).trigger('change');

        $('#list_data_block_2').load(baseUrl + '/block_two/list_pro');

    }

}



function save_block_2(){

    var required = $('#fm-block-2 input, #fm-block-2 textarea, #fm-block-2 select').filter('[required]:visible');

    var allRequired = true;

    required.each(function(){

        if($(this).val() == ''){

            allRequired = false;

        }

    });

    if(allRequired){

        $('#data_id').val(data.join(","));

        save_reject('#fm-block-2', baseUrl + '/block_two/update', baseUrl + '/decoration'); 

    }else{

        show_message("error", "Chưa điền đủ thông tin");

    }

}

//////////////////////////////////////////////////////////////////////////////////////////////////

function confirm_pro_block_2(idh){

    if(data.length == 0){

        data = $('#data_id').val().split(",").map(Number);

    }

    var check = $('#ck_block_2_'+idh).is(":checked");

    if(check){

        if(data.length <= 8){

            data.push(idh);

        }else{

            show_message("error", "Đã chọn đủ số lượng sản phẩm");

            $('#ck_block_2_'+idh).prop("checked", false);

        }

    }else{

        data = data.filter(item => item !== idh);

    }

}