{include file="minheader.tpl"}
{if $message}
<div class="success" align="center">
	<br />{$message}<br /><br />
	<input type="button" class="inputsubmit" value="{$LANG.BACK}" onclick="parent.location.href='conf_didroute.php'" />
	<br /><br />
</div>
{else}

{if $error}<div class="error" align="center">{$error}</div>{/if}

<form action="{$smarty.server.SCRIPT_NAME}" method="post">
<div class="miniTableForm">
	<p><label for="route">{$LANG.DIDROUTE_ROUTECODE}{required}:</label> <input type="text" name="route" id="route" value="{$fvalues.route}" style="width: 10em" /></p>
	<p><label for="alias">{$LANG.MODEM_ALIAS}{required}:</label> <input type="text" name="alias" id="alias" value="{$fvalues.alias}" /></p>
	<p><label for="contact">{$LANG.MODEM_CONTACT}:</label> <input type="text" name="contact" id="contact" value="{$fvalues.contact}" /></p>
	<p><label for="printer">{$LANG.ADMIN_PRINTER}:</label> <input type="text" name="printer" id="printer" value="{$fvalues.printer}" /></p>
    <p><label for="category">{$LANG.CATEGORY}:</label> {html_options name="faxcatid" id="category" options=$categories selected=$fvalues.faxcatid}</p>
</div>

<br />

<div align="center">
{if $create}
	<input type="submit" class="inputsubmit" name="create" value="{$LANG.CREATE}" />
{else}
	<input type="hidden" name="didr_id" value="{$fvalues.didr_id}" />
	<input type="submit" class="inputsubmit" name="save" value="{$LANG.SAVE}" />&nbsp;
	<input type="submit" class="inputsubmit inputcancel" name="delete" value="{$LANG.DELETE}" />&nbsp;
	<input type="button" class="inputsubmit inputcancel" value="{$LANG.CANCEL}" onclick="location.href='{$smarty.server.SCRIPT_NAME}'" />
{/if}
</div>
<input type="hidden" name="_submit_check" value="1" />
</form>
<script type="text/javascript" language="javascript">
// <![CDATA[
	$('route').focus ();
// ]]>
</script>
{/if}
</body>
</html>