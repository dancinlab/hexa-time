#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "bell_clockwork" :: identity-claim [d=2026-05-14 active]
  kind = "N6 종/시계 기계학 (Bell & Clockwork Mechanics) -- 통합 목표"
  brief = "**비전**: n=6 완전수 산술이 시계 기구학과 종(鐘) 음향학의 근본 비율을 조직하는 설계 경로 전수 탐색"
  parent = "dancinlab/hexa-time"
  sibling-md = "BELL-CLOCKWORK.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in BELL-CLOCKWORK.md.
# New per-domain history entries land here as typed events:
#
#   @A commit_<hash> :: <domain> [d=<YYYY-MM-DD> ok]
#     <- <prev-id>
#     => "<one-line description>"
#
#   @D <id> := "<decision-name>" :: <domain> [<grades>]
#     <- <evidence-id>
#     |> <verifier>
#
# See ~/core/tape/spec/tape.md for full grammar.
