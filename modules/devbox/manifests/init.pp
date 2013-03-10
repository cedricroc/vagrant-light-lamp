# Main module
class devbox ($hostname) {
    # Set paths
    Exec {
        path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
    }

    include bootstrap
    include mysql
    include postfix
    include ruby
    include php
    include phpmyadmin

    class { "apache":
        hostname => $hostname
    }

    include vim
}
