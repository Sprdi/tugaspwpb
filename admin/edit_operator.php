
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Login - SB Admin</title>
	<link href="../css/styles.css" rel="stylesheet" />
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<style>
		.file-upload {
			background-color: #ffffff;
			width: 500px;
			margin: 0 auto;
			padding: 20px;
		}



		.file-upload-btn:hover {
			background: white;
			color: #ffffff;
			transition: all .2s ease;
			cursor: pointer;
		}

		.file-upload-btn:active {
			border: 0;
			transition: all .2s ease;
		}

		.file-upload-content {
			display: none;
			text-align: center;
		}

		.file-upload-input {
			position: absolute;
			margin: 0;
			padding: 0;
			width: 100%;
			height: 100%;
			outline: none;
			opacity: 0;
			cursor: pointer;
		}

		.image-upload-wrap {
			margin-top: 20px;
			border: 4px dashed #0d6efd;
			position: relative;
		}

		.image-dropping,
		.image-upload-wrap:hover {
			background-color: #0d6efd;
			border: 4px dashed #ffffff;
		}

		.image-title-wrap {
			padding: 0 15px 15px 15px;
			color: #222;
		}

		.drag-text {
			text-align: center;
		}

		.drag-text h3 {
			font-weight: 100;
			text-transform: uppercase;
			color: #0044aa;
			padding: 60px 0;
		}

		.drag-text h3:hover {
			color: #fff;
		}

		.file-upload-image {
			max-height: 200px;
			max-width: 200px;
			margin: auto;
			padding: 20px;
		}

		.remove-image {
			width: 200px;
			margin: 0;
			color: #fff;
			background: #cd4535;
			border: none;
			padding: 10px;
			border-radius: 4px;
			border-bottom: 4px solid #b02818;
			transition: all .2s ease;
			outline: none;
			text-transform: uppercase;
			font-weight: 700;
		}

		.remove-image:hover {
			background: #c13b2a;
			color: #ffffff;
			transition: all .2s ease;
			cursor: pointer;
		}

		.remove-image:active {
			border: 0;
			transition: all .2s ease;
		}
	</style>
</head>

<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">EDIT BUKU</h3>
								</div>
								<div class="card-body">
									<?php
									include 'koneksi.php';
									$id = $_GET['id_operator'];
									$data = mysqli_query($koneksi, "select * from data_operator where id_operator='$id'");
									$nomor = 1;
									while ($d = mysqli_fetch_array($data)) {
										?>
										<form method="POST" action="update_operator.php" enctype="multipart/form-data">
											<div class="form-floating mb-3 ">
												<input type="hidden" name="id_operator" value="<?php echo $d['id_operator']; ?>">
												<input type="text" name="nama"  placeholder="Nama" value="<?php echo $d['nama']; ?>"
												class="form-control" id="nama" >
												<label for="nama">Nama</label>
											</div>

											<div class="row">
												<div class="form-floating mb-3 col">
													<input type="text" name="username"  placeholder="Username" value="<?php echo $d['username']; ?>" class="form-control" id="username">
													<label for="username" style="margin-left:12px">Username</label>
												</div>

												<div class="form-floating mb-3 col">
													<input type="text" name="password" id="password"  placeholder="Password" value="<?php echo $d['password']; ?>" class="form-control" id="password">
													<label for="password" style="margin-left:12px">Password</label>
												</div>
											</div>

											<script class="jsbin"
												src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
											<div class="file-upload" name="foto">
												<!-- <button class="file-upload-btn" type="button"
													onclick="$('.file-upload-input').trigger( 'click' )">Add
													Image</button> -->

												<div class="image-upload-wrap">
													<input class="file-upload-input" type='file' onchange="readURL(this);"
														accept="foto_operator/" name="foto" />
													<div class="drag-text">
														<h3>Drag and drop a file or select add Image</h3>
													</div>
												</div>
												<div class="file-upload-content">
													<img class="file-upload-image" src="foto_operator" alt="your image" />
													<div class="image-title-wrap">
														<button type="button" onclick="removeUpload()"
															class="remove-image">Remove <span class="image-title">Uploaded
																Image</span></button>
													</div>
												</div>
											</div>
											<script>
												function readURL(input) {
													if (input.files && input.files[0]) {

														var reader = new FileReader();

														reader.onload = function (e) {
															$('.image-upload-wrap').hide();

															$('.file-upload-image').attr('src', e.target.result);
															$('.file-upload-content').show();

															$('.image-title').html(input.files[0].name);
														};

														reader.readAsDataURL(input.files[0]);

													} else {
														removeUpload();
													}
												}

												function removeUpload() {
													$('.file-upload-input').replaceWith($('.file-upload-input').clone());
													$('.file-upload-content').hide();
													$('.image-upload-wrap').show();
												}
												$('.image-upload-wrap').bind('dragover', function () {
													$('.image-upload-wrap').addClass('image-dropping');
												});
											</script>
											<div class="d-flex align-items-right justify-content-between mt-2 mb-0">
												<input type="submit" value="SIMPAN" class="btn btn-primary">
												<a href="index.php" class="btn btn-danger">Kembali</a>
											</div>
										</form>
										<?php
									}
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-5">
				<div class="container-fluid px-4">
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Arka 2023</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="../js/scripts.js"></script>
</body>

</html>