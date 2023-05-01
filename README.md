# static resume generator

This repo is completely based on the resume generator [resume-cli](https://github.com/jsonresume/resume-cli) from jsonresume.

# prerequisites

The prerequisites are different depending on your workflow.
To interact with node directly you need the following dependencies:
- `node`
- `npm`

If you want to use the taskfile you need the `task` binary as well.

Another option is to use `docker` to build the Dockerfile and then use that to render the resume.

# get started

To initialize a resume use `npm run init`.
After that you can run `npm run serve` to host the resume locally with hot reloading capabilities in order to work on it.
Once you are done with your resume and you decided on a theme you can create the final resume artifacts using either `npm run exportPdf` or `npm run exportHtml`.
You can also use the taskfile. This helps because it allows to substitute the imageUrl in the rendered resume.html. This is not natively supported by jsonResume.
The artifacts created can be respectively found under `rendered/resume.html` and `rendered/resume.pdf`.

## taskfile

To get a list of supported tasks just run `task` in the root of the repository


# themes

Themes you want to use need to be installed first.
[Here](https://www.npmjs.com/search?ranking=maintenance&q=jsonresume-theme) you can find the available themes and previews are available [here](https://jsonresume.org/themes/).

## example

1. install theme

   ```
   npm install jsonresume-theme-elegant
   ```

2. use the theme

- Set the variable `.config.theme` in the file `package.json`

# json schema

The json schema with allowed options can be found [here](https://jsonresume.org/schema/).

# want to work in yaml?

## convert json to yaml

```
yq --output-format=yaml --prettyPrint resume.json > resume.yaml
```

## convert yaml back to json to use it for the render step

```
yq --output-format=json --prettyPrint resume.yaml > resume.json
```