<% require javascript(framework/javascript/jquery-ondemand/jquery.ondemand.js) %>
<% require javascript(microblog/javascript/timeline-commenter.js) %>
<% require css(microblog/css/commenter.css) %>

<input id="DashboardID" value="$Dashboard.ID" type="hidden" />
<input id="DashboardUrl" value="$Link" type="hidden"/>

$Dashboard

<div class="actions-panel">
	<div id="header-buttons" class="actions-items clearfix">
		<a href="$Link(adddashlet)" title="Add a dashlet" class="as-dialog">
			<span class="lnr lnr-layers"></span>
		</a>
        
<a href="{$BaseHref}timeline<% if $Targeted %>?target=$ClassName,$ID<% end_if %>" class="comment-list-trigger" 
   <% if $Targeted %>data-target='$ClassName,$ID'<% end_if %> title="Show timeline comments" data-tooltip aria-haspopup="true">
	<span class="lnr lnr-bubble"></span>
	<span class="comment-count comment-count-0"></span>
	<span class="visually-hidden">Comments</span>
</a>
	</div>
</div>
