<aside class="main-sidebar">

	 <section class="sidebar">

		<ul class="sidebar-menu">

		<?php

		if($_SESSION["perfil"] == "Administrador"){

			echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			<li>

				<a href="usuarios">

					<i class="fa fa-user"></i>
					<span>Gestión Usuarios</span>

				</a>

			</li>';

		}
		//para colaborador
		if($_SESSION["perfil"] == "Colaborador"){

			echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>';

		}
/////////////////////////GESTION PUBLICACION/////////////////////////////////////////////////


		if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="publicacion">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Publicación</span>

				</a>

			</li>


		';

		}
		//solo para colaborador
		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="publicacioncolaborador">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Publicación</span>

				</a>

			</li>


		';

		}
/////////////////////////GESTION PROYECTOS/////////////////////////////////////////////////


		if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="proyecto">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Proyectos</span>

				</a>

			</li>


		';

		}
		////////////para el colaborador

		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="proyectocolaborador">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Proyectos</span>

				</a>

			</li>


		';

		}
/////////////////////////Menu para docente//////////////////////////////////////////
		if($_SESSION["perfil"] == "Docente"){

			echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			<li>

				<a href="publicaciondocente">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Publicacíon</span>

				</a>

			</li>
			<li>

				<a href="proyectodocente">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Proyectos</span>

				</a>

			</li>';

		}
		
/////////////////////////GESTION EVALUADOR/////////////////////////////////////////////////
 if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="evaluadores">

					<i class="fa fa-id-card-o"></i>
					<span>Gestión Evaluador</span>

				</a>

			</li>


		';

		}
		///para el colaborador
		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="evaluadorescolaborador">

					<i class="fa fa-handshake-o"></i>
					<span>Gestión Evaluador</span>

				</a>

			</li>


		';

		}
		

/////////////////////////GESTION ALIANZAS/////////////////////////////////////////////////


		if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="alianza">

					<i class="fa fa-handshake-o"></i>
					<span>Gestión Alianzas</span>

				</a>

			</li>


		';

		}
		///para el colaborador
		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="alianzacolaborador">

					<i class="fa fa-handshake-o"></i>
					<span>Gestión Alianzas</span>

				</a>

			</li>


		';

		}
/////////////////////////GESTION GALERIA/////////////////////////////////////////////////
		/*
		if($_SESSION["perfil"] == "Administrador"){

			echo '<li class="treeview">

				<a href="#">

					<i class="fa fa-picture-o"></i>
					
					<span>Gestión Galería</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					<li>

						<a href="ventas">
							
							<i class="fa fa-circle-o"></i>
							<span>Administrar Galería</span>

						</a>

					</li>

					<li>

						<a href="crear-venta">
							
							<i class="fa fa-circle-o"></i>
							<span>Crear Noticia</span>

						</a>

					</li>';

				echo '</ul>

			</li>';

		}
		*/
	/////////////////////////////////////////////////////////////////////////////
/////////////////////////GESTION EVENTOS /////////////////////////////////////////////////

		if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="eventos">

					<i class="fa fa-calendar-check-o"></i>
					<span>Gestión Eventos</span>

				</a>

			</li>


		';

		}
		//para el colaborador
		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="eventoscolaborador">

					<i class="fa fa-calendar-check-o"></i>
					<span>Gestión Eventos</span>

				</a>

			</li>


		';

		}
/////////////////////////GESTION NOTICIA /////////////////////////////////////////////////

		if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="noticia">

					<i class="fa fa-newspaper-o"></i>
					<span>Gestión Noticias</span>

				</a>

			</li>


		';

		}
		///para el colaborador

		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="noticiacolaborador">

					<i class="fa fa-newspaper-o"></i>
					<span>Gestión Noticias</span>

				</a>

			</li>


		';

		}
/////////////////////////GESTION GALERÍA /////////////////////////////////////////////////

		if($_SESSION["perfil"] == "Administrador"){

			echo '
			<li>

				<a href="galeria">

					<i class="fa fa-newspaper-o"></i>
					<span>Gestión Galería</span>

				</a>

			</li>


		';

		}
		//para el colaborador
		if($_SESSION["perfil"] == "Colaborador"){

			echo '
			<li>

				<a href="galeriacolaborador">

					<i class="fa fa-newspaper-o"></i>
					<span>Gestión Galería</span>

				</a>

			</li>


		';

		}

/////////////////////////CONFIGURACION/////////////////////////////////////////////////

		if($_SESSION["perfil"] == "Administrador"){

			echo '<li class="treeview">

				<a href="#">

					<i class="fa fa-cogs"></i>
					
					<span>Administrar Contenido</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					';
					//-----------------CONTACTANOS------------------------------
					if($_SESSION["perfil"] == "Administrador"){

					echo '<li>

						<a href="contactenos">
							
							<i class="fa fa-circle-o"></i>
							<span>Contactanos</span>

						</a>

					</li>';

					}
					
					//-------------------------------------------------

					//-----------------CONTACTANOS------------------------------
					if($_SESSION["perfil"] == "Administrador"){

					echo '<li>

						<a href="banner">
							
							<i class="fa fa-circle-o"></i>
							<span>Banner</span>

						</a>

					</li>';

					}
					
					//-------------------------------------------------

				echo '</ul>

			</li>';

		}





		?>

		</ul>

	 </section>

</aside>