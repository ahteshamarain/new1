<?php 
include("include/header.php");
include("include/navbar.php");
include("include/sidebar.php");
include("config.php");




?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>products</h1>

    </div><!-- End Page Title -->
    <br><br>

         <!-- table -->
         <div class="table-responsive">
                  <table class="table table-centered table-hover text-nowrap table-borderless mb-0 table-with-checkbox">
                    <thead class="bg-light">
                      <tr>
                      
                        <th>Id</th>
                        <th>Name</th>
                        <th>code</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Update</th>
                        <th>Delete</th>
                 
                      </tr>
                    </thead>
                    <tbody id="ptab">
                   
              
          




                    </tbody>
                  </table>

                </div>
  

  </main><!-- End #main -->
  <?php 

include("include/footer.php");


?>