# Edinburgh Trip App

Static GitHub Pages shell for the Edinburgh trip app.

The app is intentionally a plain `index.html` so it can be published directly with GitHub Pages and shared without a backend. The current page is a live placeholder that confirms the public link works while the itinerary, map, accommodation notes, and trip-planning components are built out.

## Local Serving

Run:

```bash
./start.sh
```

The script follows App Hub's port convention. It first uses the `edinburgh` entry in `/home/gh/app_hub/apps.json` when available, then falls back to the frontend side of the next free App Hub-style port pair.

## Public Hosting

GitHub Pages is configured for this repository:

```text
https://drmedrme.github.io/app_edinburgh/
```

Current Pages setup:

```text
Source: Deploy from a branch
Branch: main
Folder: /
Status: built
```

## Public Data Boundary

Keep the checked-in app free of personal information. The public repo can safely contain placeholder itinerary data, venue links, map coordinates, packing checklists, and public travel notes.

Do not commit attendee names, phone numbers, private accommodation addresses, booking references, or ticket QR codes.
