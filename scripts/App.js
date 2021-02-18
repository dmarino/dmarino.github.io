/**Copyright (c) 2020, Daniela Marino*/

'use strict';

class App{

    constructor(){
    
        this.projects = []

        this.moreSize = 8;
        this.currentProjectsShown=8;

        let self = this;
        
        //loads projects from json
        $.getJSON('../data/projects.json', function(data) {         
            self.projects = data.projects;
            self.populateProjects();
        });

        //Navigation

        $(".btn-more-projects").click(function() {
            self.ShowMore();
        });

        $("ul.grt-menu > li > a").bind("click", function() {
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

            if(i>=this.currentProjectsShown)
            {
                div.classList.add("hidden");
            }

            $("#featured-projects").append(div.outerHTML);  

            i++;
        })

    }

    ShowMore()
    {
        for (let i = this.currentProjectsShown; i < (this.currentProjectsShown + this.moreSize) && (i < this.projects.length); i++) {

            let projectName = "#project-" + i;
            let project = $(projectName);
            if(typeof project !="undefined")
            {
                project.removeClass("hidden");
            }

        }

        if(this.currentProjectsShown+ this.moreSize < this.projects.length)
        {
            this.currentProjectsShown += this.moreSize;
        }

        else{
            this.currentProjectsShown = this.projects.length;
            $(".btn-more-projects").hide();
        }
        
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

        $("#single-project-modal").show();
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