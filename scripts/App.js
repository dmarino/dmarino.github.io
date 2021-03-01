/*Copyright (c) 2020, Daniela Marino*/

'use strict';

import Project from './Project.js'
import {PROJECTS_NUMBER_START, PROJECTS_NUMBER_ADD} from './Constants.js'

class App{

    constructor(){
    
        this.projects = []
        this.currentIndex=0;

        this.currentProjectsShown=PROJECTS_NUMBER_START;

        let self = this;
        
        //loads projects from json
        $.getJSON('../data/projects.json', function(data) {        
            
            var i=0;
            data.projects.forEach(element => {
                
                var project = new Project(element,i);
                self.projects.push(project)

                i++;
            });
            
        });

        //Navigation

        $(".btn-more-projects").click(function() {
            self.ShowMoreProjects();
        });

        $("#modal-close").click(function() {
            $("#single-project-modal").hide();
        });

        $("#project-left").click(function() {
            self.ChangeProject(-1);
        });

        $("#project-right").click(function() {
            self.ChangeProject(1);
        });

        $(".prev").click(function() {
            self.projects[self.currentIndex].MoveSlides(-1);
        });

        $(".next").click(function() {
            self.projects[self.currentIndex].MoveSlides(1);
        });

        $("ul.grt-menu > li > a").bind("click", function() {
            self.scrollTo($(this).attr('href'));            
        });

        $(document).on("click", ".project", e => this.SelectProject( e.target.id.split("-")[1]));     
        $(document).on("click", ".demo", e => this.projects[this.currentIndex].ShowSlides( e.target.id.split("-")[1]));    
    }

    ShowMoreProjects()
    {
        for (let i = this.currentProjectsShown; i < (this.currentProjectsShown + PROJECTS_NUMBER_ADD) && (i < this.projects.length); i++) {

            let projectName = "#project-" + i;
            let project = $(projectName);
            if(typeof project !="undefined")
            {
                project.removeClass("hidden");
            }

        }

        if(this.currentProjectsShown + PROJECTS_NUMBER_ADD >= this.projects.length)
        {
            $(".btn-more-projects").hide();
        }

        this.currentProjectsShown += PROJECTS_NUMBER_ADD;
        
    }

    SelectProject(index)
    {
        this.projects[index].ShowProjectInfo();
        this.currentIndex = Number(index);
    }

    ChangeProject(side)
    {
        var newIndex = this.currentIndex + side;

        if(newIndex < 0)
        {
            newIndex = (this.projects.length -1);
        }
        else if(newIndex >= this.projects.length)
        {
            newIndex =0;
        }
        
        this.SelectProject(newIndex);
    }

    scrollTo(selector) {
        var destination = $(selector);
        $('html, body').animate({scrollTop: destination.offset().top}, 'slow');
    }
}


$(document).ready( event => {
    let app = new App();
})