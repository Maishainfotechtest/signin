  $(document).ready(function  () {
      $("#country").change(function  () {
          var cid =  $("#country").find(':selected').attr('key');
          console.log(cid);
          $.ajax({
              url : "state.php",
              method : "POST",
              data : {cid : cid},
              success : function  (res) {
                  $('#state').html(res);
              }
          })
      })
      
      $("#state").change(function  () {
        var sid = $("#state").find(':selected').attr('key');

        $.ajax({
            url : "city.php",
            method : "POST",
            data : {sid : sid},
            success : function  (res) {
                $('#city').html(res);
            }
        })
    })

     
  });

  