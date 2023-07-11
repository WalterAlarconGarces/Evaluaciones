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
    <div class='card'>
    <img src=#{dato["img_src"]} class='card-img-top'>
    <div class='card-body'>
        <h5 class='card-title'>`#{dato["name"]}`</h5>
        <p class='card-text'>`#{dato["camera"]["full_name"]}`</p>
    </div>
    <ul class='list-group list-group-flush'>
        <li class='list-group-item'>Fecha de la tierra</li>
        <li class='list-group-item'>`#{dato["earth_date"]}`</li>
    </ul>
</div>
    "
  }
  puts tarjetas
end


buid_web_page(request(Enlace))




