var page_pro_block_3 = 1, keyword_block_3 = '', data_block_3 = [], page_pro_block_4 = 1;
$(function(){
    $('#block_1, #block_3, #block_4, #block_9').hide();
})
function set_img_block(value){
    $('#img_block').attr('src', baseUrl + '/styles/images/img_block/block_'+value+'.png');
    if(value == 1){
        $('#block_1').show(); $('#block_3').hide(); $('#block_4').hide(); $('#block_9').hide();
        $('#pro_cate_block_1').load(baseUrl + '/other/combo_cate');
        $.getJSON(baseUrl + '/decoration/block_one', function(data){
            $('#pro_cate_block_1').val(data.data_id.split(',')).trigger('change');
            $('#title_btn_block_1').val(data.title_btn); $('#link_btn_block_1').val(data.link_btn);
        });
    }else if(value == 3){
        $('#block_3').show(); $('#block_1').hide(); $('#block_4').hide(); $('#block_9').hide();
        $('#pro_cate_block_3').load(baseUrl + '/other/combo_cate');
        $.getJSON(baseUrl + '/decoration/block_three', function(data){
            $('#title_block_3_1').val(data.title_1); $('#title_block_3_2').val(data.title_2);
            $('#type_data').val(data.type_data);
            if(data.type_data == 1){
                $('#typedata1').prop("checked", true); $('#pro_cate_block_3').prop('disabled', false);
                $('#pro_cate_block_3').val(data.data_id.split(",")).trigger('change');
            }else{
                $('#typedata2').prop("checked", true); data_block_3 = data.data_id.split(",");
                $('#list_data_block_3').load(baseUrl + '/decoration/list_pro');
                $('#pro_cate_block_3').prop('disabled', true);
                setInterval(function(){
                    for(const item of data_block_3){
                        $('#ck_block_3_'+item).prop('checked',  true);
                    }
                }, 200);
            }
        });
    }else if(value == 5){
        $('#block_3').hide(); $('#block_1').hide(); $('#block_4').show(); $('#block_9').hide();
        $('#list_data_block_4').load(baseUrl + '/decoration/list_pro_4');
        $.getJSON(baseUrl + '/decoration/block_five', function(data){
            $('#title_block_4_1').val(data.title_1); $('#title_block_4_2').val(data.title_2);
            $('#content_block_4_1').val(data.content_1); $('#content_block_4_2').val(data.content_2);
            $('#content_block_4_3').val(data.description); $('#data_id_4').val(data.data_id);
            setInterval(function(){
                $('#ck_block_4_'+data.data_id).prop('checked', true);
            }, 200);
        });
    }else if(value == 10){
        $('#block_3').hide(); $('#block_1').hide(); $('#block_4').hide(); $('#block_9').show();
        $.getJSON(baseUrl + '/decoration/block_night', function(data){
            $('#title_block_9_1').val(data.title_1); $('#title_block_9_2').val(data.title_2);
            $('#number_post_block_9').val(data.number_post);
        })
    }else{
        $('#block_1, #block_3, #block_4').hide();
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
function save_block_1(){
    var required = $('#fm_block_1 input, #fm_block_1 textarea, #fm_block_1 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_reject('#fm_block_1', baseUrl + '/decoration/update_block_one', baseUrl + '/decoration');
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
function view_page_pro(pages){
    page_pro_block_3 = pages;
    $('#list_data_block_3').load(baseUrl + '/decoration/list_pro?page='+page_pro_block_3);
    setInterval(function(){
        for(const item of data_block_3){
            $('#ck_block_3_'+item).prop('checked',  true);
            //$('#device_'+item.id).val(item.sub).trigger('change');
        }
    }, 200);
}

function set_type_1(){
    var check = $('#typedata1').is(":checked"); data_block_3 = [];
    if(check){
        $('#pro_cate_block_3').prop('disabled', false); $('#type_data').val(1);
        $('#list_data_block_3').empty(); $('#typedata2').prop('checked', false);
    }else{
        $('#pro_cate_block_3').prop('disabled', true);
        $('#list_data_block_3').empty(); $('#pro_cate_block_3').val('').trigger('change');
    }
}

function set_type_2(){
    var check = $('#typedata2').is(":checked"); data_block_3 = [];
    if(check){
        $('#pro_cate_block_3').prop('disabled', true); $('#pro_cate_block_3').val('').trigger('change');
        $('#list_data_block_3').load(baseUrl + '/decoration/list_pro'); $('#typedata1').prop('checked', false);
        $('#type_data').val(2);
    }else{
        $('#pro_cate_block_3').prop('disabled', true);
        $('#list_data_block_3').empty(); $('#pro_cate_block_3').val('').trigger('change');
    }
}

function confirm_pro_block_3(idh){
    var check = $('#ck_block_3_'+idh).is(":checked");
    if(check){
        data_block_3.push(idh);
    }else{
        data_block_3 = data_block_3.filter(item => item != idh);
    }
}

function save_block_3(){
    var required = $('#fm_block_3 input, #fm_block_3 textarea, #fm_block_3 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired && $('#type_data').val().length != 0){
        if($('#type_data').val() == 2){
            $('#data_id').val(data_block_3.join(","));
        }
        save_reject('#fm_block_3', baseUrl + '/decoration/update_block_three', baseUrl + '/decoration');
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
function view_page_pro_4(pages){
    page_pro_block_4 = pages;
    $('#list_data_block_4').load(baseUrl + '/decoration/list_pro_4?page='+page_pro_block_4);
    setInterval(function(){
        $('#ck_block_4_'+$('#data_id_4').val()).prop('checked', true);
    }, 200);
        
}

function confirm_pro_block_4(idh){
    $('input:checkbox').removeAttr('checked');
    $('#ck_block_4_'+idh).prop('checked', true);
    $('#data_id_4').val(idh);
}

function save_block_4(){
    var required = $('#fm_block_4 input, #fm_block_4 textarea, #fm_block_4 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired && $('#data_id_4').val().length != 0){
        save_reject('#fm_block_4', baseUrl + '/decoration/update_block_five', baseUrl + '/decoration');
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
function save_block_9(){
    var required = $('#fm_block_9 input, #fm_block_9 textarea, #fm_block_9 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_reject('#fm_block_9', baseUrl + '/decoration/update_block_night', baseUrl + '/decoration');
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}