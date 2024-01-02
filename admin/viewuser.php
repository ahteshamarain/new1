<?php 
include("include/header.php");
include("include/navbar.php");
include("include/sidebar.php");
include("config.php");




?>

  <main id="main" class="main">
<br>
    <div class="pagetitle">
      <h1>View user</h1>

    </div><!-- End Page Title -->
    <br><br>

    <!-- <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <br><br>
              <h3 class="card-title">User data</h3>
              <br><br>
             

           
              <table class="table">
                <thead>
                  <tr>
                  <th>Id</th>
                    <th><b>first</b>Name</th>
                    <th>Last name</th>
                    <th>Email</th>
                    <th>Update</th>
                    <th>Delete</th>


                    
                  </tr>
                </thead>
                <tbody id="utab">
            
                   
                </tbody>
              </table>

            </div>
          </div>

        </div>
      </div>
    </section> -->
    <!-- modaal -->
    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="updatedata" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form id="uform" class="user" action="adduserdata.php" method="POST">
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input id="ufname"  style="border-radius: 100px;" type="text" class="form-control form-control-user input1" 
                placeholder="First Name" name="FirstName" required>
        </div>
        <div class="col-sm-6">
            <input id="ulname"  style="border-radius: 100px;" type="text" class="form-control form-control-user input1" 
                placeholder="Last Name" required>
         </div>
    </div>
    <div class="form-group mt-3">
        <input id="uemail"  style="border-radius: 100px;" type="email" class="form-control form-control-user input1" 
            placeholder="Email Address" name="email" required>
    </div>
    
    <br>
    <!-- <a class="btn btn-primary btn-user btn-block" name="register">
        Register Account
    </a> -->
    <input id="uregister" type="submit" name="register" value="register" class="btn btn-primary btn-user btn-block" name="register" >
    <br><br>
 
                        
</form>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    <!-- modaal End -->
    <button style="margin-left : 80%; " type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updatedata">
  Update data
  </button>
 


     <!-- table -->
     <div class="table-responsive">
     <br><br>
                  <table class="table table-centered table-hover text-nowrap datatable table-borderless mb-0 table-with-checkbox">
                    <thead class="bg-light">
                      <tr>
                      
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Update</th>
                        <th>Delete</th>
                 
                      </tr>
                    </thead>
                    <tbody id="utab">
                      
                   

                    </tbody>
                  </table>

                </div>




  </main><!-- End #main -->
  <?php 

include("include/footer.php");


?>