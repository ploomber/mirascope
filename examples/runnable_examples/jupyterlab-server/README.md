# Jupyterlab Server instance for mkdocs-thebe

This folder contains the necessary files for deploying a JupyterLab instance to use as the kernel for `mkdocs-thebe` runnable examples.
The JupyterLab instance is already configured. To get runnable examples working simply deploy the kernel and add the base URL to your docs.

## Deploying

Ensure you have Ploomber Cloud installed:

```sh
pip install ploomber-cloud
```

Initialize your project as a docker project:

```sh
ploomber-cloud init
```

Now deploy:

```sh
ploomber-cloud deploy
```

## Configuring mkdocs-thebe

Ensure your environment is updated to include `mkdocs-thebe`:

```sh
poetry show mkdocs-thebe
```

You should see:

```sh
name         : mkdocs-thebe 
 version      : 0.1.0        
 description  :
```

If not, re-install the dependencies:

```sh
poetry install --with dev
```

In the `mkdocs.yml` for your docs, you should see `mkdocs-thebe` under plugins:

```
plugins:
    mkdocs-thebe:
        # endpoint to the server that manages Python processes
        baseUrl: "https://endpoint.domain.io"
```

Change the `baseUrl` to the URL of your deployed Jupyterlab instance.

## Testing

[basic-example.md](../basic-example.md) contains a basic usage of runnable examples. The most important part is the interact button:

```
[Interact](#){ .md-button .small-button #activate-interactivity }
```

Feel free to copy-paste the code into your existing docs, or add it as its own page to test it out.
