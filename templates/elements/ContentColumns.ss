    <section class="element content-columns">
        <div class="<% if $ExtraClass %>$ExtraClass<% else %>container<% end_if %>">
            <div class="row ">
                <% loop $Widget.Elements %>
                <div class="col-md-4">
                    <h4 class="service-heading">$EditableField(Title)</h4>
                    <p>$EditableField(HTML)</p>
                </div>
                <% end_loop %>
            </div>
        </div>
    </section>