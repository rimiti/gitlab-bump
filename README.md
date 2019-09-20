# gitlab-bump

This GitLab CI runner image allows to bump node project version. This repository has been inspired from 

## How to use

1. Create `.gitlab-ci.yml`:

```yaml
image: rimiti:gitlab-bump

stages:
  - tag

tag:
  stage: "tag"
  environment: 
    name: "production"
  only:
    - "master"
  script: bump user@git.host:repository branch
```

2. Go to GitLab > Project > Settings > CI/CD > Secret Variables, and add a variable `SSH_PRIVATE_KEY`:

```sh
-----BEGIN RSA PRIVATE KEY-----
   // YOUR_PRIVATE_KEY_HERE
-----END RSA PRIVATE KEY-----
```

### Pushing to a branch other than master

By default, `bump` will bump and push to branch `master` of a remote repository. 
You can override this with:

```sh
bump user@git.host:repo branch
```

### Pushing to Git running on a non-standard port

```console
bump ssh://dokku@dokku.me:8022/myapp
```

### Not doing force push

By default, git push won't be forced. You can enable force-push by setting environment variable `ENABLE_FORCE_PUSH` to any value.
