{pkgs, ...}: {
  kernel.python.custom = {
    enable = true;
    extraPackages = (ps: with ps; [
      matplotlib
      pandas
      seaborn
      mysql-connector
      sqlalchemy
      pymysql
    ]);
  };
}
