{$current_dir = $smarty.current_dir}
{foreach from=$page->arr_blog_posts item=oBlog}
{include file="$current_dir/element.blog.post.tpl"}
{/foreach}