{include file="elements.editdata.top.tpl"}
	<table class="editdata {strtolower(str_replace(" ","_",$page->object_name))}">
		{foreach from=$page->columns item=column}
			{if $column == "user_id"}
				<tr class="tableformrow {$column}">
					<td class="label"><label for="object_{$column}">{$column}</label></td>
					<td class="input">{select name="object_{$column}" object="User" value="id" display="username" selected=$page->object->get_named_column($column)}{/select}</td>
				</tr>
			{elseif $column == 'parent_id'}
				{if $page->object->get_named_column($column) > 0}
					{$selected_id = $page->object->get_named_column($column)}
				{else}
					{$selected_id = -1}
				{/if}
				<tr class="tableformrow {$column}">
					<td class="label"><label for="object_{$column}">{$column}</label></td>
					<td class="input">{select name="object_{$column}" object="Page" value="id" display="title" selected=$selected_id}{/select}</td>
				</tr>
			{else}
				<tr class="tableformrow {$column}">
					<td class="label"><label for="object_{$column}">{$column}</label></td>
					<td class="input"><input name="object_{$column}" id="object_{$column}" type="text" value="{$page->object->get_named_column($column)}"/></td>
				</tr>
			{/if}
		{/foreach}
		<tr>
			<td colspan="2">
				<input name="save" class="button small green" type="submit" value="{t nodfn=true}Save{/t}" />
				<input name="cancel" class="button small red" type="submit" value="{t nodfn=true}Cancel{/t}" />
			</td>
		</tr>
	</table>
{include file="elements.editdata.bottom.tpl"}
			