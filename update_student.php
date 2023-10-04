<?php
include'config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Information</title>
</head>
<body>
    <h1>Update Student Information</h1>
    
    <form action="update_student.php" method="POST">
        <label for="person_id">Person ID Number:</label>
        <input type="text" name="person_id" required><br><br>

        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" required><br><br>

        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" required><br><br>

        <label for="middleName">Middle Name:</label>
        <input type="text" name="middleName"><br><br>

        <label for="birthdate">Birthdate:</label>
        <input type="date" name="birthdate" required><br><br>

        <label for="address">Home Address:</label>
        <input type="text" name="address" required><br><br>

        <label for="sex">Sex:</label>
        <input type="text" name="sex" required><br><br>

        <label for="nationality">Nationality:</label>
        <input type="text" name="nationality" required><br><br>

        <label for="civilStatus">Civil Status:</label>
        <input type="text" name="civilStatus" required><br><br>

        <label for="religion">Religion:</label>
        <input type="text" name="religion" required><br><br>

        <label for="emailAddress">Email Address:</label>
        <input type="email" name="emailAddress" required><br><br>

        <label for="contactNumber">Contact Number:</label>
        <input type="tel" name="contactNumber" required><br><br>

        <input type="submit" name="Update_Student_Information">
    </form>
    <?php 
    if (isset($_POST['Update_Student_Information'])) {
        $person_id =$_POST['person_id'];
        $Last_Name =$_POST['lastName'];
        $First_Name =$_POST['firstName'];
        $Middle_Name =$_POST['middleName'];
        $birth_Date =$_POST['birthdate'];
        $home_Address =$_POST['address'];
        $sex =$_POST['sex'];
        $nationality =$_POST['nationality'];
        $civil_Status =$_POST['civilStatus'];
        $religion =$_POST['religion'];
        $email_Address =$_POST['emailAddress'];
        $contact_Number =$_POST['contactNumber'];
      
        $SearchUserAccountQuery = "UPDATE person Set Lname='$Last_Name',Fname='$First_Name',Mname='$Middle_Name',Sex='$sex',Birthdate='$birth_Date',Home_Address='$home_Address',Civil_status='$civil_Status',Religion='$religion',Nationality='$nationality',Contact_Number='$contact_Number',Email_address='$email_Address' WHERE person_id='$person_id'";
    
        $result = $connection->query($SearchUserAccountQuery);
    
        if ($result) {
            echo "Update successful.";
        } else {
            echo "Error executing the update query: " . $connection->error;
        }
    }
        ?>
</body>
</html>