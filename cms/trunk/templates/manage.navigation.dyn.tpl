{nocache}
{foreach from=$page->navigation item=nav}
	<li class="{if $page->server['REQUEST_URI'] eq $nav['Path']} active {/if} weight_{$nav['Weight']}">
		<a href="{$nav['Path']}">{$nav['Name']}</a>
		{if isset($nav['Children'])}
			<ul>
				{foreach from=$nav['Children'] key=name item=subnav}
					<li class="{if $page->server['REQUEST_URI'] eq $subnav['Path']} active {/if} weight_{$subnav['Weight']}">
						<a href="{$subnav['Path']}">{$name}</a>
					</li>
				{/foreach}
			</ul>
		{/if}
	</li>
{/foreach}
{/nocache}