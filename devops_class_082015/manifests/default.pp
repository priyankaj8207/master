exec { "apt-get update":
       command => "/usr/bin/apt-get update",
}

package {"nginx":
         require => Exec["apt-get update"],
}
