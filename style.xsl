<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Champions League</title>
				<!-- Required meta tags -->
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				<link rel="stylesheet" href="style.css"/>
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
				integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
			</head>
			
			<body>
				<div class="jumbotron bg-cover text-white img-fluid mb-0">
					<div class="container py-5 text-center justify-content-center">
						<h1 class="display-4 font-weight-bold"><xsl:value-of select="competicion/@nombre"/></h1>
						<br />
						<p class="mt-4"><img src="img/logo.png" alt="logo" height="150"/></p>
						<div class="justify-content-center row">
							<div class="dropright justify-content-center">
								<button class="nav-link dropdown-toggle text-light btn btn-secondary bg-primary" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Seleccione una jornada
								</button>
								<div class="dropdown-menu bg-primary text-center justify-content-center pt-0 pb-0" aria-labelledby="navbarDropdown">
								<xsl:for-each select="competicion/jornada">
									<a href="#{@identificador}" role="button" class="dropdown-item active btn btn-primary px-5 bg-primary text-light"><xsl:value-of select="@identificador"/></a>
								</xsl:for-each>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-container text-white img-fluid pt-5 pb-5">
					<div class="container text-center">
					<xsl:for-each select="competicion/jornada">
						
						<div class="bg-caja mb-5">
							<div>
							<a name="{@identificador}"><h2 class="pt-5 pb-4"><xsl:value-of select="@identificador"/></h2></a>
							<img src="img/logo.png" alt="logo" height="80" class="mb-4"/>
							</div>
							<div class="table-responsive">
							<table class="table table-borderless text-white">
								<thead class="font-weight-bold">
									<tr>
										<th scope="col" class="align-middle">FECHA Y HORA</th>
										<th scope="col" class="align-middle"></th>
										<th scope="col" class="align-middle">LOCAL</th>
										<th scope="col" class="align-middle"></th>
										<th scope="col" class="align-middle">RESULTADO</th>
										<th scope="col" class="align-middle"></th>
										<th scope="col" class="align-middle">VISITANTE</th>
										<th scope="col" class="align-middle"></th>
										<th scope="col" class="align-middle">ESTADIO</th>
										<th scope="col" class="align-middle">ÁRBITRO</th>
									</tr>
								</thead>
								<tbody>
								
									<xsl:for-each select="partido">
									<tr>
										<td class="align-middle">
											<p><xsl:value-of select="@fecha"/></p>
											<p><xsl:value-of select="@hora"/></p>
										</td>
										<td class="align-middle text-right"><img src="{local/@escudo}" alt="{local/@escudo}" width="40px"/></td>
										<td class="align-middle"><xsl:value-of select="local"/></td>
										<td class="align-middle text-right"><xsl:value-of select="goleslocal"/></td>
										<td class="align-middle">-</td>
										<td class="align-middle text-left"><xsl:value-of select="golesvisitante"/></td>
										<td class="align-middle"><xsl:value-of select="visitante"/></td>
										<td class="align-middle text-left"><img src="{visitante/@escudo}" alt="{visitante}" width="40px"/></td>
										<td class="align-middle"><xsl:value-of select="estadio"/></td>
										<td class="align-middle"><xsl:value-of select="@arbitro"/></td>
									
									</tr>
									</xsl:for-each>
								</tbody>
							</table>
							</div>
							<a href="champions.xml"><img src="img/balon.png" alt="balon" width="60px" class="mb-3" href="champions.xml"/></a>
						</div>
						
					</xsl:for-each>
					</div>
				</div>
				<footer class="text-center text-white">
					<div class="container p-5">
						<a href="champions.xml"><img src="img/trofeo.png" alt="trofeo" width="100px"/></a>
					</div>
					<div class="pb-5">
						<p class="p-2">Pincha en su logo para ir a la página oficial de la UEFA Champions league:</p>
						<a href="https://es.uefa.com/uefachampionsleague/"><img src="img/logo.png" alt="logo" width="120px"/></a>
					</div>
					<!-- Copyright -->
					<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
						© 2022 Copyright: Francisco Jiménez López
					</div>
					<!-- Copyright -->
				</footer>
				
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
												integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
												crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
												integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
												crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
												integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
												crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>