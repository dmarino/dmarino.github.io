/**Copyright (c) 2020, Daniela Marino*/

'use strict';

class App{

    constructor(){

        this.projects = []

        let self = this;
        
        //loads projects from json
        $.getJSON('../data/projects.json', function(data) {         
            self.projects = data.projects;
            self.populateProjects();
        });

        //Navigation
        $(".menu").click(function() {

            $(".menu").toggleClass("active");
            $(".navbar-menu").toggleClass("active");

        });
    }


    populateProjects()
    {
        for(var i=0; i<this.projects.size;i++){
            var project = this.projects[i];
            console.log(project);
        }
        this.projects.forEach(project =>{

            var div = document.createElement("div");
            div.setAttribute("class","project");
            div.setAttribute("id", project.name);

            div.style.cssText = 'background-image:url("' + project.coverimg+ '");'

            var hover = document.createElement("div");
            hover.setAttribute("class","project-hover");

            var title = document.createElement("span");
            title.setAttribute("class", "project-name");
            title.innerHTML = project.name;

            hover.append(title);
            div.append(hover);

            $("#featured-projects").append(div);       
        })

    }
}


$(document).ready( event => {
    let app = new App();
})