<% if $Actions %>
<nav class="Actions">
    <div class="actions-col">
        <% loop $Actions %>
            $Field
        <% end_loop %>
    </div>
</nav>
<% end_if %>