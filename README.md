<p align="center">
  <img src="docs/logo.svg" width="140" alt="hexa-time">
</p>

<h1 align="center">⏰ hexa-time</h1>

<p align="center"><strong>HEXA-Time</strong> — n=6 time substrate · horology · clockwork · calendar · escapement (τ=4) · bell ratio · 6-cycle</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue"></a>
  <a href="https://doi.org/10.5281/zenodo.20102626"><img alt="DOI" src="https://zenodo.org/badge/DOI/10.5281/zenodo.20102626.svg"></a>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-success">
  <img alt="Verbs" src="https://img.shields.io/badge/verbs-3-informational">
  <img alt="Closure" src="https://img.shields.io/badge/closure-SPEC__FIRST_3%2F3-brightgreen">
  <img alt="Lattice" src="https://img.shields.io/badge/n%3D6-σ%3D12%20·%20τ%3D4%20·%20φ%3D2%20·%20J₂%3D24-informational">
  <img alt="Family" src="https://img.shields.io/badge/family-HEXA--Time-blueviolet">
</p>

<p align="center">temporal · escapement · oscillator · gear-train · campanology · calendar · 6-cycle · spec-first · MIT</p>

---

> 3-verb time substrate organized around the **n=6 invariant lattice**:
> HOROLOGY / CLOCKWORK / CALENDAR. Spec-first extraction from
> `canon` (commit `c0f1f570`) integrating escapement (τ=4 phase)
> canonics, bell-ratio harmonic canonics, and calendar 6-cycle / time-
> geography. Working `.hexa` simulators are TBD post-v1.0.

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

```sh
# 1. Install hexa-lang (gives you `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install hexa-time
hx install hexa-time
```

## Run

```sh
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

```sh
hexa run verify/run_all.hexa     # exit 0 = all 4 scripts PASS
```

| # | Script | What it checks |
|---|---|---|
| 1 | `verify/spec_presence.hexa`       | 3/3 verb spec docs (horology · clockwork · calendar) present at declared paths |
| 2 | `verify/lattice_arithmetic.hexa`  | n=6 self-consistency (σ·φ = n·τ = J₂ = 24; 1/2 + 1/3 + 1/6 = 1) — **aux only**, per [`LATTICE_POLICY.md`](LATTICE_POLICY.md) §1.3 |
| 3 | `verify/real_limits_anchor.hexa`  | [`LIMIT_BREAKTHROUGH.md`](LIMIT_BREAKTHROUGH.md) anchors L1–L7 (c, atomic-clock stability, Heisenberg, SR/GR, leap-second, tropical year, Shannon) + NIST/BIPM/IERS/IAU sourcing |
| 4 | `verify/closure_consistency.hexa` | scoreboard cross-check (CLI SPEC_* decls = `hexa.toml` `verbs_total` = README badge = 3); standard artifacts present |

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

## Repo layout

```
hexa-time/
├── README.md                          ← this file (public landing, 18-block format)
├── LICENSE                            ← MIT
├── AGENTS.tape                        ← governance + identity (.tape v1.2)
├── CLAUDE.md                          ← symlink → AGENTS.tape
├── CHANGELOG.md                       ← release notes per version
├── RELEASE_NOTES_v1.0.0.md            ← v1.0.0 release surface
├── CITATION.cff                       ← citation metadata
├── hexa.toml                          ← repo metadata (verbs_total, version)
├── install.hexa                       ← hx install entry point
├── BELL-CLOCKWORK.md                  ← clockwork verb deep-dive
├── HOROLOGY.md                        ← horology verb deep-dive
├── LATTICE_POLICY.md                  ← project-local lattice-as-tool standard
├── LIMIT_BREAKTHROUGH.md              ← L1–L7 real-physics anchors
├── IMPORTED_FROM_CANON.md             ← extraction provenance
├── TAPE-AUDIT.md                      ← .tape adoption audit ledger
├── cli/
│   └── hexa-time.hexa                 ← CLI dispatcher (spec-first placeholder)
├── horology/                          ← escapement / oscillator spec
├── clockwork/                         ← bell-ratio / gear-train spec
├── calendar/                          ← 6-cycle / time-geography spec
├── verify/                            ← 4 hexa verify scripts (run_all.hexa aggregator)
├── tests/                             ← regression scaffold
├── papers/                            ← supporting papers
├── state/                             ← runtime markers (gitignored)
└── docs/
    └── logo.svg                       ← README header glyph
```

## License

[MIT](LICENSE) — see LICENSE file.

---

**Provenance**: extracted from
[`canon`](https://github.com/dancinlab/canon)
@ commit `c0f1f570` on 2026-05-06.
