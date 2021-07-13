<!DOCTYPE html>
<html>
  <head>
    <title>M-H Management Sysytem</title>
    <link rel="shortcut icon" type="image/jpg" href="./covid.jpg" sizes="48x48" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />

  
  </head>
  <body>
    <div class="main-block">
      <div class="left-part">
      <h1 class="animate__animated  animate__pulse animate__infinite font-weight-bold mb-5">Vaccination Management</h1>
        <!-- <i class="fas fa-graduation-cap  animate__animated  animate__pulse animate__infinite "></i> -->
        <iframe width="560" height="315" src="https://www.youtube.com/embed/0AssZJ0N2Ls" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" ></iframe>
       
       
        <!-- <h1 class="animate__animated  animate__pulse animate__infinite">Register to our courses</h1> -->
        <!-- <p>W3docs provides free learning materials for programming languages like HTML, CSS, Java Script, PHP etc.</p> -->
        <div class="btn-group">
        <!-- <a type="button"  class="btn btn-info mt-1" href="display.php" >Check your Info</a> -->
          
        </div>
      </div>
      <form  method="post">
     
        <div class="title">
         
          <h2 class="font-weight-bold">Vaccine Distribution Table 💉💊</h2>
        </div>
        <div class="info">
        <?php

                      include 'connection.php' ;

                      $serial_number=$_GET['serial_number'];

                      $showquery="select * from distribution where serial_number={$serial_number}";

                      $showdata=mysqli_query($con,$showquery);

                      $arraydata=mysqli_fetch_array($showdata);


                      if(isset($_POST['submit']))
                      
                      {


                      $serial_number=$_GET['serial_number'];
                      $hospitalID=$_POST["hospitalID"];
                      $co_ordinatorID=$_POST["co_ordinatorID"];
                      $vaccineID=$_POST["vaccineID"];
                      $batch_number=$_POST["batch_number"];
                      $number_of_vaccines_recieved=$_POST["number_of_vaccines_recieved"];
                      $number_of_vaccines_distributed=$_POST["number_of_vaccines_distributed"];

                        


                     

                      $update_query="update distribution set serial_number=$serial_number , hospitalID='$hospitalID' ,  co_ordinatorID='$co_ordinatorID',   vaccineID='$vaccineID', batch_number='$batch_number', number_of_vaccines_recieved='$number_of_vaccines_recieved' , number_of_vaccines_distributed='$number_of_vaccines_distributed' where serial_number=$serial_number " ;

                      $res=mysqli_query($con,$update_query);

                      if($res)
                      {
                        ?>
                        <script>
                        alert( "Data Updated successfully");
                        </script>
                        
                        <?php

                          header("location:app.php");
                    }

                    else{


                        ?>
                        
                      <script>
                      alert( "Data not Updated");
                      </script>
                      <?php
                    }


                    }


                ?>
                   
                    <input class="fname" type="number" name="hospitalID" required placeholder="Enter Hospital ID" autocomplete="off" value="<?php echo $arraydata['hospitalID']?>">
                    <input type="number" name="co_ordinatorID" required placeholder="Co-ordinator ID"  autocomplete="off" value="<?php echo $arraydata['co_ordinatorID']?>">
                    <input type="number" name="vaccineID" required placeholder="Enter Vaccine ID"  autocomplete="off" value="<?php echo $arraydata['vaccineID']?>">
                    <input type="number" name="batch_number" required placeholder="Enter the Batch Number"  autocomplete="off" value="<?php echo $arraydata['batch_number']?>">
                    <input type="number" name="number_of_vaccines_recieved" required placeholder="Total number of Vaccines recieved"  autocomplete="off" value="<?php echo $arraydata['number_of_vaccines_recieved']?>">
                    <input type="number" name="number_of_vaccines_distributed" required placeholder="Total number of vaccines distributed"  autocomplete="off" value="<?php echo $arraydata['number_of_vaccines_distributed']?>">

                </div>
                
                <button type="submit" name="submit" class="btn btn-info p-2">Update</button>
            </form>
            </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        </body>
        </html>





