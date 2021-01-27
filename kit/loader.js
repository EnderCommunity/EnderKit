const EnderEnvironment = {
    window: {
        docElement: document.documentElement,
        body: document.body
    },
    titleBar: {
        tabs: document.getElementById("TabsToolbar"),
        navigator: document.getElementById("navigator-toolbox"),
        spacers: document.getElementsByClassName("titlebar-spacer")
    },
    toolBar: {
        items: document.getElementsByClassName("toolbar-items")
    },
    navigationBar: document.getElementById("nav-bar"),
    browser: document.getElementById("browser")
 
}, EnderAPI = {
    window: {
        setColour: function(colour){
            EnderEnvironment.window.docElement.style.backgroundColor = colour;
            EnderEnvironment.window.body.style.backgroundColor = colour;
        }
    },
    app: {
        load: function(URL){
            //EnderEnvironment.browser
        },
        fullscreen: function(bool){
            fullScreen = bool;
        },
        exit: function(){
            close();
        }
    },
    titleBar: {
        text: {
            setColour: function(colour){
                EnderEnvironment.titleBar.tabs.style.color = colour;
            }
        },
        setColour: function(colour){
            EnderEnvironment.titleBar.tabs.style.backgroundColor = colour;
            EnderEnvironment.titleBar.navigator.style.borderColor = colour;
        }
    }
};
/* Change the UI! */
EnderEnvironment.navigationBar.style.display = "none";
EnderEnvironment.toolBar.items[0].style.opacity = "0";
EnderEnvironment.toolBar.items[0].style.pointerEvents = "none";
EnderEnvironment.titleBar.spacers[0].style.opacity = "0";
EnderEnvironment.titleBar.spacers[1].style.opacity = "0";
//document.getElementsByTagName("browser")[1]