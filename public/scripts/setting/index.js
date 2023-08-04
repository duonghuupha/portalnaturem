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

function save_pay(){
    var required = $('#fm-payment input, #fm-payment textarea, #fm-payment select').filter('[required]:visible');
    var allRequired = true, img = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        save_reject('#fm-payment ', baseUrl + '/setting/update_payment', baseUrl + '/setting'); 
    }else{
        show_message("error", "Chưa điền đủ thông tin hoặc định dạng email không chính xác");
    }
}

function reload_state(){
    var code = $('#zip_code').val();
    if(code.length == 5){
        $('.overlay').show();
        $.getJSON(baseUrl + '/setting/check_code?code='+btoa(code), function(data){
            if(data.success){
                $('.overlay').hide();
                show_message('success', data.msg);
                $('#state').val(data.results[code][0].state);
                $('#code_state').val(data.results[code][0].state_code);
                $('#city').val(data.results[code][0].city);
                //console.log(data.results[code][0].state);
            }else{
                $('.overlay').hide();
                show_message('error', data.msg);
            }
        });
    }else{
        show_message('error', "Zip code phải là sạng số và đủ 5 số");
    }
}
//////////////////////////////////////////////////////////////////////////////////////////////////
function demo_ship(){
    $('#modal-data').modal('show');
}

function demo_check_code(){
    var code = $('#zipcode').val();
    if(code.length == 5){
        $('.overlay').show();
        $.getJSON(baseUrl + '/setting/check_code?code='+btoa(code), function(data){
            if(data.success){
                $('.overlay').hide();
                show_message('success', data.msg);
                $('#demo_state').val(data.results[code][0].state);
                $('#demo_codestate').val(data.results[code][0].state_code);
                $('#demo_city').val(data.results[code][0].city);
                //console.log(data.results[code][0].state);
            }else{
                $('.overlay').hide();
                show_message('error', data.msg);
            }
        });
    }else{
        show_message('error', "Zip code phải là sạng số và đủ 5 số");
    }
}

function cal_price(){
    var tocode = $('#zipcode').val(), fromcode= $('#from_code').val();
    console.log(tocode+' '+fromcode);
}