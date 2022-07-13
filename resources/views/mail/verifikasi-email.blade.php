<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    {{-- bootstrap 5 --}}
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
</head>

<body>
    <h3 class="text-center">Verifikasi Email</h3>
    <p class="text-center">Silahkan verifikasi email anda dengan mengklik link dibawah ini:</p>
    <p class="text-center"><a class="btn btn-primary" href="{{ $url }}">Verifikasi</a></p>
    <p class="text-center">Atau salin tautan ini {{ $url }}</p>
</body>

</html>
