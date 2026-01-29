{ pkgs, ... }: {

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Luci";
        email = "lucidashygirl@proton.me";
        signingKey = "3EF594B9947AF12F";
      };
      commit.gpgsign = true;
      init.defaultbranch = "main";
    };
  };
}
