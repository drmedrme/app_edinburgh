# Edinburgh Festival Shortlist

Static GitHub Pages app for shortlisting Edinburgh Festival shows.

The app is intentionally a plain `index.html` so it can be published directly with GitHub Pages and shared without a backend. The current version is a framework for finding daytime festival shows in two-hour windows.

## Show Selection Criteria

The main shortlist should prioritise shows that meet as many of these signals as possible:

- Known director, company, writer, performer, or creative team.
- Preferably five-star reviewed.
- Reviewed by a credible outlet, ideally nationally or by a major arts/review publication.
- Evidence that the show is returning after a strong previous Edinburgh run or similar festival success.
- Fits the daytime plan between 10:00 and 18:00.

Shows that are promising but miss one of those requirements should go under `Other Shows`. That includes strong reviews without a known director, excellent options outside the daytime window, and shows that need more review evidence before becoming a priority match.

## Seeded Show Examples

The current page includes real 2026 examples to show how the data should be captured:

- `Boiler Room Six: A Titanic Story` - 11:00, returning production, five-star signal on the Fringe listing.
- `ALONE` - 13:35, returning production, multiple five-star signals and awards on the Fringe listing.
- `Stay A Little Longer` - 15:00, known creative-team signal, but needs current reviews.
- `Police Cops: The Original` - 17:35, returning production, 20+ five-star review claim on the Fringe listing.
- `Tell Me` - 19:00, strong company/review signal but outside the daytime window.
- `1 Hour of Insane Magic` - five-star signal and prior Edinburgh history, but exact daytime fit needs checking.

Treat these as a starter dataset, not final recommendations. Review claims should be verified against the linked source before booking.

## Filters

The app currently supports three simple filters:

- Star rating: all, five-star signal, four-star signal, or no current star signal.
- Edinburgh history: all, prior Edinburgh / returning, first time or new show, or history to confirm.
- Time window: all, each daytime two-hour block, outside daytime plan, or time to confirm.

## Planning Windows

The daytime shortlist is organised into these two-hour blocks:

```text
10:00-12:00
12:00-14:00
14:00-16:00
16:00-18:00
```

Each block should eventually hold one primary candidate and, where useful, a nearby backup.

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
