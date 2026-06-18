# Edinburgh Festival Shortlist

Static GitHub Pages app for shortlisting Edinburgh Festival shows.

The app is intentionally a plain `index.html` so it can be published directly with GitHub Pages and shared without a backend. The current version is a framework for building the Edinburgh week around show slots, dinner slots, and review-led shortlisting.

## Trip Slot Model

Use six two-to-three-hour slots across Saturday to Thursday:

```text
Slot 1: 10:00-12:00
Slot 2: 12:00-14:00
Slot 3: 14:00-16:00
Slot 4: 16:00-18:00
Slot 5: 18:00-21:00 dinner
Slot 6: 21:00-24:00 late show / music / wildcard
```

The first Friday starts from 17:00 and should use three slots only: an early arrival/show slot, the protected dinner slot, and a late show or wildcard.

Assume one hour for daytime performances and either 30 minutes or a specific walking-time check between shows.

## Show Selection Criteria

The main shortlist should prioritise shows that meet as many of these signals as possible:

- Slot availability.
- Multiple reputable five-star reviews, ideally from 2025 or 2024.
- Known director, company, writer, performer, producer, or creative team.
- Reputable producer signal, for example Francesca Moody.
- Insider or preview picks from credible sources such as Time Out, Guardian, Times, Scotsman, or similar.
- Bias toward theatre, comedic theatre, and music over stand-up and circus.
- Priority consideration for Fringe, Traverse Theatre, and EIF.
- Evidence that the show is returning after a strong previous Edinburgh run or similar festival success.

Shows that are promising but miss one of those requirements should go under `Other Shows`. That includes strong reviews without a known director, excellent options that conflict with dinner, and shows that need more review evidence before becoming a priority match.

Allow two to four weird wildcard shows, but label them as wildcards so they remain deliberate choices.

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

The app currently supports five simple filters:

- Star rating: all, five-star signal, four-star signal, or no current star signal.
- Edinburgh history: all, prior Edinburgh / returning, first time or new show, or history to confirm.
- Time window: all, each slot, dinner time, late slot, or time to confirm.
- Genre bias: theatre, comedic theatre, music, stand-up, circus / magic, or wildcard.
- Programme: Fringe, Traverse, EIF, or outside the priority list.

## Dinner Planning

Dinner is slot 5. The target is restaurant dinners Saturday to Thursday for eight people:

- Mix well-rated about GBP100/head and about GBP50/head options.
- Keep restaurants within a 20-minute walk of Edinburgh Playhouse / Greenside.
- Allow one wildcard restaurant with a longer walk.
- Do not include Leith restaurants unless the group explicitly overrides the brief.

The page currently includes a couple of restaurant candidate examples to demonstrate the data shape, not final booking recommendations. Verify availability, distance, and suitability for a table of eight before booking.

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
