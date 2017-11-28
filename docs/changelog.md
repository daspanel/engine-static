# Changelog - admindaspanel / engine-static

### 0.12.1
__Changes__

- bumped to version 0.12.1
- Improved support for temporary servers running on ports 3000 and 8080. Such as those that are started using the 'npm run dev' command on the web console.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Mon 27 Nov 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.12.0...0.12.1#diff)
______________

### engine-static-0.2.0
__Changes__


Released by N/A, Mon 27 Nov 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/...#diff)
______________

### 0.12.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.12.0
- Changed the way the root directory is configured.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Wed 22 Nov 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.11.0...0.12.0#diff)
______________

### 0.11.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.11.0
- Fix parameters received. The second must be the dir of the site.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Wed 08 Nov 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.10.0...0.11.0#diff)
______________

### 0.10.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.10.0
- Opened port 8080 and 3000 for use with dev node servers.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Wed 08 Nov 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.9.1...0.10.0#diff)
______________

### 0.9.1
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.9.1
- Make more generic this script.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Thu 26 Oct 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.9.0...0.9.1#diff)
______________

### 0.9.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.9.0
- Open console with gotty using parameters received by URL.
- Replaced ttyd by gotty to enable a better end user experience.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Thu 26 Oct 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.8.2...0.9.0#diff)
______________

### 0.8.2
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.8.2
- Added in caddy template proxy redirects for web console.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Mon 23 Oct 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.8.1...0.8.2#diff)
______________

### 0.8.1
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.8.1
- Added ttyd.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Mon 23 Oct 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.8.0...0.8.1#diff)
______________

### 0.8.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.8.0
- Using an intermediate image to add development packages that must be available at run time executation.
- Upgraded caddy to version 0.10.10

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Mon 23 Oct 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.7.0...0.8.0#diff)
______________

### 0.7.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.7.0
- The Caddy server is, from now on, compiled from sources and is no longer downloaded as a binary - as required by Caddy's new licensing rules. Caddy was also upgraded to version v0.10.9.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Sat 16 Sep 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.6.0...0.7.0#diff)
______________

### 0.6.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.6.0
- Site templates use data from API call.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Thu 24 Aug 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.5.0...0.6.0#diff)
______________

### 0.5.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.5.0
- Removed dependence from daspanel/alpine-base.

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Mon 03 Jul 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.4.0...0.5.0#diff)
______________

### 0.4.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.4.0
- Implemented the use of self signed SSL certificates as well as valid certificates signed by LetsEncrypt. Valid certificates are only used if the value of DASPANEL_SYS_HOSTNAME is not equal to 'daspanel.site'
- Changed way as Caddy reloads vhosts from caddyfile as instructed in https://caddyserver.com/blog/certificate-management-policies

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Wed 07 Jun 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.3.1...0.4.0#diff)
______________

### 0.3.1
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.3.1
- Engine working only trought HTTPS..

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Sat 13 May 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/0.3.0...0.3.1#diff)
______________

### 0.3.0
__Changes__

- See changes in CHANGELOG.md
- bumped to version 0.3.0
- Changed relase tag naming convention
- Removed Caddy plugin minify due bugs reported in Caddy forum. Added bash and openssl to allow generation os self signed certificates.
- Initialization of the container using settings obtained from the API server.
- See changes in CHANGELOG.md
- bumped to version 0.2.0
- Virtual host must be run in the 80 port.
- First implementation.
- Build settings updates.
- Build settings updates.
- first commit

__Contributors__

- Abner G Jacobsen

Released by Abner G Jacobsen, Fri 12 May 2017 -
[see the diff](https://github.com/admindaspanel/engine-static/compare/3649d70f8d4be0631dd02caf97786ec2ecaa8097...0.3.0#diff)
______________


