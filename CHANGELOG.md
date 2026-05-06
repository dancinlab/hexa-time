# Changelog

All notable changes to `hexa-time` will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] — 2026-05-06

### Added
- Initial standalone extraction from `n6-architecture@c0f1f570`.
- 3 verb spec documents (verbatim copy):
  - `horology/horology.md` ← `domains/culture/horology/horology.md`
  - `clockwork/bell-clockwork.md` ← `domains/culture/bell-clockwork/bell-clockwork.md`
  - `calendar/calendar-time-geography.md` ← `domains/infra/calendar-time-geography/calendar-time-geography.md`
- `cli/hexa-time.hexa` placeholder router with subcommands:
  `status`, `horology`, `clockwork`, `calendar`, `selftest`, `help`,
  `--version`, `--json`.
- `install.hexa` post-install hook (selftest sentinel sweep, warn-only).
- `hexa.toml` package manifest (name=hexa-time, license=MIT, 3 specs).
- `tests/test_selftest.hexa` minimal sentinel test.
- MIT LICENSE.

### Status
- `SPEC_FIRST`: 0/3 verbs empirically wired; 3/3 specs imported verbatim.
- Working `.hexa` simulators (escapement ODE, bell-ratio audit, calendar
  generator) deferred to post-v1.0 cycles.

### Provenance
- `extracted_from = "n6-architecture@c0f1f570 on 2026-05-06"`
