<% if $isTemplated %>
$TemplatedContent 
<% else %>
<section class="element $ClassName<% if $ExtraClass %> $ExtraClass<% end_if %> $FirstLast" id="e{$ID}">
    <div class="container">
        <% if $ClassName == 'ElementContent' %>
        <div class='row container'>
            $Widget
        </div>
        <% else %>
        $Widget
        <% end_if %>
    </div>
</section>
<% end_if %>