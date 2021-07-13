<!DOCTYPE html>
<html>
  <head>
    <title>M-H Management System</title>
    <link rel="shortcut icon" type="image/jpg" href="./covid.jpg" sizes="48x48" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <div class="main-block">
      <div class="left-part">
      <h1 class="animate__animated  animate__pulse animate__infinite font-weight-bold mb-5">Vaccination Management</h1>
        <!-- <i class="fas fa-graduation-cap  animate__animated  animate__pulse animate__infinite "></i> -->
        <!-- <img src="covid.jpg" width="45px" height="45px" alt=""> -->
       
        <!-- <iframe src="https://assets.pinterest.com/ext/embed.html?id=618119117609890990" height="325" width="395" frameborder="0" scrolling="no"></iframe> -->
       
       <div class="mb-3">
       
      
      
          <iframe width="560" height="315" src="https://www.youtube.com/embed/0AssZJ0N2Ls" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" autoplay="true" loop   ></iframe>
      
            </div>
      <!-- <div class="mb-4">


      
    
            <style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'>
            <iframe src='https://www.youtube.com/embed/0AssZJ0N2Ls' frameborder='0' allowfullscreen></iframe></div>

      </div> -->
        <!-- <p>languages like HTML, CSS, Java Script, PHP etc.</p> -->
        <!-- Shreyas -->
        <div class="btn-group ">
        <a type="button"  class="btn btn-info mt-4" href="new_display.php" >Check your Info</a>
        </div>
      </div>

      <div class="w-50">
      <form action="" method="POST" >
        <div class="title">
         
          <h2 class="font-weight-bold">Vaccine Distribution Table 💉💊</h2>
        </div>
        <div class="info">
        
          <input class="fname" type="number" name="hospitalID" required placeholder="Enter Hospital ID" autocomplete="off">
          <input type="number" name="co_ordinatorID" required placeholder="Co-ordinator ID"  autocomplete="off">
          <input type="number" name="vaccineID" required placeholder="Enter Vaccine ID"  autocomplete="off">
          <input type="number" name="batch_number" required placeholder="Enter the Batch Number"  autocomplete="off">
          <input type="number" name="number_of_vaccines_recieved" required placeholder="Total number of Vaccines recieved"  autocomplete="off">
          <input type="number" name="number_of_vaccines_distributed" required placeholder="Total number of vaccines distributed"  autocomplete="off">

        </div>
        <!-- <div class="checkbox">
          <input type="checkbox" name="checkbox"><span>I agree to the <a href="https://www.w3docs.com/privacy-policy">Privacy Poalicy for W3Docs.</a></span>
        </div> -->
        <button type="submit" name="submit" class="btn btn-info p-2" >Submit</button>
      </form>
      </div>
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>


<?php

include 'connection.php' ;

if(isset($_POST['submit']))
{


$hospitalID=$_POST["hospitalID"];
$co_ordinatorID=$_POST["co_ordinatorID"];
$vaccineID=$_POST["vaccineID"];
$batch_number=$_POST["batch_number"];
$number_of_vaccines_recieved=$_POST["number_of_vaccines_recieved"];
$number_of_vaccines_distributed=$_POST["number_of_vaccines_distributed"];

   


$inputquery="insert into distribution(hospitalID,co_ordinatorID,vaccineID,batch_number,number_of_vaccines_recieved,	number_of_vaccines_distributed) values('$hospitalID','$co_ordinatorID','$vaccineID','$batch_number','$number_of_vaccines_recieved',
'$number_of_vaccines_distributed')";



$res=mysqli_query($con,$inputquery);

if($res)
{
    ?>
    <script>
    alert( "Data inserted successfully");
    </script>
    
    <?php
}

else{


     ?>
    
   <script>
   alert( "Data not inserted");
   </script>
   <?php
}


}


?>


