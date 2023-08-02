var page = 1, keyword = '', url = '';

function save_block_3(){
    var required = $('#fm-block-3 input, #fm-block-3 textarea, #fm-block-3 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_reject('#fm-block-3', baseUrl + '/block_three/update', baseUrl + '/decoration'); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}
//////////////////////////////////////////////////////////////////////////////////////////////////
function select_pro(){
    $('#list_data_block_3').load(baseUrl + '/block_three/list_pro');
    $('#pager_pro_block_3').load(baseUrl + '/block_three/list_pro_page');
    $('#modal-pro').modal('show');
}

function view_page_pro_block_3(pages){
    page = pages;
    $('#list_data_block_3').load(baseUrl + '/block_three/list_pro?page='+page+'&q='+keyword);
    $('#pager_pro_block_3').load(baseUrl + '/block_three/list_pro_page?page='+page+'&q='+keyword);
}

function search_pro(){
    var q = $('#nav-search-input-pro').val();
    keyword = (q.length != 0) ? q.replaceAll(" ", "$", 'g') : '';
    $('#list_data_block_3').load(baseUrl + '/block_three/list_pro?page=1&q='+keyword);
    $('#pager_pro_block_3').load(baseUrl + '/block_three/list_pro_page?page=1&q='+keyword);
}

function confirm_pro_block_3(idh){
    $('#data_id_block_3').val(idh);
    $('#single_pro_title').val($('#titlepro_'+idh).text());
    $('#modal-pro').modal('hide');
}