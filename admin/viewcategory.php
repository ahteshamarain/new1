<?php 
include("include/header.php");
include("include/navbar.php");
include("include/sidebar.php");
include("config.php");




?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>View category</h1>

    </div><!-- End Page Title -->
    <br><br>

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <br><br>
              <h3 class="card-title">Products data</h3>
              <br><br>
             
         
   <!-- table -->
   <div class="table-responsive">
                  <table class="table table-centered table-hover text-nowrap table-borderless mb-0 table-with-checkbox">
                    <thead class="bg-light">
                      <tr>
                      
                        <th>Id</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Status</th>
                        <th>Date</th>
                        <th>Update</th>
                        <th>Delete</th>
                 
                      </tr>
                    </thead>
                    <tbody id="ctab">
                   
              
          




                    </tbody>
                  </table>

                </div>
            
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->
  <?php 

include("include/footer.php");


?>