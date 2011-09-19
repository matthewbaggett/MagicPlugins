{include file="elements.editdata.top.tpl"}
	<table class="editdata {strtolower(str_replace(" ","_",$page->object_name))}">
		{foreach from=$page->columns item=column}
			<tr class="formrow {$column}">
				<td><label for="object_{$column}">{$column}</label></td>
				<td><input name="object_{$column}" id="object_{$column}" type="text" value="{$page->object->get_named_column($column)}"/></td>
			</tr>
		{/foreach}
		<tr>
			<td colspan="2">
				<input name="save" class="button small green" type="submit" value="{t nodfn=true}Save{/t}" />
				<input name="cancel" class="button small red" type="submit" value="{t nodfn=true}Cancel{/t}" />
			</td>
		</tr>
	</table>
{include file="elements.editdata.bottom.tpl"}
			