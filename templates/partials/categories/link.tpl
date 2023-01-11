<!-- IF ../isSection -->
    {../name}
<!-- ELSE -->
    <!-- IF ../link -->
        <a class="text-primary" href="{../link}" style="color: white !important;" itemprop="url">
    <!-- ELSE -->
        <a class="text-primary" href="{config.relative_path}/category/{../slug}" style="color: white !important;" itemprop="url">
    <!-- ENDIF ../link -->
    {../name}
    </a>
<!-- ENDIF ../isSection -->