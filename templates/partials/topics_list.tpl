<ul component="category" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
    <meta itemprop="itemListOrder" content="descending">
    <!-- BEGIN topics -->
    <li component="category/topic" class="row clearfix {function.generateTopicClass}"
    <!-- IMPORT partials/data/category.tpl -->>
    <meta itemprop="name" content="{function.stripTags, title}">

    <div class="col-md-7 col-sm-9 col-xs-11 content">
        <div class="avatar hidden-sm hidden-xs pull-left">
            <!-- IF showSelect -->
            <div class="select fa-square-o">
                <img src="{topics.user.picture}" class="img-circle user-img"/>
                <i class="fa fa-check"></i>
            </div>
            <!-- ELSE -->
            <a href="{config.relative_path}/user/{topics.user.userslug}" class="pull-left">
                <img src="{topics.user.picture}" class="img-circle user-img" title="{topics.user.username}"/>
            </a>
            <!-- ENDIF showSelect -->
        </div>

        <h1 component="topic/header" class="title pull-left">
            <i component="topic/pinned"
               class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"></i>
            <i component="topic/locked"
               class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"></i>
            <a href="{config.relative_path}/topic/{topics.slug}" itemprop="url">{topics.title}</a><br/>

            <!-- IF !template.category -->
            <small>
                <a href="{config.relative_path}/category/{topics.category.slug}"><span class="fa-stack fa-lg"><i
                        style="color:{topics.category.bgColor};" class="fa fa-circle fa-stack-2x"></i><i
                        style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i></span>
                    {topics.category.name}</a> &bull;
            </small>
            <!-- ENDIF !template.category -->

            <small class="hidden-xs"><span class="timeago" title="{topics.timestampISO}"></span> &bull; <a
                    href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">{topics.user.username}</a>
            </small>
            <small class="visible-xs-inline">
                <!-- IF topics.teaser.timestamp -->
                <span class="timeago" title="{topics.teaser.timestampISO}"></span>
                <!-- ELSE -->
                <span class="timeago" title="{topics.timestampISO}"></span>
                <!-- ENDIF topics.teaser.timestamp -->
            </small>
        </h1>
    </div>

    <div class="col-md-1 hidden-sm hidden-xs stats">
        <span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br/>
        <small>[[global:posts]]</small>
    </div>
    <div class="col-md-1 hidden-sm hidden-xs stats">
        <span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br/>
        <small>[[global:views]]</small>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-1 teaser">
        <div class="card" style="border-color: {bgColor}">
            <!-- IF topics.unreplied -->
            <p class="hidden-xs">
                [[category:no_replies]]
            </p>
            <!-- ELSE -->
            <p class="hidden-xs">
                <strong>{topics.teaser.user.username}</strong>
                <a class="permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
                    <small class="timeago" title="{topics.teaser.timestamp}"></small>
                </a>
            </p>
            <div class="post-content">
                {topics.teaser.content}
            </div>
            <!-- ENDIF topics.unreplied -->
        </div>
    </div>
    </li>
    <!-- END topics -->
</ul>
