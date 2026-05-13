# TAPE-AUDIT — hexa-time

**Date:** 2026-05-14 · **Lens:** `.tape` (typed events + 11 types).

## A. Audit-class ledgers

`state/markers/*.marker` — uniform dancinlab boot-hook markers (5 checks, single timestamp each), **CARGO**. No `.jsonl`, no audit scripts.

## B. Identity surface

`hexa.toml` no `[identity]`. Substrate, not per-agent.

## C. Domain.md files

**2 UPPERCASE.md** — `BELL-CLOCKWORK.md` (23 KB, n=6 mechanical-clock theory) and `HOROLOGY.md` (20 KB, horological reference). Both follow `<UPPERCASE>(+<UPPERCASE>)*.md` convention semantically; light adoption but real.

## D. Per-run / per-event history

None — only the static reference docs above. No per-tick / per-event timekeeping stream.

## E. Promotion candidates

- **n6 atoms** (LIGHT): clock-tooth / escapement / σ(6)=12 mechanical invariants — `BELL-CLOCKWORK.md` already plays this game.
- **`.tape` future fit**: per-clock-event histories (tick / drift-measurement / sync) would be `@H`+`@K` consumers. Pre-impl.
- **hxc / n12**: none.

## Verdict

**LIGHT** — 2 domain.md files (BELL-CLOCKWORK, HOROLOGY) is the only real surface beyond cargo markers. Verb-stub substrate. Future per-clock measurement stream is the obvious `.tape` site.
