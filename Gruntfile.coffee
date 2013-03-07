# change this if you want another template
template = "slides.eco"

fs = require("fs")
include =
  file: (filename) ->
    fs.readFileSync filename, "utf8"

  code: (filename, syntax) ->
    "<pre><code class='" + syntax + "'>" + include.file(filename) + "</code></pre>"

module.exports = (grunt) ->
  grunt.loadNpmTasks('grunt-templater')
  grunt.loadNpmTasks('grunt-contrib-sass')
  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-contrib-copy')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-connect')

  grunt.initConfig
    template:
      dev:
        src: template
        dest: "compiled/index.html"
        variables:
          hello: "test"
          include: include

    sass:
      dev:
        files:
          "compiled/stylesheets/index.css": "stylesheets/index.scss"

    clean: ["compiled"]

    copy:
      main:
        files: [
          {src: ["vendor/**"], dest: "compiled/"}
          {src: ["javascripts/**.js"], dest: "compiled/"}
          {src: ["images/**"], dest: "compiled/"}
          {src: ["stylesheets/**.css"], dest: "compiled/"}
        ]

    watch:
      template:
        files: [template, "code/**"]
        tasks: "template"

      sass:
        files: ["stylesheets/**"]
        tasks: "sass"

      copy:
        files: ["javascripts/**", "images/**", "vendor/**"]
        tasks: "copy"

    connect:
      server:
        options:
          port: 8000
          base: "compiled/"

  grunt.registerTask "compile", ["clean","sass","template","copy"]
  grunt.registerTask "default", ["compile","connect:server","watch"]
