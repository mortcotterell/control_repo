class profile::ssh_server {
  package {'openssh-server':
            ensure => present,
            }
  service {'sshd':
            ensure => 'running',
            enable => 'true',
            }
            ssh_authorized_key {'root@master.puppet.vm':
                  ensure => present,
                  user   => 'root',
                  type   => 'ssh-rsa',
                  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCusOnYWbo2OUpKLnHtnuJYT5BB5kznym+y4nX+MgjvoLGa6PG6h3cQUEQcO9UkAV17AW+QcyiNo6VCFwxy6VBL6faJWcK0tMBlsPld1utlUI89AOqR3sIKz8aWgV18DSBl3UIX4Y7urvwPjaF97PDIySsYWdh6QS6loNnYSpSxATKTz4aByg1fh9Fk2+8BSs3pJSoZrWfwAFmmXoVg+jZjKffo1eionP2DQjX2AlFmXgPH4bzyOqIYOg8lVBew8qHoxVI9cw2TBBC6zpQqhWHoWMXJn2rePtsxYVCSspsVhiKjH4d4R+u3q+p20G+IdzgXTOEbwVpJocwWl0XMWUDT root@master.puppet.vm',
                  }
}
