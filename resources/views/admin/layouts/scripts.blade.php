<script>
    const myTableStyle = {
        style: {
            table: {
                border: "1px solid #ccc",
                "background-color": "#202938",
                "border-collapse": "collapse",
            },
            th: {
                "background-color": "#202938",
                color: "#f5f5f5",
                "border-bottom": "1px solid #ccc",
                "text-align": "center",
            },
            td: {
                "text-align": "center",
                "background-color": "#202938",
                color: "#f5f5f5",
            },
            pagination: {
                "background-color": "#202938",
                color: "#f5f5f5",
            },
        },
    };
</script>


<script src="{{ mix('js/app.js') }}"></script>

<script src="{{ asset('assets/js/jquery-3.5.1.min.js') }}"></script>

<!-- feather icon js-->
<script src="{{ asset('assets/js/icons/feather-icon/feather.min.js') }}"></script>
<script src="{{ asset('assets/js/icons/feather-icon/feather-icon.js') }}"></script>
<!-- Sidebar jquery-->
<script src="{{ asset('assets/js/sidebar-menu.js') }}"></script>
<script src="{{ asset('assets/js/config.js') }}"></script>
<!-- Bootstrap js-->
<script src="{{ asset('assets/js/bootstrap/popper.min.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap/bootstrap.min.js') }}"></script>
<!-- Plugins JS start-->
<!-- Plugins JS Ends-->
<!-- Theme js-->
<script src="{{ asset('assets/js/script.js') }}"></script>
{{-- <script src="{{ asset('assets/js/theme-customizer/customizer.js') }}"></script> --}}
<!-- login js-->

<script src="{{ mix('js/components.js') }}"></script>

{{-- <script src="{{ asset('build/assets/components.b02a69f9.js') }}"></script> --}}

@yield('scripts')
