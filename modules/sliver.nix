# creation of sliver service
{
  systemd.services.sliver = {
    description = "Sliver";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      Type = "simple";
      Restart = "on-failure";
      RestartSec = 3;
      ExecStart = "/root/sliver-server daemon";
      User = "root";
    };
    startLimitIntervalSec = 0;
  };
}