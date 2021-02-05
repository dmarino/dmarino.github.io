/**Copyright (c) 2020, Daniela Marino*/

'use strict';

class App{

    constructor(){
    
        this.projects = []
        this.featuredSize = 7;

        this.isInProjects=false;

        let self = this;
        
        //loads projects from json
        $.getJSON('../data/projects.json', function(data) {         
            self.projects = data.projects;
            self.populateProjects();
        });

        //Navigation
        $(".btn-projects").click(function() {
            $("#home-page").hide();
            $("#projects-page").show();
            self.isInProjects=true;
        });

        $("ul.grt-menu > li > a").bind("click", function() {

            if(self.isInProjects)
            {
                $("#projects-page").hide();
                $("#home-page").show();
                self.isInProjects=false;
            }

            self.scrollTo($(this).attr('href'));
            
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
            div.setAttribute("data-aos", "fade-up");

            div.style.cssText = 'background-image:url("' + project.coverimg+ '");'

            var hover = document.createElement("div");
            hover.setAttribute("class","project-hover");

            var title = document.createElement("span");
            title.setAttribute("class", "project-name");
            title.innerHTML = project.name;
            hover.append(title);

            var tags = document.createElement("div");
            tags.setAttribute("class", "project-tags-container");

            project.tags.forEach(tag=>{

                var temp = document.createElement("span");
                temp.setAttribute("class", "project-tag");
                temp.innerHTML = tag;
                tags.append(temp);
            })

            hover.append(tags);
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
        var project = this.projects[index];

        $("#modal-project-name").text(project.name);

        project.tags.forEach(tag=>{

            var temp = document.createElement("span");
            temp.setAttribute("class", "project-tag");
            temp.innerHTML = tag;
            $("#modal-project-tags").append(temp);
        })

        $("#modal-project-description").text(project.info);

        if(typeof project !="undefined")
        {
            console.log(project.video)
            $("#single-project-video").attr("src", project.video)
        }
        else{
            $("#single-project-video").hide();
        }

        project.responsabilities.forEach(resp=>{

            var temp = document.createElement("li");
            temp.innerHTML = resp;
            $("#single-project-resp-list").append(temp);
        })


        $("#modal-project-image").attr("src", project.coverimg);
        

        $("#modal-code").attr("href", project.code);
        $("#modal-video").attr("href", project.video);
        $("#modal-demo").attr("href", project.demo);

        $("#home-page").hide();
        $("#projects-page").hide();
        $("#single-project").show();
        console.log(project.name);
    }

    scrollTo(selector) {
        var destination = $(selector);
        $('html, body').animate({scrollTop: destination.offset().top}, 'slow');
    }
}


$(document).ready( event => {
    let app = new App();
})