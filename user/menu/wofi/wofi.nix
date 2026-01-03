{
    programs.wofi = {
        enable = true;
        style = ''
                * {
                font-family: monospace;
                }
  
                window {
                    background-color: rgba(11, 24, 17, .8);
                    padding: 0px;
                }
                #input {
                    border: 0px;
                    background-color: rgba(11, 24, 17, .8);
                    color: #FECDEF;
                }
                #entry {
                    padding-left: 0px;
                    padding-right: 0px;
                }
                #entry:selected {
                    background-color: rgba(194, 46, 52, .7);
                }

                #text {
                    margin: 5px;
                    border: 0px;
                    color: #FECDEF;
                }
                #inner-box {
                    margin: 0px;
                    border: 0px;
                }

                #outer-box {
                    margin: 0px;
                    border: 0px;
                } 

                '';
        settings = {
            hide_search=false;
            allow_images=true;
        };
    };

}
