<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>M-H Management System</title>
    <link rel="shortcut icon" type="image/jpg" href="./covid.jpg" sizes="48x48" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<style>
  

   *{
     padding:0px;
     margin:0px;
     box-sizing:border-box;
   }

   .input_section{
     padding:4px;
     border:1px solid black;border-radius:8px;
     width:380px;
    outline:none;
   }

.table__main{
  box-shadow: 0 2.8px 2.2px rgba(0, 0, 0, 0.034),
    0 6.7px 5.3px rgba(0, 0, 0, 0.048), 0 12.5px 10px rgba(0, 0, 0, 0.06),
    0 22.3px 17.9px rgba(0, 0, 0, 0.072), 0 41.8px 33.4px rgba(0, 0, 0, 0.086),
    0 100px 80px rgba(0, 0, 0, 0.12);
}

.faug{
  color:green;
}


.faur{
  color:red;
}

</style>
<body>

<div class="container mt-4 table-responsive">
      <h3 class="mb-3 font-weight-bold">DATAS OF DISTRIBUTION TABLE ✔</h3>

      <a href="app.php">
       <button class="btn btn-outline-info mb-3" >BACK</button>
       </a>
    
      <div class="alert alert-info" role="alert">
        Your datas will be available here , which is directly fetched from the database ! 
      </div>
    
      <form action="" method="post">
         <input type="text" class="mt-3 mb-4 ml-2 input_section p-2" name="hospitalID" placeholder="Enter the hospital ID" autocomplete="off"/>
         <button class="btn btn-outline-info mb-1 ml-3 border border-rounded" name="submit" type="submit" >SEARCH</button>
             
      <table class="table table-bordered table-hover ">
        <thead>
          <tr>
            
            <th scope="col">Coordinator ID</th>
            <th scope="col">Vaccine ID</th>
            <th scope="col">Batch Number</th>
            <th scope="col">No of vaccines recieved</th>
            <th scope="col">No of vaccines delivered</th>

            <th scope="col" colspan="2" class="text-center">Operations</th>
          </tr>
        </thead>
        <tbody>

        <?php

            include "connection.php";


            if(isset($_POST['submit'])){

            $hospitalID=$_POST['hospitalID'];

            $select_query="select * from distribution where hospitalID='$hospitalID' ";

            $query=mysqli_query($con,$select_query);

            $nums=mysqli_num_rows($query);

            while($res=mysqli_fetch_array($query)){

                ?>
            <tr>
            <td class="tb2 text-align-self-start"><?php echo $res['co_ordinatorID']?> </td>
            <td class="tb2 text-align-self-start"><?php echo $res['vaccineID']?> </td>
            
            <td class="tb2 text-align-self-start"><?php echo $res['batch_number']?></td>
            <td class="tb2 text-align-self-start"><?php echo $res['number_of_vaccines_recieved']?></td>
            <td class="tb2 text-align-self-start"><?php echo $res['number_of_vaccines_distributed']?></td>
            <td class="tb2 pl-5"><a href="update.php?serial_number=<?php echo $res['serial_number']?>" data-toggle="tooltip" data-placement="right" title="Update"><i class="fa fa-pencil-square-o  faug"></i></a>
            </td>
            <td class="tb2 pl-5"><a href="delete.php?serial_number=<?php echo $res['serial_number']?>" data-toggle="tooltip" data-placement="right" title="Delete"> <i class="fa fa-trash-o faur" ></i></i></a>
            </td>
            
            </tr>
            <?php
        }

        ?>
        </tbody>
       </table>
    </div>
<?php

}
?>  

        
            
    
 
                 
        </tbody>
    </table>
</form>
</div>