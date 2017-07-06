<section id="el$ID">
    <div class="<% if $ExtraClass %>$ExtraClass<% else %>container<% end_if %>">
        <div class="row">
            
            <div class="col-md-8 push-md-4">
                <% if not $HideTitle %><h2 class="section-heading">$EditableField(Title)</h2><% end_if %>
                $EditableField(Caption)
            </div>
            
            <div class="col-md-4 pull-md-8">
                <img src="$Widget.Image.URL" class="img-responsive" />
            </div>
        </div>
    </div>
</section>