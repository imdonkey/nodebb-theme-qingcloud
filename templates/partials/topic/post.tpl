<div class="clearfix">
    <div class="icon pull-left">
        <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
            <img src="{posts.user.picture}" align="left" itemprop="image"/>
            <!-- IF posts.user.banned -->
            <span class="label label-danger">[[user:banned]]</span>
            <!-- ENDIF posts.user.banned -->
        </a>
    </div>

    <small class="pull-left">
        <i component="user/status" class="fa fa-circle status {posts.user.status}"
           title="[[global:{posts.user.status}]]"></i>
        <strong>
            <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"
               itemprop="author" data-username="{posts.user.username}"
               data-uid="{posts.user.uid}">{posts.user.username}</a>
        </strong>

        <!-- IMPORT partials/topic/badge.tpl -->

        <div class="visible-xs-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
            <a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago"
                                                                                      title="{posts.timestampISO}"></span></a>
            <span class="post-tools">
          <a component="post/reply" href="#"
             class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
                <a component="post/quote" href="#"
                   class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
                    </span>
        </div>
    </small>
</div>

<br/>
<div class="content" component="post/content" itemprop="text">
    {posts.content}
</div>


<div class="clearfix post-footer">
    <!-- IF posts.user.signature -->
    <div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
    <!-- ENDIF posts.user.signature -->

    <!-- IF !reputation:disabled -->
    <span class="votes">
        <a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
            <i class="fa fa-chevron-up"></i>
        </a>

    <span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

        <!-- IF !downvote:disabled -->
    <a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
    <i class="fa fa-chevron-down"></i>
    </a>
        <!-- ENDIF !downvote:disabled -->
    </span>
    <!-- ENDIF !reputation:disabled -->
    <!-- IMPORT partials/topic/post-menu.tpl -->
    </small>
</div>


<hr/>
