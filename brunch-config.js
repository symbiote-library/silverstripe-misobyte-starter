module.exports = {
//  conventions: {
//      vendor: "node_modules"
//  },
  modules: {
    autoRequire: {
        'js/app.js': [
          // Auto-add 'require(...)' to bottom of app.js to immediately initialize.
          'js/miso.js',
        ]
    }
  },
  files: {
    javascripts: {
        joinTo: {
          'js/app.js': [
              // Include jquery first
              /^node_modules\/jquery/,
              // Include all JS from /app/node_modules/
              /^node_modules/,
              // Include all JS inside /app/javascript/
              /^app\/js/
          ],
        }
    },
    stylesheets: {
        joinTo: {
          'css/app.css': /(^app|^node_modules)/
        }
    }
  },
  npm: {
    globals: {
      // Expose module to global scope as 'window.$' variable
      $: 'jquery',
      jQuery: 'jquery',
      Tether: 'tether'
    },
    styles: {
      "font-awesome": ['css/font-awesome.css']
    }
  }
}