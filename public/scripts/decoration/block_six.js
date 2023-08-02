function save_block_6(){
    var required = $('#fm-block-6 input, #fm-block-6 textarea, #fm-block-6 select').filter('[required]:visible');
    var allRequired = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_reject('#fm-block-6', baseUrl + '/block_six/update', baseUrl + '/decoration'); 
    }else{
        show_message("error", "Chưa điền đủ thông tin");
    }
}