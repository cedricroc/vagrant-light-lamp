class bootstrap {
    # This makes puppet and vagrant shut up about the puppet group
    group { "puppet":
        ensure => "present",
    }

    # Set FQDN
    if $virtual == "virtualbox" and $fqdn == '' {
        $fqdn = "localhost"
    }

    # Ensure we are up to date
    exec { "apt-get update":
        command => "apt-get update",
    }

    # Common packages
    $commonPackages = ["curl", "wget", "unzip", "make", "graphviz", "acl"]
    package { $commonPackages:
        ensure => latest,
        require => Exec['apt-get update'],
    }
}
