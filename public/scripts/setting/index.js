function save_global(){
    var required = $('#fm-g lobal input, #fm-global textarea, #fm-global select').filter('[required]:visible');
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
                $('.overlay').hide(); $('#zipcode').val(null);
                show_message('error', data.msg);
            }
        });
    }else{
        $('#zipcode').val(null);
        show_message('error', "Zip code phải là sạng số và đủ 5 số");
    }
}

function cal_price(){
    var required = $('#fm-demo-ship input, #fm-demo-ship textarea, #fm-demo-ship select').filter('[required]:visible');
    var allRequired = true, img = true;
    required.each(function(){
        if($(this).val() == ''){
            allRequired = false;
        }
    });
    if(allRequired){
        $('.overlay').show();
        var tocode = $('#zipcode').val(), fromcode= $('#from_code').val();
        var pounds = $('#pounds').val(), ounces = $('#ounces').val();
        if(tocode.length != 0 && pounds.length != 0 && ounces.length  != 0){
            var data_str = "fromcode="+btoa(fromcode)+"&tocode="+btoa(tocode)+'&pounds='+btoa(pounds)+"&ounces="+btoa(ounces);
            $.getJSON(baseUrl + '/setting/cal_price?'+data_str, function(data){
                $('.overlay').hide();
                var item_ground = data.ground.Package.Postage;
                var item_priority = data.priority.Package.Postage;
                var item_express = data.express.Package.Postage;
                var html = '';
                /************************************************************** */
                $('#to_add').html($('#demo_add').val()); $('#to_city_state').html($('#demo_city').val()+', '+$('#demo_state').val());
                $('#to_zip').html(tocode); $('#to_country').html('USA');
                /************************************************************** */
                html += '<tr>';
                    html += '<td class="text-center">1</td>';
                    html += '<td class="text-center">'+pounds+'</td>';
                    html += '<td class="text-center">'+ounces+'</td>';
                    html += '<td class="text-left">USPS Ground Advantage</td>';
                    html += '<td class="text-right"><b>'+item_ground.Rate+'</b></td>';
                html += '</tr>';
                html += '<tr>';
                    html += '<td class="text-center">2</td>';
                    html += '<td class="text-center">'+pounds+'</td>';
                    html += '<td class="text-center">'+ounces+'</td>';
                    html += '<td class="text-left">Priority Mail</td>';
                    html += '<td class="text-right"><b>'+item_priority.Rate+'</b></td>';
                html += '</tr>';
                html += '<tr>';
                    html += '<td class="text-center">3</td>';
                    html += '<td class="text-center">'+pounds+'</td>';
                    html += '<td class="text-center">'+ounces+'</td>';
                    html += '<td class="text-left">Priority Mail Express 2-Day</td>';
                    html += '<td class="text-right"><b>'+item_express.Rate+'</b></td>';
                html += '</tr>';
                $('#tbody').html(html);
            });
        }else{
            show_message("error", "Bạn chưa nhập đủ thông tin");
        }
    }else{
        show_message("error", "Bạn chưa nhập đủ thông tin");
    }
}