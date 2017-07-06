    <section id="el$ID">
        <div class="<% if $ExtraClass %>$ExtraClass<% else %>container<% end_if %> image-backed" style="background-image: url($Image.URL)">
            <div class="row">
                <div class="col-lg-12">
                    <% if not $HideTitle %><h2 class="section-heading">$Title</h2><% end_if %>
                    $Caption
                </div>
            </div>
        </div>
    </section>