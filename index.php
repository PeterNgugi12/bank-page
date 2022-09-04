
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
body{
    padding: 0;
}
h1{
    color: blue;
}
.search-box{
    border: 2px solid #000;
    border-radius: 107vh 100vh;
    width: 64%;
    position: absolute;
    left: 15%;
    background-color: blue;
}
input{
    width: 280px;
    height: 35px;
    border-radius: 100vh 0 150vh 100vh;
    border: none;
    outline: none;
    padding: 0 10px;
}
button{
    border: none;
    background-color: white;
    outline: none;
    cursor: pointer;
}
</style>
</head>
<body>
    <h1>Amica Bank</h1>
    <br>
    <div class="search-box">
        <form action="search.php" method="GET">
            <input type="text" name="search" placeholder= "Type to search">
            <button><i class="bi bi-search"></i></button>
        </form>

    </div>
    <br><br><br><br>
    <table class="table">
        <thead>
            <tr>
                <th>Account_No</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $servename = "localhost";
            $username = "root";
            $password = "";
            $database = "bank_db";
            // create connection
            $connection = new mysqli($servename, $username, $password, $database);
            // check connection
            if($connection->connect_error){
                die("Connection failed: " . $connection->connect_error);
            }
            //read all row from database table
            $sql = "SELECT * FROM customers";
            $result = $connection->query($sql);

            if(!$result) {
                die("invalid query: " . $connection->error);
            }

            //read data of each row
            while($row = $result->fetch_assoc()){
             echo" <tr>
    		<td>" . $row["Account_No"] . "</td>
            <td>" . $row["FirstName"] . "</td>
            <td>" . $row["LastName"] . "</td>
            <td>" . $row["Email"] . "</td>
            <td>" . $row["Phone"] . "</td>
            <td>" . $row["Address"] . "</td>
    </tr>";
            }
   
    ?>
        </tbody>
    </table>
</body>
</html>
