var url = '', page = 1, deco_id = 0;
$(function(){
    $('#list-data').load(baseUrl + '/decoration/json');
    $('#btn_slide').hide();
});

function add(){
    $('#modal-data').modal('show');
    url = baseUrl + '/decoration/add';
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
        save_form_modal('#fm', url, '#modal-data', '#list-data',  baseUrl+'/decoration/json'); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}

function view_page_decoration(pages){
    page = pages;
    $('#list-data').load(baseUrl + '/decoration/json?page='+page);
}

function change(idh, status){
    var data_str = "id="+btoa(idh)+'&status='+status+'&type=1';
    del_data(data_str, "Bạn có chắc chắn muốn cập nhật trạng thái cho bảng ghi này?", baseUrl + '/decoration/change', '#list-data', baseUrl + '/decoration/json?page='+page);
}
/////////////////////////////////////////////////////////////////////////////////////////////////
function edit_cell(idh, value){
    $('#orderblock_'+idh).hide(); $('#btn_edit_'+idh).hide(); 
    $('#order_'+idh).show(); $('#btn_save_'+idh).show(); 
}

function save_cell(idh){
    var data_str = "id="+btoa(idh)+'&value='+$('#order_'+idh).val()+'&type=2';
    del_data(data_str, "Bạn có chắc chắn muốn thay đổi vị trí của block?", baseUrl + '/decoration/change', '#list-data', baseUrl + '/decoration/json?page='+page);
}
//////////////////////////////////////////////////////////////////////////////////////////////////
function edit(idh){
    if(idh == 1){
        $('#content-decoration').load(baseUrl + '/block_one/json');
        $('#btn_slide').show(); $('#btn_block').attr('onclick', 'add_block_1()');
    }else if(idh == 2){
        $('#content-decoration').load(baseUrl + '/block_two/form');
        $('#btn_block').attr('onclick', ''); $('#btn_slide').hide();
    }else if(idh == 3){
        $('#content-decoration').load(baseUrl + '/block_three/form');
        $('#btn_block').attr('onclick', ''); $('#btn_slide').hide();
    }else if(idh == 4){
        $('#content-decoration').load(baseUrl + '/block_four/form');
        $('#btn_block').attr('onclick', ''); $('#btn_slide').hide();
    }else if(idh == 5){
        
    }else if(idh == 6){
        $('#content-decoration').load(baseUrl + '/block_six/form');
        $('#btn_block').attr('onclick', ''); $('#btn_slide').hide();
    }else if(idh == 7){
        $('#content-decoration').load(baseUrl + '/block_seven/json');
        $('#btn_slide').show(); $('#btn_block').attr('onclick', 'add_block_7()');
    }
}