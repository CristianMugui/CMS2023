<nav class="nav cambioNav">
        <div class="nav__contenedor contenedor">
            <?php $fila = getDataHeader(); ?>
            <a href="#" class="nav__contenedor--logo">
                <?php echo $fila['hea_logo']; ?>
            </a>
            <ul class="nav__contenedor__menu">
                <li class="nav__contenedor__menu__item">
                    <a href="#services" class="nav__contenedor__menu__item--link">servicios</a>
                </li>
                <li class="nav__contenedor__menu__item">
                    <a href="#portfolio" class="nav__contenedor__menu__item--link">portafolio</a>
                </li>
                <li class="nav__contenedor__menu__item">
                    <a href="#about" class="nav__contenedor__menu__item--link">about</a>
                </li>
                <li class="nav__contenedor__menu__item">
                    <a href="#team" class="nav__contenedor__menu__item--link">equipo</a>
                </li>
                <li class="nav__contenedor__menu__item">
                    <a href="#contact" class="nav__contenedor__menu__item--link">                        
                        contacto
                    </a>
                </li>
            </ul>
            <div class="nav__contenedor--btn">
                menu <i class="fa-solid fa-bars"></i>
            </div>
        </div>        
    </nav>
    <?php getDataHeader(); ?>