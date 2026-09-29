# SCHEMA per-PI bibliographies

Each PI keeps a single BibTeX file in this folder, named after them:

- `zardini.bib`
- `jadbabaie.bib`
- `ames.bib`
- `sangiovanni-vincentelli.bib`
- `matni.bib`
- `pappas.bib`

## How to contribute

1. Edit **only your own** `<name>.bib` file.
2. Add standard BibTeX entries (`@article`, `@inproceedings`, `@book`, `@misc`, `@techreport`, `@phdthesis`, `@patent`, `@unpublished`, `@report`, ...).
3. Commit and push. The website rebuilds and regenerates the full, merged publication list automatically.

Useful `keywords` flags (optional):

- `keywords = {sub}` — under submission (shown under *Preprints* / excluded from the main list)
- `keywords = {press}` — in press
- `keywords = {prep}` — in preparation

## How the merge works

At build time, `_plugins/merge_bib.rb` merges entries from every `*.bib` file in
this folder into `_bibliography/schema.bib`, which `jekyll-scholar` reads
(configured in `_config.yml`). The merged file is auto-generated — **do not edit
it by hand**. Commit your per-PI source file when updating publications.

**Only `zardini.bib` is filtered by grant.** To include an entry from that file,
add `schema` to its `grants` field:

```bibtex
  grants = {schema, nsf-career}
```
