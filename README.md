# test-templates

useful cmd

``` bash
gh cache ls --json id -q '.[].id' | %{ gh cache delete $_ }
```

## ideal case

PR to dev -> PR dev to main -> tag_release workflow triggers (creating tag/release) -> Once release is created trigger docker-build.yml workflow

## when should docker-build.yml trigger?

It should trigger when a release is created, and when PRs are created/updated

