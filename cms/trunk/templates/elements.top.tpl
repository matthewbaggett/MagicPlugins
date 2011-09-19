<!DOCTYPE html>
<html lang="en">
<head>
	{include file="elements.head.tpl"}
</head>
{$classes = array()}
{$classes[] = strtolower(Inflect::singularize($page->controller))}
{$classes[] = strtolower(Inflect::singularize($page->method))}
{$classes[] = strtolower(str_replace("/","_",trim($page->server['REQUEST_URI'],"/")))}
{$classes[] = strtolower(str_replace(".","_",$page->template))}
<body class="{implode(" ",$classes)}">
