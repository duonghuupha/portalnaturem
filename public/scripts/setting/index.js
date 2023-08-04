function save_global(){
    var required = $('#fm-global input, #fm-global textarea, #fm-global select').filter('[required]:visible');
    var allRequired = true, img = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired && validate_email($('#email').val())){
        save_reject('#fm-global ', baseUrl + '/setting/update_global', baseUrl + '/setting'); 
    }else{
        show_message("error", "Chưa điền đủ thông tin hoặc định dạng email không chính xác");
    }
}