# instar-personality-peter-griffin

A character-persona engine for [Project Instar](https://github.com/thegman54/project-instar)
that lets a bot talk in the voice of Peter Griffin — short loud declaratives, the
cutaway-tangent engine, confident wrongness, instant enthusiasm.

> **Unofficial fan persona.** Peter Griffin is a fictional character created by Seth
> MacFarlane and owned by Twentieth Century Fox. This repository is an independent
> character study for a personal assistant persona. It is not affiliated with,
> authorised by, or endorsed by the rights holders, and it reproduces no script text
> beyond short, widely-quoted catchphrases.

## Architecture

This personality engine uses **18 trait categories** across **6 layers**, backed by **4 database tables** for different types of personality data:

### Layers

| Layer | Name | Categories | Purpose |
|-------|------|------------|---------|
| 1 | **Foundation** | identity, values, worldview | Core beliefs — always active |
| 2 | **Expression** | voice, lexicon, tone, emphasis, humor | Shapes every response |
| 3 | **Strategy** | rhetoric, social, narrative, authority, deflection | How interactions are conducted |
| 4 | **Reactive** | reaction, situational | Triggered by conversational context |
| 5 | **Reference** | signature, quote | Catchphrases and recurring lines |
| 6 | **Constraints** | boundary | Guardrails and limits |

### Data Stores

| Table | Purpose |
|-------|---------|
| `personality_peter_griffin_traits` | 18-category behavioral traits with examples and anti-examples |
| `personality_peter_griffin_quotes` | Catchphrases and recurring lines with source attribution |
| `personality_peter_griffin_lexicon` | Vocabulary fingerprint — words to favor, avoid, and use situationally |
| `personality_peter_griffin_reactions` | Trigger-to-response pattern mappings by context |

### Key Character Features

- **The tangent engine** — the cutaway-comparison device encoded as voice and narrative traits
- **Catchphrase discipline** — short widely-quoted lines only, no script reproduction
- **Profit-driven worldview** — every interaction filtered through commerce
- **Nasal, wheedling vocal quality** — conveyed through word choice and rhythm
- **Reluctant heroism** — denies bravery while consistently being brave

## Installation

This is a skill package for Project Instar. Upload it via the Admin UI or place it in the skills directory.

```bash
# Clone
git clone https://github.com/thegman54/instar-personality-peter-griffin.git

# Import seed data via admin panel YAML import
# or load directly into the database
```

## Tools

| Tool | Purpose |
|------|---------|
| `personality_peter_griffin_read` | Load traits, quotes, lexicon, and reactions by category and situation |
| `personality_peter_griffin_list` | List available categories, counts, and data store stats |

## Seed Data

`data/peter_griffin_profile.yaml` contains a comprehensive starter profile with:
- 60+ traits across all 18 categories with detailed voice and behavior rules
- 8 catchphrases with context and usage guidance
- 50+ lexicon entries (favored words, avoided words, signatures, dismissals, nicknames)
- 14 reaction patterns covering criticism, praise, challenges, negotiation, and more

## License

MIT

## Sourcing

Canonical biographical facts (brewery job, Quahog, family, the season 4 IQ result,
the giant chicken feud) come from the character's encyclopaedia entry. Catchphrases
are recorded as **recurring catchphrases without invented episode citations** — where
no reliable source names an episode, none is claimed. Everything else is written as a
behavioural instruction rather than as a quotation.

## Contents

| Store | Entries |
|---|---|
| traits | 68 across 20 categories |
| quotes | 8 |
| lexicon | 16 |
| reactions | 10 |

## Install

```bash
zip -r instar-personality-peter-griffin.zip . -x '.git/*'
# Upload via the Instar admin Skills page
```

Then set the profile's **Personality** field to `skill:personality_peter_griffin`.
