# `hexa-time` v1.0.0 — initial standalone extraction

**Release date**: 2026-05-06
**License**: MIT
**Provenance**: extracted from `canon@c0f1f570`

## Overview

`hexa-time` is the **n=6 time substrate** of the HEXA family — a 3-verb
spec-first integration of:

- **horology** (escapement / oscillator phase canonics, τ(6)=4)
- **clockwork** (bell ratio / harmonic canonics)
- **calendar** (calendar 6-cycle / time-geography, σ=12, τ=4, φ=2, J₂=24)

The n=6 invariant lattice composes measurement (horology) + transmission
(clockwork) + indexing (calendar) into a single time module.

## Contents

| Path                                     | Provenance                                                         |
| ---------------------------------------- | ------------------------------------------------------------------ |
| `horology/horology.md`                   | `canon/domains/culture/horology/horology.md`             |
| `clockwork/bell-clockwork.md`            | `canon/domains/culture/bell-clockwork/bell-clockwork.md` |
| `calendar/calendar-time-geography.md`    | `canon/domains/infra/calendar-time-geography/...`        |
| `cli/hexa-time.hexa`                     | NEW placeholder router (sister-of-pattern: `hexa-bio/cli/`)        |
| `install.hexa`                           | NEW (sister-of-pattern: `hexa-bio/install.hexa`)                   |
| `hexa.toml`                              | NEW (name=hexa-time, license=MIT, 3 specs)                         |
| `tests/test_selftest.hexa`               | NEW (sentinel sweep)                                               |
| `LICENSE`                                | NEW (MIT)                                                          |
| `CHANGELOG.md`                           | NEW                                                                |

## Honest scope (raw#10 C3)

- **0/3 verbs empirically wired**. v1.0.0 ships spec documents only.
- Working `.hexa` simulators (escapement ODE, bell-ratio audit, calendar
  generator) are TBD post-v1.0.
- n=6 invariant lattice is **inherited** from `canon@c0f1f570`;
  verb-specific empirical audits within `hexa-time` are deferred.
- Spec content is **verbatim** extraction (no normative changes applied
  during extraction).

## Quickstart

```bash
git clone https://github.com/dancinlab/hexa-time.git ~/.hexa-time
export HEXA_TIME_ROOT=~/.hexa-time
hexa run $HEXA_TIME_ROOT/cli/hexa-time.hexa status
hexa run $HEXA_TIME_ROOT/cli/hexa-time.hexa selftest
```

## Roadmap (post-v1.0, indicative)

- v1.1.0 — wire `horology` escapement phase ODE (τ(6)=4 demonstrator)
- v1.2.0 — bell-ratio audit (clockwork harmonic canonics)
- v1.3.0 — calendar 6-cycle generator (σ=12 / τ=4 / φ=2 / J₂=24 atlas)

## Cost

- $0 (Mac local; pure spec read + sentinel print)
