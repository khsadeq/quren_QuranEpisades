<h1>The update</h1>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="{{route('teacher.update',$post->id)}}" method="post">
    {{-- @method('PUT') --}}
@csrf

    <input type="text" name="Name_tracher" value="{{$post->Name_tracher}}"><br><br>
    <input type="text" name="Date_birth" value="{{$post->Date_birth}}"><br><br>
    <input type="text" name="Qualification" value="{{$post->Qualification}}"><br><br>
    <input type="text" name="Work" value="{{$post->Work}}"><br><br>
    <input type="text" name="Salary" value="{{$post->Salary}}"><br><br>
    <input type="text" name="phone" value="{{$post->phone}}"><br><br>
    <input type="text" name="Email" value="{{$post->Email}}"><br><br>
    <input type="text" name="ID_Qualification" value="{{$post->ID_Qualification}}"><br><br>
    <input type="text" name="Teaching_years" value="{{$post->Teaching_years}}"> <br><br>
    <input type="text" name="Center_they_work" value="{{$post->Center_they_work}}"><br><br>
    <input type="text" name="Address" value="{{$post->Address}}"><br><br>
    <input type="text" name="ID_Sex" value="{{$post->ID_Sex}}"><br><br>
    <input type="text" name="ID_Sexual" value="{{$post->ID_Sexual}}"><br><br>
    <input type="text" name="ID_Identity" value="{{$post->ID_Identity}}"><br><br>
    <input type="text" name="Number_identity" value="{{$post->Number_identity}}"><br><br>
    <button type="submit">Insert</button>

</form>
</body>
</html>
