{config, pkgs, ...}:

{
    programs.wofi = {
        enable = true;
        style = ''
                * {
                font-family: monospace;
                }
  
                window {
                    background-color: rgba(0, 0, 8, .7);
                    padding: 0px;
                }
                #input {
                    border: 0px;
                    background-color: rgba(0, 0, 8, .7);
                }
                #entry {
                    padding-left: 0px;
                    padding-right: 0px;
                }
                #entry:selected {
                    background-color: rgba(255, 102, 153, .7);
                }

                #text {
                    margin: 5px;
                    border: 0px;
                    color: #c0caf5;
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
        };
    };

}