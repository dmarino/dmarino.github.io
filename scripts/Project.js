/**Copyright (c) 2020, Daniela Marino*/


import {PROJECTS_NUMBER_START} from './Constants.js'

export default class Project{

    constructor(data, index){

        this.data = data;
        this.currentImage=0;

        this.generateProjectCard(index);
    }

    generateProjectCard(index)
    {
        var div = document.createElement("div");
        div.setAttribute("data-aos","zoom-in-up");
        div.setAttribute("class","project");
        div.setAttribute("id", "project-"+index);
        div.style.cssText = 'background-image:url("' + this.data.images[0].link+ '");'
        div.setAttribute("aria-label", this.data.name);

        var hover = document.createElement("div");
        hover.setAttribute("class","project-hover");

        var title = document.createElement("span");
        title.setAttribute("class", "project-name");
        title.innerHTML = this.data.name;
        hover.append(title);

        var tags = document.createElement("div");
        tags.setAttribute("class", "project-tags-container");

        this.data.tags.forEach(tag=>{

            var temp = document.createElement("span");
            temp.setAttribute("class", "project-tag");
            temp.innerHTML = tag;
            tags.append(temp);
        })

        hover.append(tags);
        div.append(hover);

        if(index>=PROJECTS_NUMBER_START)
        {
            div.classList.add("hidden");
        }

        $("#featured-projects").append(div.outerHTML);  

    }

    ShowProjectInfo()
    {

        $("#modal-project-name").text(this.data.name);
        $("#modal-project-description").html(this.data.info);

        this.UpdatesCarousel();
        this.UpdatesResponsabilities();   
        this.UpdatesButtons();     

        $("#single-project-modal").show();
    }


    UpdatesCarousel()
    {
        
        
        $("#single-project-all-images").empty();

        var i=0;
        this.data.images.forEach(image => {

            var div = document.createElement("div");
            div.setAttribute("class","min-image");

            var temp = document.createElement("img");
            temp.setAttribute("class", "demo interactive");
            temp.setAttribute("id", "image-"+ i);
            temp.setAttribute("src", image.link);
            temp.setAttribute("alt", image.alt);

            div.append(temp);

            $("#single-project-all-images").append(div);
            i++;
            
        });

        this.ShowSlides(0);
    }

    UpdatesResponsabilities()
    {
        $("#single-project-resp-list").empty()
        this.data.responsabilities.forEach(resp=>{

            var temp = document.createElement("li");
            temp.innerHTML = resp;
            $("#single-project-resp-list").append(temp);
        })
    }

    UpdatesButtons(){

        $("#modal-code").attr("href", this.data.code);
        $("#modal-code").toggle(typeof this.data.code !="undefined");

        $("#modal-video").attr("href", this.data.video);
        $("#modal-video").toggle(typeof this.data.video !="undefined");

        $("#modal-demo").attr("href", this.data.demo);
        $("#modal-demo").toggle(typeof this.data.demo !="undefined");

        
    }

    MoveSlides(n){

        var newIndex =  this.currentImage+n;

        if (newIndex >= this.data.images.length) {
            newIndex = 0
        }
        else if (newIndex < 0) 
        {
            newIndex = this.data.images.length-1
        }
        this.ShowSlides(newIndex);
    }

    ShowSlides(index) {

        this.currentImage = Number(index);

        $(".currentSlide > img").attr("src",this.data.images[this.currentImage].link);
        $("#slide-number").text((this.currentImage+1) + "/" + this.data.images.length);

        var dots = document.getElementsByClassName("demo");

        for (var i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        dots[this.currentImage].className += " active";
      
      }
}
