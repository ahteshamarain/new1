$(document).ready(function () {
  let cform = $("#row1");
    let cat_name = $("#cat_name");
    let cat_des = $("#cat_des");
    let addCat = $("#addCat");
    $("#status").change(function () {
      // Get the selected value
      let status = $(this).val();
  
      // console.log(cat_des, cat_name, selectedValue, addCat);
  
      addCat.on("click", function (e) {
        e.preventDefault()
        function insert(){
        $.ajax({
          url: "insertcat.php",
          method: "POST",
          data: {
            cat_name: cat_name.val(),
            cat_des: cat_des.val(),
            cat_status: status,
          },
          success: function (data) {
           alert(data);
           cform.trigger('reset')
           
            
          },
        });
      }
      insert()
      });
    });

    function display() {
      $.ajax({
          url: 'cfetch.php', // Update the URL to the PHP script that fetches user data
          method: 'POST',
          success: function (data) {
           
              $('#ctab').html(data); // Set the HTML content of utab
          },
      });
  }

  display();

  // delete record


$('tbody').on('click','.delete',function(){
  let userid= $(this).attr('data-id');

  $.ajax({
   url : 'cdelete.php',
   method : 'POST',
   data : {
       userid : userid

   },
   success: function(data){
 
    
       
       
       
       display();
      //  alert(data);
   }
  })
  
  
})



  });
  