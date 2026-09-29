# Open items for the SCHEMA website

This file lists what the website still needs after the pull requests of 2026-09-28, grouped by the people who can supply it.
Each item names the file it concerns.
Remove an item when it is done, and remove this file when the list is empty.

## Nikolai Matni's group at Penn

- Chris Verhoek: a square photo to replace the placeholder `img/people/ChrisVerhoek.jpg`, keeping the file name.
  Three public photos exist: the Eindhoven portrait at https://research.tue.nl/files-asset/174104683/reduced_Verhoek_Chris_EE_PO_VH_3857.jpg, which crops to a square of 1419 pixels, and two smaller ones on https://chrisverhoek.com/.
  Chris chooses.
- Chris Verhoek: confirm the bio in `_people/chris-verhoek.markdown`, and say whether the email shown, c.verhoek@tue.nl, is the one to publish or a Penn address replaces it.
- Kyle Horton: a square photo to replace the placeholder `img/people/KyleHorton.jpg`, keeping the file name.
- Kyle Horton: an email, one sentence on his research, and any website, Scholar or GitHub link, for `_people/kyle-horton.markdown`.
- Nikolai Matni: `_bibliography/pi/matni.bib` holds one paper, the CDC 2026 paper by Verhoek and Matni. Further SCHEMA papers go into the same file.

## Gioele Zardini's group at MIT

- Loreta Arzumanyan: confirm the bio in `_people/loreta-arzumanyan.markdown`, in particular the sentence on her research and its part in SCHEMA.
- Vincent Abbott: confirm the bio in `_people/vincent-abbott.markdown`, and say whether the program reads "CEE" or "Systems Engineering & CEE".

## George Pappas's group at Penn

- Pull request 1 by Charis Stamouli is open against `preview`. Two optional changes: point the `url` fields of `_bibliography/pi/pappas.bib` at the arXiv abstract pages instead of the PDFs, and delete `img/people/AlumniExample.jpg`, which the pull request leaves behind.
- Nobody else from the group has sent a profile or a publication.

## AFOSR and AFRL

- Logos: `afosr_logo.png`, `afrl_logo.png` and `afosr_afrl_logo.png` at the repository root are drawn placeholders, shown on the home page and in the footer.
  Official AFRL wordmarks are on DVIDS, "AFRL Primary Logos", images 8347728 to 8347734, at about 2500 pixels wide, behind a DVIDS login.
  The heraldic emblems of both organisations are on Wikimedia Commons as public-domain files, https://commons.wikimedia.org/wiki/File:Air_Force_Research_Laboratory.svg and https://commons.wikimedia.org/wiki/File:AF_Office_of_Scientific_Research.png, the second only 285 pixels wide.
  No AFOSR wordmark file was found online.
  Fred Leve suggested asking his colleagues.
  Gioele chooses the style, and someone with a DVIDS account or a browser on https://www.afrl.af.mil/AFOSR/ fetches the files.
- Roles: Jared Culbertson asks what the official roles of Matt Klawonn, Scott Nivison and himself are on the project, for example "AFRL Technical Directorate Sponsors, Leads or Contacts".
  Gioele decides the wording, and the title lines of `_people/matt-klawonn.markdown`, `_people/scott-nivison.markdown` and `_people/jared-culbertson.markdown` follow.
- Frederick Leve: `img/people/FrederickLeve.jpg` is 341 by 511 pixels and not square. A square photo from Fred, or a crop of the existing one, fixes the list on the People page.
  The phone numbers he sent have no field in the profile template and are not shown.

## The repository itself

- The instructions in `CONTRIBUTING.md` ask for pull requests into `main`, and the repository has no `main` branch. Pull requests target `preview` for now, and `CONTRIBUTING.md` should say so or `main` should be created.
- No check runs on a pull request. `.github/workflows/pages.yml` runs on push only, and nothing runs `verify_integrity_of_bib_file.py`, which also compares against the missing `origin/main`. A workflow with a `pull_request` trigger would make the promise in `CONTRIBUTING.md` true.
- `vendor/` with about 28,000 files and the generated `_site/` are tracked. Bundler and Jekyll regenerate both, and the Pages workflow installs the gems itself.
- The Pages workflow deploys `preview` on every push, so a merge into `preview` publishes at once. A profile with a placeholder photo is visible on the live site as soon as its pull request is merged.
