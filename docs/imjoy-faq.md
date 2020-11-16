# FAQ

## Plugin running on wrong engine

You have several options

* Disconnect or delete the engine the plugin is connecting to see [here](#managing-plugin-engines)).
* In the plugin menu (clicking on the little puzzle symbol left of the plugin name), select the appropriate engine.

## Remove conda environment

At one point, your conda environment might get corrupted. You can easily remove it, and create a new one

1. Open anaconda terminal
0. **Activate base environment**: `conda deactivate`
0. **Remove `fq-imjoy` environment**: `conda env remove --name fq-imjoy`

## Specify your own Jupyter token

You can specify your own token `yourtoken`

``` bash
imjoy --jupyter --token yourtoken
```

When launched like this, you will not get the full Jupyter URL in the terminal, but `http://localhost:8888/?token=...`.

When copying this link to the ImJoy app for the first time you have to replace the `...` by the token you actually specified.

The next time you start jupyter with `imjoy --jupyter` your custom token will be used.