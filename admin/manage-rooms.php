<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

if(isset($_GET['del']))
{
	$id=intval($_GET['del']);
	$adn="delete from rooms where id=?";
		$stmt= $mysqli->prepare($adn);
		$stmt->bind_param('i',$id);
        $stmt->execute();
        $stmt->close();	   
        echo "<script>alert('Oops! your data has been deleted');</script>" ;
}
?>
<!doctype html>
<html lang="en" class="no-js">

    <head>
        <?php include("includes/head.php") ?>
    </head>

    <body>
        <?php include('includes/header.php');?>

        <div class="ts-main-content">
            <?php include('includes/sidebar.php');?>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">

                            <div class="panel panel-default" style="margin-top: 4px;">
                                <div class="panel-heading">All Room Details</div>
                                <div class="panel-body">
                                    <table id="zctb" class="display table table-striped table-bordered table-hover"
                                        cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Sno.</th>

                                                <th>room_type</th>
                                                <th>Room No.</th>
                                                <th>Fees (PM) </th>

                                                <th>Posting Date </th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Sno.</th>
                                                <th>room_type</th>
                                                <th>Room No.</th>

                                                <th>Fees (PM) </th>
                                                <th>Posting Date </th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php	
										$aid=$_SESSION['id'];
										$ret="select * from rooms";
										$stmt= $mysqli->prepare($ret) ;

										$stmt->execute() ;
										$res=$stmt->get_result();
										$cnt=1;
										while($row=$res->fetch_object())
											{
												?>
                                            <tr>
                                                <td><?php echo $cnt;;?></td>
                                                <td><?php echo $row->room_type;?></td>
                                                <td><?php echo $row->room_no;?></td>
                                                <td><?php echo $row->fees;?></td>
                                                <td><?php echo $row->posting_date;?></td>
                                                <td><a href="edit-room.php?id=<?php echo $row->id;?>"><i
                                                            class="fa fa-edit"></i></a>&nbsp;&nbsp;
                                                    <a href="manage-rooms.php?del=<?php echo $row->id;?>"
                                                        onclick="return confirm(" are you sure you want to
                                                        delete?");"><i class="fa fa-close"></i></a>
                                                </td>
                                            </tr>
                                            <?php
									$cnt=$cnt+1;
									 } ?>


                                        </tbody>
                                    </table>


                                </div>
                            </div>


                        </div>
                    </div>



                </div>
            </div>
        </div>

        <!-- Loading Scripts -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap-select.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <script src="js/Chart.min.js"></script>
        <script src="js/fileinput.js"></script>
        <script src="js/chartData.js"></script>
        <script src="js/main.js"></script>

    </body>

</html>