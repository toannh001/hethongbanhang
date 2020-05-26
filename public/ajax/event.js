//USER
$(document).ready(function(){
    $('.viewUserDetail').click(function(e){   
          $("#content_viewdetail input").val(''); 
         $url=$(location).attr('href');  
         e.preventDefault();
         $id=$(this).data("button").id;
         $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        });
        $.ajax({
            url: $url+"/view",
            method: 'post',
            data: {
               id: $id,
            },
            success: function(result){
              //$('.alert').show();
              //$('.alert').html(result.success);                    
              //$('#content_viewdetail').html(result.username);
              $("#content_viewdetail input[name='username']").val(result.username);
              $("#content_viewdetail input[name='fullname']").val(result.name);
              $("#content_viewdetail input[name='email']").val(result.email);

            }});
         });
      });