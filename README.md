# yum-repo

Builds repo data with createrepo and servers it via python's SimpleHTTPServer.

## Usage

```git clone https://github.com/smuth4/docker-yum-repo.git
cd docker-yum-repo
docker build -t yum-repo .```

This will server everything in `/repo/`
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

`docker run -v /packages/:/repo -p 8080:8000 yumrepo cent6/x86_64/ cent6/i386/`