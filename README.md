# SCHEMA

Website for **SCHEMA** — Scalable Compositional Hierarchies for Evolvable Multi-agent Architectures, an AFOSR/AFRL University Center of Excellence (FY25 CODAC program). Prime: MIT. Partners: Caltech, UC Berkeley, University of Pennsylvania.

Built with Jekyll + jekyll-scholar, hosted on GitHub Pages (thanks to the original lab template).

## Contributing

See **[CONTRIBUTING.md](CONTRIBUTING.md)** for step-by-step instructions for center members (publications, profiles, news, and the pull-request workflow).

## Local preview with Docker

Install and start [Docker Desktop](https://www.docker.com/products/docker-desktop/) (using Linux containers), or Docker Engine with the Compose plugin on Linux. No local Ruby installation is needed.

From this repository's root, run:

```sh
docker compose up --build
```

Open **http://localhost:4000**. Edit files in your usual editor; Jekyll rebuilds and LiveReload refreshes the browser. Restart with `docker compose restart` after changing `_config.yml`. Stop with Ctrl+C, then `docker compose down` to remove the container.

## Editing content

- **Pages:** `index.md` (home layout in `_layouts/home.html`), `Research.html` (Vision), `People.html`, `events.html`, `Publications.html`, `news.html`.
- **People:** one file per person in `_people/`. Set `position:` to one of `pi`, `afosr`, `postdoc`, `student`, `alumni`. The Lead PI is the `pi` entry with `lead: true`. Photos go in `img/people/`.
- **News:** edit `_data/news.yml`.
- **Publications:** each PI edits their own `_bibliography/pi/<name>.bib` (see `_bibliography/pi/README.md`). A build plugin merges them into the full list.

## Deployment / repo name

Once the GitHub repo is created, set `baseurl` and `url` in `_config.yml` (a TODO note there explains the two cases). The canonical URL is `https://schema.mit.edu`.

## Logos

`schema_logo.png` and the partner logos (`caltech_logo.png`, `berkeley_logo.png`, `penn_logo.png`, `afosr_logo.png`) are **placeholders** — replace with official artwork. `mit_logo.png` and `lids_logo.png` are the real logos.
