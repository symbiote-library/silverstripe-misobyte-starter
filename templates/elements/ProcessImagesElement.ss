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
                <div class="col-md-2">
                    <div class="process-image-horiz">
                    <img src="$Image.ScaleWidth(24).Link" />
                    </div>
                    <h4 class="service-heading">$EditableField(Title)</h4>
                    <p class="text-muted">$EditableField(Caption)</p>
                </div>
                <% end_loop %>
            </div>
        </div>
    </section>