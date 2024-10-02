<footer class="footer bg-theme-light/50">
    <!-- Footer Start-->
    <div class="footer-area fix pt-50 background11">
        <div class="container">
            <div class="row gx-5 pb-10 pt-[52px]">
                <div class="col-12 mt-12 md:col-6 lg:col-3">
                    {!! dynamic_sidebar('footer_sidebar_1') !!}
                </div>

                <div class="col-12 mt-12 md:col-6 lg:col-3">
                    {!! dynamic_sidebar('footer_sidebar_2') !!}
                </div>

                <div class="col-12 mt-12 md:col-6 lg:col-3">
                    {!! dynamic_sidebar('footer_sidebar_3') !!}
                </div>

                <div class="col-12 mt-12 md:col-6 lg:col-3">
                    {!! dynamic_sidebar('footer_sidebar_4') !!}
                </div>
            </div>
        </div>
    </div>

    <!-- footer-bottom aera -->
    <div class="footer-bottom-area background11">
        <div class="container">
            <div class="footer-border pt-30 pb-30">
                <div class="row d-flex align-items-center justify-content-between">
                    <div class="col-lg-6">
                        <div class="footer-copy-right">
                            <p class="font-medium">
                                {!! clean(theme_option('copyright')) !!} {!! clean(theme_option('designed_by')) !!}
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer-menu float-lg-right mt-lg-0 mt-3">
                            {!! dynamic_sidebar('footer_copyright_menu') !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>

<!-- End Footer -->
<div class="dark-mark"></div>
<!-- Vendor JS-->
{!! Theme::footer() !!}

<script>
    "use strict";
    function setCookie(cname, cvalue, exdays) {
        const d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        let expires = "expires="+ d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    setCookie('account_logged', {{ auth('member')->check() ? 1 : 0 }});
</script>
</body>

</html>
