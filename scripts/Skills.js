/**Copyright (c) 2020, Daniela Marino*/


export default class Skill{

    constructor(data, index){

        this.data = data;
        this.generateSkillRow(index);
    }

    generateSkillRow(index)
    {
        var div = document.createElement("div");
        div.setAttribute("class","skill-row");
        div.setAttribute("id", "skill-row-"+index);

        var title = document.createElement("h3");
        title.setAttribute("class","row-title")
        title.innerHTML = this.data.name;

        div.append(title);

        var tags = document.createElement("div");
        tags.setAttribute("class", "row-list");

        this.data.tags.forEach(tag=>{

            var temp = document.createElement("span");
            temp.setAttribute("class", "skill-span");
            temp.innerHTML = tag;
            tags.append(temp);
        })

        div.append(tags);

        $("#skills-content").append(div.outerHTML);  

    }
}
