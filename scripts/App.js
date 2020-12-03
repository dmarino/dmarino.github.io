/**Copyright (c) 2020, Daniela Marino*/

'use strict';

class App{

    constructor(){

        this.projects = []
        this.featuredSize = 7;

        let self = this;
        
        //loads projects from json
        $.getJSON('../data/projects.json', function(data) {         
            self.projects = data.projects;
            self.populateProjects();
        });

        //Navigation
        $("#btn-projects").click(function() {

            $("#home-page").hide();
            $("#projects-page").show();

        });

        $("#modal-close").click(function() {

            $("#modal-wrapper").hide();

        });



        $(document).on("click", ".project", e => this.SelectProject(e));

        
    }


    populateProjects()
    {
        var i=0;
        this.projects.forEach(project =>{

            var div = document.createElement("div");
            div.setAttribute("class","project");
            div.setAttribute("id", "project-"+i);

            div.style.cssText = 'background-image:url("' + project.coverimg+ '");'

            var hover = document.createElement("div");
            hover.setAttribute("class","project-hover");

            var title = document.createElement("span");
            title.setAttribute("class", "project-name");
            title.innerHTML = project.name;

            hover.append(title);
            div.append(hover);

            if(i<this.featuredSize)
            {
                $("#featured-projects").append(div.outerHTML);  
            }

            $("#all-projects").append(div); 

            i++;
        })

    }

    SelectProject(event)
    {
        var index = event.target.id.split("-")[1];

        $("#modal-wrapper").show();
        console.log(this.projects[index]);
    }
}


$(document).ready( event => {
    let app = new App();
})