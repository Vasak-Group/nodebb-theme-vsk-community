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

            <a href="#" class="scroll-top btn-hover" style="display: block;">
                <i class="fa fa-chevron-up"></i>
            </a>

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
            </body>

</html>