<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1"
    class="row clearfix category-{../cid}">
    <meta itemprop="name" content="{../name}">

    <div class="card row-hover pos-relative py-3 px-3 mb-3" style="border-color: {../bgColor}">
        <div class="row align-items-center">
            <div class="col-md-4 mb-3 mb-sm-0">
                <div class="float-start">
                    {buildCategoryIcon(@value, "48px")}
                </div>
                <h5>
                    <!-- IMPORT partials/categories/link.tpl -->
                </h5>

                <!-- IF ../descriptionParsed -->
                <p class="text-sm">{../descriptionParsed}</p>
                <!-- ENDIF ../descriptionParsed -->
                <span class="d-block d-sm-none float-end">
                    <!-- IF ../teaser.timestampISO -->
                    <a class="permalink" href="{../teaser.url}">
                        <small class="timeago" title="{../teaser.timestampISO}"></small>
                    </a>
                    <!-- ENDIF ../teaser.timestampISO -->
                </span>

                <!-- IF !config.hideSubCategories -->
                {{{ if ../children.length }}}
                <div class="text-sm op-5">
                    {{{ each ../children }}}
                    {{{ if !../isSection }}}
                    <a class="text-black mr-2" {{{ if ../link }}}href="{../link}"
                        {{{ else }}}href="{config.relative_path}/category/{../slug}" {{{ end }}}>
                        {buildCategoryIcon(@value, "18px", "rounded-circle")} {../name}
                    </a>
                    {{{ end }}}
                    {{{ end }}}
                </div>
                {{{ end }}}
                <!-- ENDIF !config.hideSubCategories -->

            </div>
            <!-- IF !../link -->
            <div class="col-md-8 op-7">
                <div class="row text-center op-7">
                    <div class="col px-1">
                        <i class="ion-connection-bars icon-1x"></i>
                        <span class="{../unread-class} d-block text-sm" title="{../totalTopicCount}">
                            [[global:topics]] {../totalTopicCount}
                        </span>
                    </div>
                    <div class="col px-1">
                        <i class="ion-ios-chatboxes-outline icon-1x"></i>
                        <span class="{../unread-class} d-block text-sm" title="{../totalPostCount}">
                            [[global:posts]] {../totalPostCount}
                        </span>
                    </div>
                    <div class="col-8 px-1" component="topic/teaser">
                        <!-- IMPORT partials/categories/lastpost.tpl -->
                    </div>
                </div>
            </div>
            <!-- ENDIF !../link -->
        </div>
    </div>

</li>