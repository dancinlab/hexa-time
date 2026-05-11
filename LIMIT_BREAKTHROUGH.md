<!-- @created: 2026-05-12 -->
<!-- @sister: LATTICE_POLICY.md §1.2 -->
---
project: hexa-time
domain: Time substrate — 3-verb horology / clockwork / calendar bundle
limits_audited: 7
breakthrough_candidates: 3
hard_walls: 4
soft_walls: 2
unclear: 1
---

# LIMIT_BREAKTHROUGH.md — hexa-time

## §1 Domain identification

`hexa-time` is the 3-verb time substrate (horology / clockwork /
calendar). Real limits split across (a) clock stability (atomic / optical-
lattice quantum-projection noise), (b) special / general relativity
(time dilation, gravitational redshift on GPS / GNSS), (c) light-cone
causality (no faster-than-c synchronisation), and (d) cycle-counting /
calendar arithmetic (epoch reconciliation, leap-second discipline).
Many limits here are some of the *hardest* in physics — c and ℏ both
appear.

The *infrastructure* nature of hexa-time: a chronometry / calendar
modelling surface where the binding ceilings are Heisenberg-class
quantum-projection noise on the high-precision end and stellar /
orbital mechanics on the calendar end.

## §2 Real limits applicable to this project

| # | Limit | Class | Source / value | Applicability to hexa-time |
|---|-------|-------|----------------|----------------------------|
| L1 | Speed of light (causality) | physics | c = 2.998 × 10⁸ m/s; no synchronisation faster than c | HARD WALL on distributed-clock synchronisation; binds horology verb across geographically separated nodes. |
| L2 | Atomic clock stability | physics | Cs-fountain ~10⁻¹⁶ s/s; optical-lattice (Sr/Yb) ~10⁻¹⁸ s/s; quantum-projection noise floor ~10⁻²⁰ s/s with entangled atom arrays | Caps the horology verb's accuracy; ~10⁻¹⁸ is current SI-second realisation per BIPM. |
| L3 | Heisenberg / standard quantum limit | physics | ΔE · Δt ≥ ℏ/2; σ_y(τ) ≥ 1/(2πν₀ √(N · τ · T)) (SQL) for N atoms | Sets the *bottom* of L2; entanglement (Heisenberg-limit) can lower further to 1/N rather than 1/√N. |
| L4 | Special / general relativity | physics | dt/dt₀ = √(1 − v²/c²) · (1 + Φ/c²); GPS satellites need ≈ 38 μs/day correction (NIST) | Caps any sync claim that ignores frame; binds clockwork verb's transport / orbit operations. |
| L5 | Leap-second / earth-rotation drift | engineering | UT1−UTC drifts at ~1 s per ~1.5 yr (IERS); CGPM 2022 vote retires leap-second by 2035 | Caps the calendar verb's pre-/post-2035 reconciliation strategy. |
| L6 | Year length / orbital period | physics | Tropical year ≈ 365.2422 d = 31,556,925 s (IAU 2015) | Caps calendar accuracy independent of leap-second policy; binds the 6-cycle calendar atlas. |
| L7 | Shannon on time-tag encoding | math | H ≤ log₂ N; e.g., 64-bit ntp64 ⇒ ≤ 64 bit/tick of useful information | Caps how finely a finite-bit time-tag format can represent an interval; binds NTP / PTP / TAI encoding. |

(Skipped: lattice anchors `σ(6)=12 / τ(6)=4 / φ(6)=2 / J₂(6)=24` — these
are calendar / escapement organising vocabulary, NOT real time-physics
limits, per LATTICE_POLICY §1.3.)

## §3 Per-limit breakthrough assessment

| Limit | Class | Current state | Breakthrough vector | Trigger metric |
|-------|-------|---------------|---------------------|----------------|
| L1 c / causality | HARD_WALL | c is a constant | None | A verb claim of FTL sync ⇒ falsified |
| L2 Atomic clock stability | BREAKABLE_WITH_TECH | Optical-lattice SOTA ~10⁻¹⁸ s/s (NIST Sr-1, JILA SrI / JILA SrII) | Entangled-atom Heisenberg scaling, nuclear clock (²²⁹Th, Vienna 2024 / JILA 2024), better cryogenic operation | Demonstrated σ_y(τ=10⁴ s) ≤ 10⁻¹⁹ |
| L3 SQL / Heisenberg | HARD_WALL (Heisenberg) / SOFT_WALL (SQL) | SQL realised; Heisenberg limit achieved in lab arrays (N ~ 10²) | Squeezed-state / entangled atom clocks for sub-SQL operation | Heisenberg scaling 1/N demonstrated at N ≥ 10³ atoms in a clock |
| L4 Relativistic dilation | HARD_WALL | Predictable to many decimals; corrected operationally on GPS / GNSS | None for the physics; only better modelling lowers residual | GPS post-correction residual ≤ 1 ns over 24 h orbit |
| L5 Leap-second | UNCLEAR | CGPM 2022 retires by 2035; mechanism TBD (ΔUT1 tolerance widens to ~ 1 min) | Procedural / standards lever, not physical | A calendar verb that handles both pre- and post-2035 epochs cleanly |
| L6 Year length | HARD_WALL | Earth's tropical year is what it is; precesses 50.3″/yr | None — Earth's orbit is the calendar reference | n/a; calendar accuracy bound by IAU 2015 value |
| L7 Shannon on time-tag | SOFT_WALL | 64-bit ntp64; TAI / PTP higher-precision formats exist | Variable-length encoding, fixed-point + delta compression for archives | Lossless time-archive at < 8 bytes / 1-Hz sample over 1 yr |

## §4 Top-3 breakthrough opportunities (this project)

1. **L2 — Optical-lattice / nuclear clock stability.** The single most
   active frontier in chronometry. Optical-lattice clocks (Sr, Yb) sit
   at σ_y ~ 10⁻¹⁸ s/s; nuclear clocks (²²⁹Th, Vienna and JILA 2024
   results) project σ_y ~ 10⁻¹⁹ within the decade. Hexa-time's horology
   verb should cite BIPM / NIST clock reports. Concrete trigger: σ_y
   ≤ 10⁻¹⁹ at 10⁴ s averaging. Risk: medium (technological), zero
   (physics-allowed).
2. **L3 — Entangled-atom (Heisenberg) clock scaling.** Lifts the
   stability floor below SQL by replacing 1/√N with 1/N scaling. Lab
   demos exist; the bridge to deployed timekeeping is engineering.
   Risk: high.
3. **L5 — Post-2035 leap-second handling.** This is a *standards*
   breakthrough not a physics one: hexa-time's calendar verb that
   correctly handles both legacy (with-leap-seconds) and post-2035
   (wider UT1 tolerance) data avoids the kind of date-arithmetic bugs
   that cost real systems. Risk: zero (analysis-only).

## §5 Honest caveats (raw#10 C3)

- The speed of light (L1) and Heisenberg uncertainty (L3) are the two
  HARDEST walls in this entire repo bundle. No verb output can pass
  them. Period.
- Atomic clock stability has dropped ~1 order of magnitude per decade
  for ~60 years; this trend is well-documented in BIPM circulars but
  it is NOT extrapolable indefinitely — eventually Heisenberg /
  cosmological-noise floors bind.
- "Calendar 6-cycle" (12-month / 4-week-quarter / 2-equinox / 24-hour)
  is an organising vocabulary. The 12-month structure is *cultural-
  historical* (Roman calendar), not a physical fact about Earth's
  orbit. Hexa-time should not claim n=6 lattice fit "explains" the
  Gregorian calendar.
- The escapement τ=4 mapping (mechanical, quartz, atomic) is
  internal organising vocabulary; mechanical escapements have
  multi-phase variants (verge, anchor, deadbeat, coaxial) and atomic
  clocks have no escapement per se. Real horology limit is L2/L3, not
  τ(6)=4.
- Year length (L6) precesses (~50″/yr) so the *tropical* year is the
  calendar-relevant value, not the sidereal year. Mixed citations are
  a common source of small calendar errors.
- Leap-second retirement (L5) is a 2022 CGPM resolution, not yet a
  fully-defined replacement protocol. Honest framing of the 2035
  transition is warranted.

## §6 References

- `LATTICE_POLICY.md` §1.2 (universal real-limits standard, 2026-05-12)
- BIPM Circular T — TAI / UTC realisation (monthly)
- NIST Time and Frequency Division — Sr-1 optical lattice clock
- JILA / NIST — Sr / Yb optical-lattice clock results
- IAU 2015 Resolution B2 — astronomical constants (tropical year, AU)
- IERS Bulletin A — UT1−UTC, leap-second announcements
- CGPM 27th Conference (2022) — Resolution 4 on leap-second retirement
- Einstein (1905, 1915), Heisenberg (1927), Allan (1966 — σ_y)
- Beeksma et al., *Nature* 2024 (²²⁹Th nuclear clock)
