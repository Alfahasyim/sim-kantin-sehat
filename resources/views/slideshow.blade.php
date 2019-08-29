<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <style media="screen">
    #slideshow {
      background-color:#e4e9ed;;
      position: fixed;
      width: 100%;
      height: 100%;
      padding: 10px;
      box-shadow: 0 0 20px rgba(0,0,0,0.4);
    }

    #slideshow > div {
      position: absolute;
      top: 10px;
      left: 10px;
      right: 10px;
      bottom: 10px;
    }
    .barang{
      /* float: left; */
      width: 100%;
      position: fixed;
      height: 100%;
    }
    .info{
      /* z-index: -1; */
          position: relative;
          float: right!important;
          /* margin-right: 40px; */
          width: 30%;
          height: 100%;
          background-color: black;
          opacity: 0.5;
          box-shadow: 1px;
      }
      .ket{
        margin-top: 150px;
        position: relative;
        color: white;
        float: right!important;
        margin-right: -285px;
        width: 20%;
        height: 400px;
      }
    }
    </style>
    <title></title>
  </head>
  <body>

    <div id="slideshow">
      <div>
        <center style="padding-top:150px;">
          <h1>Menu Hari Ini</h1><br>
          <h2>Kantin Sehat SMK Wikrama Bogor</h2>
        </center>
      </div>
      @foreach($gambar as $g)
        @php
          $kandungangizi = json_decode($g['kandungan_gizi'],true);
        @endphp
        <div>
          <div class="barang">
            <img width="100%" height="100%" src="{{ url('/data_file/'.$g->file) }}">
          </div>
          <div class="info">

          </div>
          <div class="ket">
            <center><h2>{{$g->keterangan}}</h2></center>
            @if(!empty($kandungangizi))
            @foreach($kandungangizi as $key => $value)
              <span><h4>{{ $value['kategory']." : ".$value['nilai'] }}
                  @if($value['kategory'] == "Energi")
                  Kkal
                  @elseif($value['kategory'] == "Protein")
                  gram
                  @elseif($value['kategory'] == "Karbohidrat")
                  gram
                  @elseif($value['kategory'] == "Lemak")
                  gram
                  @elseif($value['kategory'] == "Vitamin")
                  mg
                  @elseif($value['kategory'] == "Mineral")
                  ml
                  @endif
              </h4></span></br>

            @endforeach
            @endif
          </div>
        </div>

      @endforeach
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script type="text/javascript">
    $("#slideshow > div:gt(0)").hide();

    setInterval(function() {
    $('#slideshow > div:first')
      .fadeOut(1000)
      .next()
      .fadeIn(1000)
      .end()
      .appendTo('#slideshow');
    }, 10000);
    </script>
  </body>
</html>
