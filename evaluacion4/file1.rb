require "uri"
require "net/http"
require "json"

KEY = 'h9mY5eXC15oMwkeyUauuqNPgXHiIvgBxRsSApyCN'
SOL = '10'
Enlace = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=#{SOL}&api_key=#{KEY}"



def request(url_solicitada)
  
  url = URI(url_solicitada)
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  request = Net::HTTP::Get.new(url)
  response = https.request(request)
  
  return JSON.parse(response.read_body).values[0][0..10]
end



def buid_web_page(hash_entrada)
  tarjetas = ""
  hash_entrada.map{|dato|
    tarjetas= tarjetas + "
    <div class='col'>
    <div class='card'>
    <img src=#{dato["img_src"]} class='card-img-top'>
    <div class='card-body'>
        <h5 class='card-title'>`#{dato["camera"]["name"]}, SOL #{dato["sol"]}`</h5>
        <p class='card-text'>`#{dato["camera"]["full_name"]}, ID #{dato["id"]}`</p>
    </div>
    <ul class='list-group list-group-flush'>
        <li class='list-group-item'>Fecha de la tierra</li>
        <li class='list-group-item'>`#{dato["earth_date"]}`</li>
    </ul>
</div>
</div>
    "
  }
  return tarjetas
end

codigo_html_primero = '<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Desafio NASA">
    <link rel="shortcut icon" href="/assets/img/R.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cabin:wght@400;700&family=Lobster&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<title>NASA</title>
</head>

<body>
    <div class="cointainer">
        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-4">'

codigo_html_segundo = '        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
        integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
        integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="/assets/js/script.js"></script>
</body>

</html>'

web_completa = codigo_html_primero + buid_web_page(request(Enlace)) + codigo_html_segundo

File.write("index.html",web_completa)

puts "la web está ahora disponible en https://walteralarcongarces.github.io/Evaluaciones/evaluacion4/"
