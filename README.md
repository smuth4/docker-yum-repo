# yum-repo

test-text

Builds repo data with createrepo and serves it via python's SimpleHTTPServer. The repo artifacts will persist.

[![Docker Repository on Quay.io](https://quay.io/repository/smuth4/yum-repo/status "Docker Repository on Quay.io")](https://quay.io/repository/smuth4/yum-repo)

## Usage

```
git clone https://github.com/smuth4/docker-yum-repo.git
cd docker-yum-repo
docker build -t yum-repo .
```

This will serve everything in `/repo/` on 8080 on the host:

`docker run -v /packages/:/repo -p 8080:8000 yumrepo`

Or if you have a structure like
```
packages
 `cent6/
  `x86_64/
   `<packages...>
  `i386/
   `<packages...>
```  

This will create a repo in each specified directory (relative to `/repo/`)

`docker run -v /packages/:/repo -p 8080:8000 yumrepo cent6/x86_64/ cent6/i386/`
