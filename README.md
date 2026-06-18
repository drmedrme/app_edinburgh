# Edinburgh Festival Planner

Static itinerary board for an Edinburgh Festival trip.

The app is intentionally a plain `index.html` so it can be published directly with GitHub Pages and shared with the group without a backend. Editable status fields, notes, checklist state, and attendee names are stored in each browser's local storage; they are not committed or synchronized.

## Local Serving

Run:

```bash
./start.sh
```

The script follows App Hub's port convention. It first uses the `edinburgh` entry in `/home/gh/app_hub/apps.json` when available, then falls back to the frontend side of the next free App Hub-style port pair.

## Public Hosting

This planner is designed for GitHub Pages:

```text
https://drmedrme.github.io/app_edinburgh/
```

After the GitHub repo exists, enable Pages from the repository settings using:

```text
Source: Deploy from a branch
Branch: main
Folder: /
```

## Public Data Boundary

Keep the checked-in planner free of personal information. The public repo can safely contain placeholder itinerary data, venue links, map coordinates, packing checklists, and public travel notes.

Do not commit attendee names, phone numbers, private accommodation addresses, booking references, or ticket QR codes. Use the in-browser attendee and notes fields for local working data only.
