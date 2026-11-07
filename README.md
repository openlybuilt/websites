# Openly websites

This repository pins the three website repositories and combines their production builds for Cloudflare Pages static hosting. The root site is served at `/`, Cua at `/cua/`, and Design at `/design/` (including `/design/components`).

Initialize the submodules and build with Node.js and pnpm installed:

```sh
git submodule update --init --recursive
sh build.sh
```

Upload the resulting `dist/` directory to the `openly-websites` Pages project as a new production deployment. Update the submodule pins when a new website revision should be released, then rebuild and redeploy. A direct upload is not automatically updated when a source repository changes. The included Wrangler configuration also permits deploying the build as a Worker if needed.
