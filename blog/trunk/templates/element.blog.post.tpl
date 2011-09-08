<div class="blog">
    <h1>{$oBlog->get_title()}</h1>
    <div class="metadata">
        {t}Written by{/t} <a href="#" class="author">{$oBlog->get_parent_user()->get_firstname()} {$oBlog->get_parent_user()->get_surname()}</a>, <time datetime="{date(DateTime::ATOM,$oBlog->get_date_published())}" title="{date('l jS \of F Y h:i:s A',$oBlog->get_date_published())}">{MagicUtils::fuzzyTime($oBlog->get_date_published())}</time>
    </div>
    <div class="text_area">
        {$oBlog->get_content()}
    </div>
</div>
