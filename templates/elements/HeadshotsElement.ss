    <section id="processes">
        <div class="<% if $ExtraClass %>$ExtraClass<% else %>container<% end_if %>">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">$Title</h2>
                    <h3 class="section-subheading text-muted">$ListDescription</h3>
                </div>
            </div>

            <div class="row text-center">
                <% loop $Widget.Elements %>
                <div class="col-md-3">
                    <div class="headshot-image-horiz">
                    <img src="$Image.ScaleWidth(95).Link" />
                    </div>
                    <h3 class="service-heading">$Title</h3>
                    <p class="text-muted">$Caption</p>
                </div>
                <% end_loop %>
            </div>
        </div>
    </section>