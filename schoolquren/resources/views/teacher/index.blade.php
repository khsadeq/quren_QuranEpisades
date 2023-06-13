<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
          <table border="1">
              <th>ID</th>
              <th>Name_tracher</th>
              <th>Date_birth</th>
                <th>Qualification</th>
                <th>Work</th>
                <th>Salary</th>
                <th>phone</th>
                <th>Email</th>
                <th>ID_Qualification</th>
                <th>Teaching_years</th>
                <th>Center_they_work</th>
                <th>Address</th>
                <th>ID_Sex</th>
              <th>ID_Sexual</th>
              <th>ID_Identity</th>
             <th>Number_identity</th>
                <th>Pro</th>
               @foreach ($posts as $post)
               <tr>
                 <td>{{$post->id}}</td>
                 <td>{{$post->Name_tracher}}</td>
                 <td>{{$post->Date_birth}}</td>
                 <td>{{$post->Qualification}}</td>
                 <td>{{$post->Work}}</td>
                 <td>{{$post->Salary}}</td>
                 <td>{{$post->phone}}</td>
                 <td>{{$post->Email}}</td>
                 <td>{{$post->qualification_studi_id}}</td>
                 <td>{{$post->Teaching_years}}</td>
                 <td>{{$post->Center_they_work}}</td>
                 <td>{{$post->Address}}</td>
                 <td>{{$post->sex_id}}</td>
                 <td>{{$post->sexual_id}}</td>
                 <td>{{$post->identiti_id}}</td>
                 <td>{{$post->Number_identity}}</td>

                   <td>
                       <a class="btn btn-primary", href="{{route('teacher.edit',$post->id)}}",  style="background: red ,">Edit</a>
                       <a href="{{route('teacher.destroy',$post->id)}}">Delete</a>

                   </td>
               </tr>

               @endforeach
          </table>
          <a href="{{route('teacher.insert')}}">insert</a><br>
          <a href="{{route('teacher.delete.all.Truncate')}}">Delete  Truncate</a>
</body>
</html>
