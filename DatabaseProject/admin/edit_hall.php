<?php
    session_start();
    require('../dbconnect.php');
?>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Showtime</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
    <link rel="stylesheet" href="../css/admin_page.css">
    <link rel="stylesheet" href="../css/movie_page.css">
</head>

<body>
    <!-- nav bar -->
    <nav class="navbar navbar-light bg-light p-3">
        <div class="d-flex col-12 col-md-3 col-lg-2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
            <a style="font-size: 26px;" class="navbar-brand" href="#">
                Admin Page
            </a>
            <button class="navbar-toggler d-md-none collapsed mb-3" type="button" data-toggle="collapse" data-target="#sidebar" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="col-12 col-md-5 col-lg-8 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                <?php echo $_SESSION['name']; ?>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <li><a class="dropdown-item" href="admin_page.php?logout='1'">ออกจากระบบ</a></li>
                </ul>
              </div>
        </div>
    </nav>
    <!-- sidebar -->
    <div class="container-fluid">
        <div class="row">
            <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                          <a class="nav-link" aria-current="page" href="admin_page.php">
                            <span style="font-size: 22px;" class="ml-2">Home</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="movie_page.php">
                            <span style="font-size: 22px;" class="ml-2">Movie</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="edit_showtime.php">
                            <span style="font-size: 22px;" class="ml-2">Showtime</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active" href="edit_hall.php">
                            <span style="font-size: 22px;" class="ml-2">Hall</span>
                          </a>
                        </li>
                      </ul>
                </div>
            </nav>

            <main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
              <a class="btn btn-primary" href="add_hall.php">Add Hall</a>

              <?php
                $sql = "SELECT * FROM theatre_hall";
                $query = mysqli_query($conn, $sql);
              ?>
              <table class="table table-hover mt-3">
                <thead class="table-dark">
                  <tr>
                    <th>Hall ID</th>
                    <th>Hall Name</th>
                    <th>Number Of Seats</th>
                    <th></th>
                    <th></th>
                  </tr>
                </thead>
                <?php while ($row=mysqli_fetch_array($query)) { ?>
                  <tr>
                    <td><?=$row['theatre_id']?></td>
                    <td><?=$row['hall_name']?></td>
                    <td><?=$row['number_of_seats']?></td>
                    <td><a href="e_hall.php?id=<?=$row['theatre_id']?>" name="edithall" class="btn btn-primary">Edit</a></td>
                    <td><form method="post" action="add_hall_db.php"><button name="del_hall" class="btn btn-danger" type="submit" value="<?=$row['theatre_id']?>">Delete</button></form></td>
                  </tr>
                <?php } ?>
              </table>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
</body>
</html>