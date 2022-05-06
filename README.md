# Orphan branch to create binder image

https://gist.github.com/seanbuscay/5877413

## Create branch in Github
```
git checkout --orphan binder
git rm -rf .
# now add the requirements.txt file
git commit -a -m "add requirements.txt"
git push origin binder
```

## Usage in ImJoy plugin:

Add

```
{"type": "binder", "spec": "fish-quant/fq-imjoy/binder", "skip_requirements": true}
```

to `env` of your plugin config
