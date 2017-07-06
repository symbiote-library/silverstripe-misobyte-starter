    <section class="images-list element $ClassName<% if $ExtraClass %> $ExtraClass<% end_if %> $FirstLast">
        <div class="<% if $ExtraClass %>$ExtraClass<% else %>container<% end_if %>">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">$EditableField(Title)</h2>
                    <h3 class="section-subheading text-muted">$EditableField(ListDescription)</h3>
                </div>
            </div>

            <div class="row text-center">
                <% loop $Widget.Elements %>
                <div class="col-md-3">
                    <div class="service-image-horiz">
                        <a href="$InternalLink.Link"><img src="$Image.ScaleWidth(48).Link" /></a>
                    </div>
                    <h4 class="service-heading"><a href="$InternalLink.Link">$EditableField(Title)</a></h4>
                    <p class="text-muted">$EditableField(Caption)</p>
                </div>
                <% end_loop %>
            </div>
        </div>
    </section>