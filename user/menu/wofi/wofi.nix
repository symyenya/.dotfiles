{config, pkgs, ...}:

{
    programs.wofi = {
        enable = true;
        style = ''
  * {
      font-family: monospace;
  }
  
  window {
      background-color: rgba(0, 0, 8, .7);;
  }
''
    };

}