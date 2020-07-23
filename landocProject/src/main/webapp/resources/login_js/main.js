(function($){

    "use strict";


    /*==================================================================
    [ Focus input ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    });
    
  
  
    /*==================================================================
    [ Validate ]*/
    // var input = $('.validate-input .input100');
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;
        var lo = true;
        var agr=true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                lo=false;
            }
        }

        if($("#check1").prop('checked') == false || $("#check2").prop("checked") == false){
                alert("필수 약관에 동의 하셔야 합니다.");
                agr=false;
        }
        if(lo == true && agr == true){
            check=true;
        }else{
            check=false;
        }

        

        return check;
    });
   

    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });
    
    
    function validate (input) {
        console.log("회원input");
        
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else if($(input).attr('name') == 'userId'){
            if($(input).val().trim().match(/^[a-zA-Z0-9]{4,20}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'userPwd'){
            if($(input).val().trim().match(/^[a-z0-9]{4,20}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'userName'){
            if($(input).val().trim().match(/^[가-힣]{2,4}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'nickName'){
            if($(input).val().trim().match(/^[a-zA-Z0-9가-힣ㄱ-ㅎ]{4,20}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'phone'){
            if($(input).val().trim().match(/^[0-9]{11}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'birth'){
            if($(input).val().trim().match(/^[0-9]{6}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'checkPwd'){
            if($(input).val().trim().match(/^[a-z0-9]{4,20}$/) == null){
                return false;
            }else if($(input).val() != $("#userPwd").val()){
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }
   

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
   
    /*==================================================================
    [ Show pass ]*/
    var showPass = 0;
    $('.btn-show-pass').on('click', function(){
        if(showPass == 0) {
            $(this).next('input').attr('type','text');
            $(this).find('i').removeClass('zmdi-eye');
            $(this).find('i').addClass('zmdi-eye-off');
            showPass = 1;
        }
        else {
            $(this).next('input').attr('type','password');
            $(this).find('i').addClass('zmdi-eye');
            $(this).find('i').removeClass('zmdi-eye-off');
            showPass = 0;
        }
        
    });

    // $('input[type=radio][name=check]').on('click',function(){
    //     var chkValue = $('input[type=radio][name=check]:checked').val();

    //     if(chkValue == member){
    //         $('#memberJoin').css('display','block');
    //         $('#doctorJoin').css('display','none');
    //     }else if(chkValue == doctor){
    //         $('#memberJoin').css('display','none');
    //         $('#doctorJoin').css('display','block');
    //     }
    // })

    $(function(){
        $("#checkAll").click(function(){
            var bool = $("#checkAll").prop("checked");
            $(".infoBox").prop("checked",bool);
        })
    })

    // $(function(){
    //     $("#postcodify_search_button").postcodifyPopUp();
    // });
    
    // $('#mainField').on('input', function(){
    //     sisi = $(this);
    //     $.each($('#mainFieldList')[0].options, function(idx, opt){
    //         if(sisi.val() == opt.value){
    //             console.log("일치함");
    //         }else{
    //             console.log("일치않함");
    //         }
    //     })
    // })

    
})(jQuery);