# Edinburgh Festival Shortlist

Static GitHub Pages app for shortlisting Edinburgh Festival shows.

The app is intentionally a plain `index.html` so it can be published directly with GitHub Pages and shared without a backend. The current version is a working planning board for the Edinburgh week starting Friday 7 August 2026, with day links, show slots, dinner slots, and review-led shortlisting.

## Current Trip Dates

The public app currently plans Day 1 to Day 7:

```text
Day 1: Friday 7 August 2026 - arrival from 17:00
Day 2: Saturday 8 August 2026
Day 3: Sunday 9 August 2026
Day 4: Monday 10 August 2026
Day 5: Tuesday 11 August 2026
Day 6: Wednesday 12 August 2026
Day 7: Thursday 13 August 2026
```

The day-by-day plan uses real 2026 show listings and real restaurant suggestions, but nothing in the repo is a booking confirmation. Treat every show, table, and walking transfer as needing a final check before purchase or reservation.

The day-by-day plan should not repeat show titles. If there is not enough confidence for a slot yet, leave it as a review hold rather than recycling an earlier recommendation.

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
- Multiple reputable four- or five-star reviews, ideally from 2025 or 2024.
- FringeReview `Outstanding` or `Unmissable` notices from 2025 or 2024.
- Known director, company, writer, performer, producer, or creative team.
- Reputable producer signal, for example Francesca Moody.
- Insider or preview picks from credible sources such as Time Out, Guardian, Times, Scotsman, or similar.
- Bias toward theatre, comedic theatre, music, inventive European physical theatre, political comedy, Scottish musicals, literary improv, and cabaret with strong production value.
- Priority consideration for Fringe, Traverse Theatre, and EIF.
- Evidence that the show is returning after a strong previous Edinburgh run or similar festival success.

Shows that are promising but miss one of those requirements should go under `Other Shows`. That includes strong reviews without a known director, excellent options that conflict with dinner, and shows that need more review evidence before becoming a priority match.

Allow two to four weird wildcard shows, but label them as wildcards so they remain deliberate choices.

## Contributor Taste Profile

Use these prior favourites as a tie-breaker when candidates are otherwise close:

- `The Ice Hole` / `Fishbowl` style visual and physical theatre.
- `Funeral` by Ontroerend Goed and similar Belgian / European experimental theatre.
- `Dimanche` style word-light, design-led physical theatre.
- `Ahir Shah` and politically sharp comedy.
- `England & Son` / Mark Thomas-style political theatre.
- `Sunshine on Leith` and Scottish musical theatre.
- `Trainspotting` adaptations.
- Jane Austen spoofs, improv, and literary comedy.
- Reuben Kaye / Kaye Hole-style late cabaret.

## Seeded Show Examples

The current page includes real 2026 examples to show how the data should be captured:

- `Boiler Room Six: A Titanic Story` - 11:00, returning production, five-star signal on the Fringe listing.
- `ALONE` - 13:35, returning production, multiple five-star signals and awards on the Fringe listing.
- `Stay A Little Longer` - 15:00, known creative-team signal, but needs current reviews.
- `Police Cops: The Original` - 17:35, returning production, 20+ five-star review claim on the Fringe listing.
- `ROLEPLAY` - 17:50, Francesca Moody producer signal and national preview picks, but needs reviews.
- `Ahir Shah: Golden` - 19:30, direct contributor taste match, five-star prior-review signal, dinner conflict.
- `Sunshine on Leith` - 19:10, direct contributor taste match, five-star sell-out Scottish musical.
- `Trainspotting Live` - various evening times, direct contributor taste match, returning immersive production.
- `Austentatious` - 12:50, Jane Austen improv/spoof match with five-star and four-star signals.
- `Hard to Swallow: Reuben Kaye` - 20:00, closest first-week Reuben Kaye / Kaye Hole match.
- `Mark Thomas: 40 in Stand-Up Years` - 18:00, closest 2026 match for the `England & Son` preference.
- `The Jolly Fisherman` - 12:45, Guardian preview pick, but needs reviews.
- `An Audience with Virginia Woolf: Writing One's Mind` - 11:00, Fringe First-winning director and five-star Off-Broadway signal.
- `An Ode to the Casting Director` - 12:00, returning five-star sell-out show and Fringe Theatre Award winner.
- `The Big Bite-Size Breakfast Show` - morning / various times, FringeReview and WhatsOnStage five-star signals.
- `Medicine` - EIF / Traverse option at 20:00 or 14:00 depending on date.
- `Supposing:` - Traverse world premiere by Zinnie Harris, strong known-director signal, availability risk.
- `Collaborator` - 17:00, Ockham's Razor physical theatre / circus with known-company signal.
- `NON HUMAN ANIMAL` - 16:00, Kat Woods known-creator signal, reviews pending.
- `Stamptown` - 21:50, late variety / clown / cabaret with Chortle five-star and Guardian four-star signals.
- `Shamilton! The Improvised Hip-Hop Musical` - 19:50, improv musical with five-star and four-star signals.
- `The Real Housewives of the Zombie Apocalypse` - 19:35, Scottish high-camp satire with five-star and four-star signals.
- `Schalk Bezuidenhout: Hey Hey Divorcè` - 21:00, international stand-up with EdFringeReview five-star signal.
- `The Singer` - Traverse late music-theatre option with music and lyrics by KT Tunstall, availability risk.
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
- Prefer independent Edinburgh restaurants with a sense of place.
- Avoid hotel restaurants, London-familiar chains, and generic national chains.
- Keep restaurants reasonably close to Edinburgh Playhouse / Greenside unless the meal is explicitly worth a longer walk.
- Allow one wildcard restaurant with a longer walk.
- Do not include Leith restaurants unless the group explicitly overrides the brief.

The page currently includes real restaurant suggestions used in the day plan:

- `Timberyard` - named GBP100/head guidance pick and independent Edinburgh destination restaurant.
- `Lucky Yu` - named GBP50/head guidance pick on Broughton Street.
- `Noto` - independent Edinburgh small-plates restaurant from Stuart Ralston.
- `L'Escargot Bleu` - independent Broughton Street French restaurant and wine bar.
- `The Little Chartroom` - independent Edinburgh restaurant with lunch, pre-theatre, and dinner options.
- `The Olive Branch` - Broughton Street bistro; tables of seven or more require direct contact.
- `LaSal` - independent Spanish restaurant opposite Edinburgh Playhouse, good arrival-night candidate.
- `The Dome` - central Edinburgh set-piece wildcard with private dining capacity.
- `Edinburgh Street Food` - independent-vendor, no-chain casual fallback rather than a formal dinner.

Verify availability, distance, and suitability for a table of eight before booking.

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
