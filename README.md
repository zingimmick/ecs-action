# GithubAction for Easy Coding Standard

## Usage

You can use it as a Github Action like this:

_.github/workflows/lint.yml_
```
on: [push, pull_request]
name: lint
jobs:
  ecs:
    name: Easy Coding Standard
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Easy Coding Standard Action
      uses: zingimmick/ecs-action@0.0.4
```

_to use a custom config for example, --fix and --clear-cache option:_
```diff
on: [push, pull_request]
name: lint
jobs:
  ecs:
    name: Easy Coding Standard
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Easy Coding Standard Action
      uses: zingimmick/ecs-action@0.0.4
      with:
+        version: v8.1.6
+        args: --config=ecs.yaml --fix --clear-cache
```

**You can copy/paste the .github folder (under examples/) to your project and that's all!**
