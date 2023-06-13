<h1>The Teacher</h1>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="{{route('teacher.store')}}" method="post">
@csrf

    <input type="text" name="Name_tracher"><br><br>
    <input type="text" name="Date_birth"><br><br>
    <input type="text" name="Qualification"><br><br>
    <input type="text" name="Work"><br><br>
    <input type="text" name="Salary"><br><br>
    <input type="text" name="phone"><br><br>
    <input type="text" name="Email"><br><br>
    <input type="text" name="qualification_studi_id"><br><br>
    <input type="text" name="Teaching_years"><br><br>
    <input type="text" name="Center_they_work"><br><br>
    <input type="text" name="Address"><br><br>
    <input type="text" name="sex_id"><br><br>
    <input type="text" name="sexual_id"><br><br>
    <input type="text" name="identiti_id"><br><br>
    <input type="text" name="Number_identity"><br><br>
    <button type="submit">Insert</button>

</form>
</body>
</html>
{{-- <select name="qualification_studi_id"> --}}
    {{-- <option value="0">...</option> --}}
    {{-- <?php --}}
        // $allCats = getAllFrom("*", "qualifications_studies", "where parent = 0", "", "id");
        // foreach ($allCats as $cat) {
            // echo "<option value='" . $cat['id'] . "'>" . $cat['name_qual'] . "</option>";
            // $childCats = getAllFrom("*", "qualifications_studies", "where parent = {$cat['id']}", "", "id");
            // foreach ($childCats as $child) {
                // echo "<option value='" . $child['id'] . "'>--- " . $child['name_qual'] . "</option>";
            // }
        // }
    // ?>
