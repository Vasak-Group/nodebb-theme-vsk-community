            </div><!-- /.container#content -->
            </main>

            <footer id="footer">
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 footer-contact">
                                <h3 class="v-font"><span>Vasak</span> Community</h3>
                                <p>
                                    Vasak Community es la comunidad de todos los usuarios y miembros de Vasak (Cada uno
                                    de sus proyectos) Donde buscamos unirnos para mejorar en conjunto y tener un espacio
                                    de dispersión.
                                </p>
                            </div>
                            <div class="col-lg-4 col-md-6 footer-links text-center">
                                <h4>Nuestros Servicios Gratuitos</h4>
                                <ul>
                                    <li>
                                        <em class="fa fa-chevron-right"></em> <a target="_black"
                                            href="https://qrgenerator.vasak.net.ar/">QR Generator</a>
                                    </li>
                                    <li>
                                        <em class="fa fa-chevron-right"></em> <a target="_black"
                                            href="https://play.google.com/store/apps/details?id=com.lynxqrcam">Lynx
                                            QRCam</a>
                                    </li>
                                    <li>
                                        <em class="fa fa-chevron-right"></em> <a target="_black"
                                            href="https://wppgenerator.vasak.net.ar/">WhatsApp Generator</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-12 footer-links text-center">
                                <h4>Nuestras Redes</h4>
                                <p>No te pierdas todas nuestras novedades</p>
                                <div class="social-links mt-3">
                                    <a target="_black" title="facebook" href="https://web.facebook.com/vasakgroup">
                                        <em class="fa fa-facebook-square"></em>
                                    </a>
                                    <a target="_black" title="mail" href="mailto:info@vasak.net.ar">
                                        <em class="fa fa-envelope"></em>
                                    </a>
                                    <a target="_black" title="linkedin"
                                        href="https://www.linkedin.com/company/vasakgroup/">
                                        <em class="fa fa-linkedin"></em>
                                    </a>
                                    <a target="_black" title="instagram" href="https://www.instagram.com/vasakgroup/">
                                        <em class="fa fa-instagram"></em>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container py-4">
                    <div class="copyright">
                        © <span class="v-font">Vasak group</span>. Todos los dertechos reservados.
                    </div>
                    <div class="credits">
                        <span class="v-font">Vasak</span>
                    </div>
                </div>
            </footer>

            {{{ if !isSpider }}}
            <div component="toaster/tray" class="alert-window">
                <div id="reconnect-alert" class="alert alert-dismissible alert-warning clearfix hide"
                    component="toaster/toast">
                    <button type="button" class="btn-close float-end" data-bs-dismiss="alert"
                        aria-hidden="true"></button>
                    <p>[[global:reconnecting-message, {config.siteTitle}]]</p>
                </div>
            </div>
            {{{ end }}}

            <!-- IMPORT partials/footer/js.tpl -->

            <script src="https://cdn.jsdelivr.net/npm/@srexi/purecounterjs/dist/purecounter_vanilla.js"></script>
            <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous">
            </script>
            <script src="https://cdn.jsdelivr.net/gh/mcstudios/glightbox/dist/js/glightbox.min.js"></script>
            <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
            <script src="/js/noframework.waypoints.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
            <script>
                (function() {
                    /**
                     * Easy selector helper function
                     */
                    const select = (el, all = false) => {
                        el = el.trim()
                        if (all) {
                            return [...document.querySelectorAll(el)]
                        } else {
                            return document.querySelector(el)
                        }
                    }

                    /**
                     * Easy event listener function
                     */
                    const on = (type, el, listener, all = false) => {
                        let selectEl = select(el, all)
                        if (selectEl) {
                            if (all) {
                                selectEl.forEach(e => e.addEventListener(type, listener))
                            } else {
                                selectEl.addEventListener(type, listener)
                            }
                        }
                    }

                    /**
                     * Easy on scroll event listener 
                     */
                    const onscroll = (el, listener) => {
                        el.addEventListener('scroll', listener)
                    }

                    /**
                     * Header fixed top on scroll
                     */
                    let selectHeader = select('#header');
                    if (selectHeader) {
                        let headerOffset = selectHeader.offsetTop;
                        let nextElement = selectHeader.nextElementSibling;
                        const headerFixed = () => {
                            if ((headerOffset - window.scrollY) <= 0) {
                                selectHeader.classList.add('fixed-top');
                                nextElement.classList.add('scrolled-offset');
                            } else {
                                selectHeader.classList.remove('fixed-top');
                                nextElement.classList.remove('scrolled-offset');
                            }
                        };
                        window.addEventListener('load', headerFixed);
                        onscroll(document, headerFixed);
                    }

                    /**
                     * Back to top button
                     */
                    let backtotop = select('.back-to-top');
                    if (backtotop) {
                        const toggleBacktotop = () => {
                            if (window.scrollY > 100) {
                                backtotop.classList.add('active');
                            } else {
                                backtotop.classList.remove('active');
                            }
                        };
                        window.addEventListener('load', toggleBacktotop);
                        onscroll(document, toggleBacktotop);
                    }

                    /**
                     * Mobile nav toggle
                     */
                    on('click', '.mobile-nav-toggle', function(e) {
                        select('#navbar').classList.toggle('navbar-mobile');
                        this.classList.toggle('bi-list');
                        this.classList.toggle('bi-x');
                    });

                    /**
                     * Mobile nav dropdowns activate
                     */
                    on('click', '.navbar .dropdown > a', function(e) {
                        if (select('#navbar').classList.contains('navbar-mobile')) {
                            e.preventDefault();
                            this.nextElementSibling.classList.toggle('dropdown-active');
                        }
                    }, true);

                    /**
                     * Scroll with ofset on page load with hash links in the url
                     */
                    window.addEventListener('load', () => {
                        if (window.location.hash) {
                            if (select(window.location.hash)) {
                                scrollto(window.location.hash);
                            }
                        }
                    });

                    /**
                     * Preloader
                     */
                    let preloader = select('#preloader');
                    if (preloader) {
                        window.addEventListener('load', () => {
                            preloader.remove();
                        });
                    }
                })()
            </script>
            </body>

</html>