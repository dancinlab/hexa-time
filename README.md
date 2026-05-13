# ⏰ hexa-time — n=6 time substrate (HEXA family)

> 3-verb time substrate organized around the **n=6 invariant lattice**:
> HOROLOGY / CLOCKWORK / CALENDAR. Spec-first extraction from
> `canon` (commit `c0f1f570`) integrating escapement (τ=4 phase)
> canonics, bell-ratio harmonic canonics, and calendar 6-cycle / time-
> geography. Working `.hexa` simulators are TBD post-v1.0.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20102626.svg)](https://doi.org/10.5281/zenodo.20102626)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-informational.svg)](CHANGELOG.md)
[![Verbs: 0/3 wired (spec-first)](https://img.shields.io/badge/verbs-0%2F3_wired_(spec--first)-orange.svg)](#verbs)
[![Closure: SPEC_FIRST 3/3](https://img.shields.io/badge/closure-SPEC__FIRST_3%2F3-brightgreen.svg)](#verify)
[![n=6 lattice](https://img.shields.io/badge/n%3D6-σ%3D12_τ%3D4_φ%3D2_J₂%3D24-purple.svg)](#why)
[![Policy: LATTICE_POLICY](https://img.shields.io/badge/policy-LATTICE__POLICY-blue.svg)](LATTICE_POLICY.md)
[![Limits: real-physics first](https://img.shields.io/badge/limits-real--physics_first-informational.svg)](LIMIT_BREAKTHROUGH.md)

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

```bash
# 1. Install hexa-lang (gives you `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install hexa-time
hx install hexa-time
```

## Run

```bash
hexa-time horology            # escapement / oscillator phase canonics (τ=4)  [SPEC]
hexa-time clockwork           # bell ratio / harmonic canonics                [SPEC]
hexa-time calendar            # calendar 6-cycle / time-geography             [SPEC]
hexa-time status              # 3-verb spec table + verdict + caveats
hexa-time selftest            # 3-verb spec sentinel sweep
hexa-time --version           # show version
hexa-time --help              # full usage
```

## Verify

Spec-first closure (3/3) is attested by four `.hexa` verify scripts under
[`verify/`](verify/). Run the aggregate sweep:

```bash
hexa run verify/run_all.hexa     # exit 0 = all 4 scripts PASS
```

| # | Script | What it checks |
|---|--------|----------------|
| 1 | `verify/spec_presence.hexa`       | 3/3 verb spec docs (horology · clockwork · calendar) present at declared paths |
| 2 | `verify/lattice_arithmetic.hexa`  | n=6 self-consistency (σ·φ = n·τ = J₂ = 24; 1/2 + 1/3 + 1/6 = 1) — **aux only**, per [`LATTICE_POLICY.md`](LATTICE_POLICY.md) §1.3 |
| 3 | `verify/real_limits_anchor.hexa`  | [`LIMIT_BREAKTHROUGH.md`](LIMIT_BREAKTHROUGH.md) anchors L1–L7 (c, atomic-clock stability, Heisenberg, SR/GR, leap-second, tropical year, Shannon) + NIST/BIPM/IERS/IAU sourcing |
| 4 | `verify/closure_consistency.hexa` | scoreboard cross-check (CLI SPEC_* decls = `hexa.toml` `verbs_total` = README badge = 3); standard artifacts present |

**Honesty obligations** (raw#10 C3 + [`LATTICE_POLICY.md`](LATTICE_POLICY.md) §3.3):

- NIST (NIST-F2 caesium ~1e-16), BIPM (TAI/UTC), USNO, NPL, PTB, IERS use
  **their own definitions** (SI second via Cs-133 hyperfine, optical-lattice
  Yb/Sr ~1e-18, σ_y Allan-deviation). No `hexa-time` claim asserts these
  bodies fit n=6.
- Speed of light *c* (L1) and Heisenberg ΔE·Δt ≥ ℏ/2 (L3) are HARD walls —
  no verb output can exceed them. No FTL synchronisation claim allowed.
- **Time travel is UNPROVEN.** Closed timelike curves (CTCs) remain
  hypothetical (Gödel 1949, Tipler 1974, Thorne wormholes); no
  experimental evidence exists. Causality preservation is strict in this
  substrate.
- Planck time *t_P* ≈ 5.39 × 10⁻⁴⁴ s is the shortest physically meaningful
  interval; sub-Planck-time intervals carry no operational meaning.
- The 12-month / 24-hour / 4-quarter calendar is **cultural-historical**
  (Roman / Babylonian inheritance), NOT a physics derivation from n=6.
  Tropical year 365.2422 d (IAU 2015) is the actual physical anchor.

## License

MIT — see [LICENSE](LICENSE).

---

**Provenance**: extracted from
[`canon`](https://github.com/dancinlab/canon)
@ commit `c0f1f570` on 2026-05-06.
