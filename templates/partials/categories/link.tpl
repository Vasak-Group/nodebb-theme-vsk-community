<!-- IF ../isSection -->
    {../name}
<!-- ELSE -->
    <!-- IF ../link -->
        <a class="text-primary" href="{../link}" itemprop="url">
    <!-- ELSE -->
        <a class="text-primary" href="{config.relative_path}/category/{../slug}" itemprop="url">
    <!-- ENDIF ../link -->
    {../name}
    </a>
<!-- ENDIF ../isSection -->