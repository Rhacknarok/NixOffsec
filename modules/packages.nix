{ config, pkgs, ... }:
{
      # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.vagrant = {
    packages = with pkgs; [

#Utils
    vscodium
    git
    file

#Exploits

    exploitdb
    go-exploitdb
    padre
    lmp
    log4jcheck
    log4j-vuln-scanner

#Mobile

    abootimg
    androguard
    apkeep
    apkleaks
    apktool
    dex2jar
    genymotion
    ghost
    payload-dumper-go
    scrcpy
    simg2img
    trueseeing

#Information gathering

    cloudbrute
    enumerepo
    holehe
    maigret
    metabigor
    p0f
    sn0int
    socialscan
    theharvester
    urlhunter

#Bluetooth

    bluez
    bluewalker
    python312Packages.bleak
    redfang
    ubertooth

#Malware

    bingrep
    cutter
    flare-floss
    gdb
    ghidra-bin
    ioc-scan
    pwndbg
    python312Packages.binwalk
    python312Packages.malduck
    python312Packages.karton-core
    python312Packages.unicorn
    python312Packages.r2pipe
    radare2
    rizin
    stacs
    volatility3
    xortool
    yara
    zkar

#Network

    arping
    arpoison
    atftp
    bandwhich
    evillimiter
    iperf2
    lftp
    mitm6
    mtr
    ncftp
    netcat-gnu
    netdiscover
    nload
    nuttcp
    putty
    pwnat
    responder
    rustcat
    sshping
    sslh
    wbox
    whois
    yersinia

#Smartcards

    cardpeek
    libfreefare
    mfcuk
    mfoc
    python311Packages.emv

#Misc

    ares-rs
    badchars
    changetower
    creds
    doona
    galleta
    honeytrap
    jwt-cli
    kepler
    nmap-formatter
    pwntools
    python312Packages.pytenable
    snscrape

#Wireless

    aircrack-ng
    airgeddon
    bully
    cowpatty
    dbmonster
    horst
    killerbee
    kismet
    pixiewps
    reaverwps
    wavemon
    wifite2

#Port scanners

    arp-scan
    das
    ipscan
    masscan
    naabu
    nmap
    udpx
    sx-go
    rustscan
    zmap

#Generic

    chrony
    clamav
    curl
    cyberchef
    dorkscout
    flashrom
    girsh
    httpie
    hurl
    inetutils
    inxi
    ioccheck
    iproute2
    iw
    lynx
    macchanger
    nano
    parted
    pwgen
    ronin
    spyre
    utillinux
    wget
    xh
    btop
    iftop
    iotop
    eternal-terminal
    mosh
    shellz
    cifs-utils
    freerdp
    net-snmp
    nfs-utils
    ntp
    openssh
    openvpn
    samba
    step-cli
    wireguard-go
    wireguard-tools
    xrdp
    ipcalc
    netmask
    tmux
    zellij
    cabextract
    p7zip
    unrar
    unzip

#Web

    apachetomcatscanner
    arjun
    brakeman
    cariddi
    chopchop
    clairvoyance
    commix
    crackql
    crlfsuite
    dalfox
    dismap
    dirstalk
    dontgo403
    galer
    gospider
    gotestwaf
    gowitness
    graphqlmap
    graphw00f
    hakrawler
    hey
    httpx
    nodePackages.hyperpotamus
    jaeles
    jsubfinder
    jwt-hack
    katana
    kiterunner
    mantra
    mitmproxy2swagger
    monsoon
    nikto
    ntlmrecon
    photon
    slowlorust
    snallygaster
    subjs
    swaggerhole
    uddup
    wad
    webanalyze
    websecprobe
    whatweb
    wprecon
    wpscan # export NIXPKGS_ALLOW_UNFREE=1
    wuzz
    xcrawl3r
    xsubfind3r

#Password

    authoscope
    bruteforce-luks
    brutespray
    crunch
    hashcat
    hashcat-utils
    hashdeep
    john
    legba
    medusa
    nasty
    ncrack
    nth
    python312Packages.patator
    thc-hydra
    truecrack

#Voip

    sipp
    sipsak
    sipvicious
    sngrep

#Code

    bomber-go
    cargo-audit
    credential-detector
    deepsecrets
    detect-secrets
    freeze
    git-secret
    gitjacker
    gitleaks
    gitls
    gokart
    legitify
    osv-detector
    pip-audit
    secretscanner
    tell-me-your-secrets
    trufflehog
    whispers

#Fuzzers

    feroxbuster
    ffuf
    gobuster
    radamsa
    regexploit
    ssdeep
    wfuzz
    zzuf

#Terminals

    cutecom
    minicom
    picocom
    socat
    # x3270

#Dns

    aiodnsbrute
    amass
    bind
    dnsmon-go
    dnsmonster
    dnsrecon
    dnstake
    dnstracer
    dnstwist
    dnspeep
    dnsx
    fierce
    findomain
    knockpy
    subfinder
    subzerod

#Forensics

    afflib
    amoco
    acquire
    dcfldd
    ddrescue
    dislocker
    dismember
    exiv2
    ext4magic
    extundelete
    foremost
    gef
    gzrt
    hivex
    hstsparser
    noseyparker
    ntfs3g
    ntfsprogs
    nwipe
    recoverjpeg
    safecopy
    sleuthkit
    srm
    stegseek
    testdisk
    wipe
    xorex

#Ldap

    adenum
    msldapdump
    ldapmonitor
    ldapdomaindump
    ldapnomnom
    ldeep
    silenthound

#Host

    checksec
    chkrootkit
    linux-exploit-suggester
    lynis
    safety-cli
    vulnix

#Container

    cdk-go
    clair
    cliam
    cloudlist
    dive
    dockle
    fwanalyzer
    grype
    trivy

#Windows

    adreaper
    bloodhound-py
    chainsaw
    certipy
    certsync
    coercer
    enum4linux
    enum4linux-ng
    erosmb
    evil-winrm
    go365
    gomapenum
    kerbrute
    lil-pwny
    nbtscan
    nbtscanner
    netexec
    offensive-azure
    python311Packages.lsassy
    python311Packages.pypykatz
    samba
    smbmap
    smbscan

#Services

    acltoolkit
    checkip
    ghunt
    ike-scan
    keepwn
    metasploit
    nbutools
    nuclei
    openrisk
    osv-scanner
    uncover
    traitor
    mx-takeover
    ruler
    swaks
    trustymail
    ghauri
    mongoaudit
    nosqli
    sqlmap
    braa
    onesixtyone
    snmpcheck
    baboossh
    sshchecker
    ssh-audit
    ssh-mitm
    teler
    waf-tester
    wafw00f
    oshka
    terrascan
    tfsec
    chain-bench
    witness
    davtest

#Tunneling

    bore-cli
    corkscrew
    hans
    chisel
    httptunnel
    iodine
    sish
    stunnel
    udptunnel

#Cloud

    cloud-nuke
    cloudfox
    ec2stepshell
    gato
    gcp-scanner
    ggshield
    goblob
    imdshift
    yatas

#Hardware

    cantoolz
    chipsec
    cmospwd
    esptool
    extrude
    gallia
    hachoir
    teensy-loader-cli
    tytools
    python312Packages.angr
    python312Packages.angrop
    python312Packages.can
    python312Packages.pyi2cflash
    python312Packages.pyspiflash

#Kubernetes

    cfripper
    checkov
    cirrusgo
    kdigger
    kube-score
    kubeaudit
    kubestroyer
    kubescape
    popeye

#Tls

    sslscan
    ssldump
    sslsplit
    testssl
    tlsx

#Traffic

    anevicon
    dhcpdump
    dnstop
    driftnet
    dsniff
    goreplay
    joincap
    junkie
    netsniff-ng
    ngrep
    secrets-extractor
    sniffglue
    tcpdump
    tcpflow
    tcpreplay
    termshark
    wireshark
    wireshark-cli
    zeek

#Load testing

    ali
    drill
    cassowary
    ddosify
    oha
    siege
    tsung
    vegeta

#Proxies

    bettercap
    burpsuite
    ettercap
    mitmproxy
    mubeng
    proxify
    proxychains
    redsocks
    rshijack
    zap

#Packet generators

    boofuzz
    gping
    fping
    hping
    ostinato
    pktgen
    python312Packages.scapy

# Adding new
    python312Packages.androguard
    anew
    python312Packages.angr
    arsenal
    assetfinder
    avrdude
    awscli
    azure-cli
    bloodhound
    cewl
    python312Packages.cloudsplaining
    dns2tcp
    dnschef
    dnsenum
    exif
    exifprobe
    exiftool
    fcrackzip
    unixtools.fdisk
    firefox
    frida-tools
    fzf
    gau
    gqrx
    gron
    hackrf
    hcxtools
    hcxdumptool
    hping
    httprobe
    imagemagick
    ipinfo
    jadx
    joomscan
    kubectl
    libmspack
    libnfc
    ligolo-ng
    ltrace
    maltego
    python312Packages.mariadb
    python312Packages.masky
    python312Packages.murmurhash
    python312Packages.name-that-hash
    nasm
    neo4j
    pdfcrack
    powershell
    pretender
    proxmark3
    proxychains
    proxychains-ng
    pwncat
    pwninit
    python312Packages.pywerview
    puppet-bolt
    rdesktop
    remmina
    rlwrap
    rrsync
    rtl_433
    samdump2
    scalpel
    seclists
    semgrep
    sherlock
    soapui
    sshuttle
    steghide
    strace
    tor
    traceroute
    tshark
    updog
    upx
    wabt
    yt-dlp-light
    zsteg
    python312Packages.impacket
    navi

    ];
  };

  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.allowBroken = true;
}
