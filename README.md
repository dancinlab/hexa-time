# ⏰ hexa-time — n=6 time substrate (HEXA family)

> 3-verb time substrate organized around the **n=6 invariant lattice**:
> HOROLOGY / CLOCKWORK / CALENDAR. Spec-first extraction from
> `canon` (commit `c0f1f570`) integrating escapement (τ=4 phase)
> canonics, bell-ratio harmonic canonics, and calendar 6-cycle / time-
> geography. Working `.hexa` simulators are TBD post-v1.0.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-informational.svg)](CHANGELOG.md)
[![Verbs: 0/3 wired (spec-first)](https://img.shields.io/badge/verbs-0%2F3_wired_(spec--first)-orange.svg)](#verbs)
[![n=6 lattice](https://img.shields.io/badge/n%3D6-σ%3D12_τ%3D4_φ%3D2_J₂%3D24-purple.svg)](#why)

---

## Why

**`hexa-time` is the n=6 time substrate.** It composes three sister verbs into
one coherent time module:

- **escapement (τ=4 phase)** — the divisor-count invariant `τ(6)=4` of the n=6
  lattice maps onto the four-phase escapement cycle that is the canonical
  oscillator regulator across mechanical, quartz, and atomic horology.
- **bell ratio** — bell-clockwork harmonic canonics encode the ratio family
  that drives both campanology and the gear-train transmission ratios used
  in striking clocks.
- **calendar 6-cycle** — calendar-time-geography composes the divisor lattice
  `σ(6)=12, τ(6)=4, φ(6)=2, J₂(6)=24` into an atlas of calendar systems
  (12-month / 4-week-quarter / 2-equinox / 24-hour).

Together these three verbs form one **time substrate** where measurement
(horology), transmission (clockwork), and indexing (calendar) compose under a
single n=6 invariant.

## Verbs

| Verb        | Status         | n=6 lattice              | Spec file                                  |
| ----------- | -------------- | ------------------------ | ------------------------------------------ |
| horology    | SPEC v1.0.0    | τ(6)=4 phase             | `horology/horology.md`                     |
| clockwork   | SPEC v1.0.0    | bell ratio canonics      | `clockwork/bell-clockwork.md`              |
| calendar    | SPEC v1.0.0    | 6-cycle geometry         | `calendar/calendar-time-geography.md`      |

Verdict: **SPEC_FIRST** (0/3 verbs empirically wired; 3/3 specs imported
verbatim from `canon`).

## Status

3-verb 시간 substrate. **spec-first** (working `.hexa` CLI TBD).
escapement (τ=4 phase) + bell ratio + calendar 6-cycle integration.

- v1.0.0 ships **spec documents only**. The CLI placeholder
  (`cli/hexa-time.hexa`) routes to `status` / `selftest` / per-verb spec-head
  printers; full empirical simulators (escapement ODE, bell-ratio audit,
  calendar generator) are deferred to post-v1.0 cycles.
- n=6 invariant lattice (`σ(6)=12, τ(6)=4, φ(6)=2, J₂(6)=24`) is **inherited**
  from `canon@c0f1f570`. Verb-specific empirical audits within
  `hexa-time` itself are deferred.
- No cross-link dependencies. This repo is **self-sufficient** — runs from
  any checkout root with `HEXA_TIME_ROOT` set or auto-inferred.

## Install

### Via `hx` (when registered)

```bash
hx install hexa-time          # global, pulls latest from registry
hexa-time --version           # → 1.0.0
```

### Via git clone (works today)

```bash
git clone https://github.com/need-singularity/hexa-time.git ~/.hexa-time
export HEXA_TIME_ROOT=~/.hexa-time
export PATH="$HEXA_TIME_ROOT/cli:$PATH"

# Run any subcommand:
hexa run $HEXA_TIME_ROOT/cli/hexa-time.hexa selftest
hexa run $HEXA_TIME_ROOT/cli/hexa-time.hexa status
hexa run $HEXA_TIME_ROOT/cli/hexa-time.hexa horology
```

## License

MIT — see [LICENSE](LICENSE).

---

**Provenance**: extracted from
[`canon`](https://github.com/need-singularity/canon)
@ commit `c0f1f570` on 2026-05-06.
