<html>
<head>
	<title>SIM Kantin Wikrama Sehat</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
	<ul style="float:right;" class="navbar navbar-default navbar-static-top">
	<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
					{{ Auth::user()->name }} <span class="caret"></span>
			</a>

			<ul class="dropdown-menu">
					<li>
							<a href="{{ route('logout') }}"
									onclick="event.preventDefault();
													 document.getElementById('logout-form').submit();">
									Logout
							</a>

							<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
									{{ csrf_field() }}
							</form>
					</li>
			</ul>
	</li></ul>
	<div class="row">
		<div class="container">

			<h2 class="text-center my-5">Form Input Makanan Kantin Wikrama</h2>

			<div class="col-lg-8 mx-auto my-5">

				@if(count($errors) > 0)
				<div class="alert alert-danger">
					@foreach ($errors->all() as $error)
					{{ $error }} <br/>
					@endforeach
				</div>
				@endif

				<form action="/upload/proses" method="POST" enctype="multipart/form-data">
					{{ csrf_field() }}

					<div class="form-group">
						<b>File Gambar</b><br/>
						<input type="file" name="file">
					</div>

					<div class="form-group">
						<b>Nama Makanan</b>
						<input class="form-control" type="text" name="keterangan">
					</div>

					<div class="form-group">
						<table class="table table-bordered table-hover" id="dynamic_field" >
						<thead>
						<tr>
								<th class="text-center">Nilai Gizi</th>
								<th class="text-center">Kandungan Gizi</th>
								<th><button type="button" name="add" id="add" class="btn btn-success">Add More</button></th>
						</tr>
						</thead>
						<tbody>

						<tr class="">
								<td><input type="text" name="kandungan_gizi[0][nilai]" class="form-control" placeholder="Nilai Gizi"></td>
								<td>
									<select class="form-control" name="kandungan_gizi[0][kategory]">
										<option value="Energi">Energi</option>
										<option value="Protein">Protein</option>
										<option value="Karbohidrat">Karbohidrat</option>
										<option value="Lemak">Lemak</option>
										<option value="Vitamin">Vitamin</option>
										<option value="Mineral">Mineral</option>
									</select>
								</td>
								<td></td>
						</tr>
						</tbody>

						</table>
					</div>

					<input type="submit" value="Upload" class="btn btn-primary">
				</form>

				<h4 class="my-5">Data</h4>

				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th width="1%">File</th>
							<th>Nama</th>
							<th>Kandungan Gizi</th>
							<th width="1%">OPSI</th>
						</tr>
					</thead>
					<tbody>
						@foreach($gambar as $g)
						@php
							$kandungangizi = json_decode($g['kandungan_gizi'],true);
						@endphp
						<tr>
							<td><img width="150px" src="{{ url('/data_file/'.$g->file) }}"></td>
							<td>{{$g->keterangan}}</td>
							<td>
								@if(!empty($kandungangizi))
									@foreach($kandungangizi as $key => $value)
									<span>{{ $value['kategory']." : ".$value['nilai'] }}</span>
									</br>
									@endforeach
								@endif
							</td>

							<td><a class="btn btn-danger" href="/upload/hapus/{{ $g->id }}">HAPUS</a></td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var i=1;
			$('#add').click(function(){
					 i++;
					 $('#dynamic_field').append('<tr id="row'+i+'" class="dynamic-added">'+
						'<td><input type="text" name="kandungan_gizi['+i+'][nilai]" class="form-control" placeholder="Nilai Gizi"></td>'+
						'<td><select class="form-control" name="kandungan_gizi['+i+'][kategory]"><option value="Energi">Energi</option><option value="Protein">Protein</option><option value="Karbohidrat">Karbohidrat</option><option value="Lemak">Lemak</option><option value="Vitamin">Vitamin</option><option value="Mineral">Mineral</option></select></td>'+
						'</td>'+
						'<td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button>'+
						'</tr>');
			});

			$(document).on('click', '.btn_remove', function(){
					 var button_id = $(this).attr("id");
					 $('#row'+button_id+'').remove();
			});
		});
	</script>
</body>
</html>
