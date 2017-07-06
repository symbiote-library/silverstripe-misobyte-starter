require('bootstrap');
require('jquery-match-height');
require('js/jquery.browser.js');

(function ($) {
    "use strict"; // Start of use strict

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function () {
        $('.navbar-toggle:visible').click();
    });

    $(document).ready(function(){

        $('.service-heading, .match-height').matchHeight();

        if ($('body').hasClass('js-use-sticky-header')) {
            var $stickyNav = $('nav#mainNav');
            var stickyNavTop = $stickyNav.offset().top;

            var stickyNav = function(){
                var scrollTop = $(window).scrollTop();

                if (scrollTop > stickyNavTop) { 
                    $stickyNav.addClass('sticky');
                } else {
                    $stickyNav.removeClass('sticky'); 
                }
            };

            stickyNav();

            $(window).scroll(function() {
                stickyNav();
            });
        }
        

        // Add smooth scrolling to all links
        $("a").on('click', function(event) {
            if (this.hash !== "") {
                var navHeight = $('nav#mainNav').height(); // Main nav height
                var hash = this.hash;
                if ($(hash).length <= 0) {
                    return true;
                }
                event.preventDefault();
                $('html, body').animate({
                    scrollTop: $(hash).offset().top - navHeight
                }, 500, function(){
                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            }
        });
    });

    $(document).on('updateLivingdocsDesign', function (e, design) {

        for (var i in design.components) {
            if (design.components[i].name === 'teaser') {
                design.components[i].html = '<div class="teaser">' +
                    '<a doc-link="link">' +
                    '<div class="image-holder">' +
                    '<img doc-image="image">' +
                    '</div>' +
                    '<h3 class="service-heading" doc-editable="label">Label</h3></a>' +
                    '<p class="text-muted" doc-editable="description">Description</p>' +
                    '</div>';
            
                design.components[i].properties = ["teaser-classes"];
                break;
            }
            if (design.components[i].name === 'section') {
                var newComponent = {
                    "name": "image-section",
                    "html": "<section class=\"page-section container with-background\" doc-image=\"background\" doc-container=\"section\">\n</section>",
                    "label": "Section with Image",
                    "properties": design.components[i].properties
                };
                design.components.push(newComponent);
            }
        }
        
        design.groups[2].components.push('image-section');

        design.componentProperties["teaser-classes"] = {
            "label": "Teaser image styles",
            "type": "select",
            "options": [
                {
                    "caption": "None"
                },
                {
                    "caption": "Rounded image",
                    "value": "rounded-background"
                },
                {
                    "caption": "Larged rounded",
                    "value": "large-circle rounded-background"
                },
            ]
        };
        
        design.componentProperties["text-styles"].options.push(
            {
                'caption': 'Centered',
                'value': "text-center"
            },
            {
                'caption': 'Like H1',
                'value': "h1"
            },
            {
                'caption': 'Like H2',
                'value': "h2"
            },
            {
                'caption': 'Like H3',
                'value': "h3"
            },
            {
                'caption': 'Like H4',
                'value': "h4"
            },
            {
                'caption': 'Like H5',
                'value': "h5"
            }
        );
        
        design.componentProperties["background-styles"].options.push(
            {
                'caption': 'White', 
                'value': "bg-white"
            },
            {
                'caption': 'Grey',
                'value': "bg-ltgrey"
            },
            {
                'caption': 'Dark',
                'value': "bg-dkgrey"
            },
            {
                'caption': 'Purple',
                'value': "bg-purple"
            },
            {
                'caption': 'Green',
                'value': "bg-green"
            },
            {
                'caption': 'Orange',
                'value': "bg-orange"
            },
            {
                'caption': 'Yellow',
                'value': "bg-yellow"
            }
        );        

        design.structures.push({
            'label': 'Side-by-side images',
            'components': [
                {
                    identifier: design.name + '.row',
                    styles: {"text-styles": "text-center"},
                    containers: {
                        "row": [
                            {
                                identifier: design.name + '.column',
                                styles: {"column-width": "col-md-4"},
                                containers: {
                                    "column": [
                                        {
                                            identifier: design.name + '.teaser',
                                            styles: {"teaser-classes": "rounded-background"}
                                        }
                                    ]
                                }
                            },
                            {
                                identifier: design.name + '.column',
                                styles: {"column-width": "col-md-4"},
                                containers: {
                                    "column": [
                                        {
                                            identifier: design.name + '.teaser',
                                            styles: {"teaser-classes": "rounded-background"}
                                        }
                                    ]
                                }
                            },
                            {
                                identifier: design.name + '.column',
                                styles: {"column-width": "col-md-4"},
                                containers: {
                                    "column": [
                                        {
                                            identifier: design.name + '.teaser',
                                            styles: {"teaser-classes": "rounded-background"}
                                        }
                                    ]
                                }
                            }
                        ]
                    }
                }
            ]
        });
        
        
        design.structures.push({
            'label': 'Left-right stacked images',
            'components': [
                {
                    identifier: design.name + '.section',
                    containers: {
                        'section': [
                            {
                                identifier: design.name + '.row',
                                containers: {
                                    "row": [
                                        {
                                            identifier: design.name + '.column',
                                            styles: {"column-width": "col-md-4"},
                                            containers: {
                                                "column": [
                                                    {
                                                        identifier: design.name + '.image',
                                                        styles: {}
                                                    }
                                                ]
                                            }
                                        },
                                        {
                                            identifier: design.name + '.column',
                                            styles: {"column-width": "col-md-8"},
                                            containers: {
                                                "column": [
                                                    {
                                                        identifier: design.name + '.h2'
                                                    },
                                                    {
                                                        identifier: design.name + '.p'
                                                    }
                                                ]
                                            }
                                        }
                                    ]
                                }
                            },
                            {
                                identifier: design.name + '.row',
                                containers: {
                                    "row": [
                                        {
                                            identifier: design.name + '.column',
                                            styles: {"column-width": "col-md-4", 'column-float': 'push-md-8'},
                                            containers: {
                                                "column": [
                                                    {
                                                        identifier: design.name + '.image',
                                                        styles: {}
                                                    }
                                                ]
                                            }
                                        },
                                        {
                                            identifier: design.name + '.column',
                                            styles: {"column-width": "col-md-8", "column-float":  "pull-md-4"},
                                            containers: {
                                                "column": [
                                                    {
                                                        identifier: design.name + '.h2'
                                                    },
                                                    {
                                                        identifier: design.name + '.p'
                                                    }
                                                ]
                                            }
                                        }
                                    ]
                                }
                            }
                        ]
                    }
                }
                
            ]
        });
    });

    function toolbarDragDrop(e){
        var target = e.target;
        if ($(target).hasClass('toolbar-entry')) {
            return;
        }
        window.my_dragging = {};
        my_dragging.pageX0 = e.pageX;
        my_dragging.pageY0 = e.pageY;
        my_dragging.elem = this;
        my_dragging.offset0 = $(this).offset();
        function handle_dragging(e){
            var left = my_dragging.offset0.left + (e.pageX - my_dragging.pageX0);
            var top = my_dragging.offset0.top + (e.pageY - my_dragging.pageY0);
            $(my_dragging.elem)
            .offset({top: top, left: left});
        }
        function handle_mouseup(e){
            $('body')
            .off('mousemove', handle_dragging)
            .off('mouseup', handle_mouseup);
        }
        $('body')
        .on('mouseup', handle_mouseup)
        .on('mousemove', handle_dragging);
    }

    $(document).ready(function(){
        var $toolbar = $('.livingdocs-toolbar');
        if ($toolbar.length){
            $toolbar = $toolbar.first();
            // Add drag/drop to toolbar if it isn't anchored
            if ($toolbar.hasClass('anchor')){
                $('body').addClass('toolbar-anchor');
            }
            else {
                $toolbar.mousedown(toolbarDragDrop);
            }
            // Add titles to buttons
            var $buttons = $toolbar.find('form > .Actions .action');
            if ($buttons.length){
                $buttons.each(function(){
                    $(this).attr('title', $(this).attr('value'));
                });
            }
        }
        
    });


})(jQuery); // End of use strict
