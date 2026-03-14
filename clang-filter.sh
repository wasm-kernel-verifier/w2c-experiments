#!/usr/bin/env bash
set -euo pipefail

SELF="$(readlink -f "$0")"

REAL_CLANG_PATH="/usr/bin/clang-20"

out_args=()
has_sanitize_trap=0
warned_conserve=0
dropped_warnings=0

for a in "$@"; do
  case "$a" in
    -fsanitize=bounds-strict)
      out_args+=("-fsanitize=array-bounds")
      ;;
    -fsanitize=bounds)
      out_args+=("-fsanitize=array-bounds")
      ;;
    -fmin-function-alignment=*)
      val="${a#*=}"
      out_args+=("-falign-functions=${val}")
      ;;
    -fconserve-stack|-fno-conserve-stack)
      if [ "$warned_conserve" -eq 0 ]; then
        echo "clang-filter: dropping unsupported option ${a}" >&2
        warned_conserve=1
      fi
      ;;
    -mrecord-mcount)
        echo "clang-filter: stripping -mrecord-mcount" >&2
      ;;
    -fsanitize-trap*|-fsanitize-trap=*|--fsanitize-trap*)
      has_sanitize_trap=1
      out_args+=("$a")
      ;;
    -fsanitize=local-bounds)
      out_args+=("$a")
      ;;
    -fsanitize=*)
      out_args+=("$a")
      ;;
    -Wno-maybe-uninitialized)
      out_args+=("-Wno-uninitialized")
      ;;
    -Wimplicit-fallthrough=*|-Wimplicit-fallthrough)
      out_args+=("-Wimplicit-fallthrough")
      ;;
    -Wno-alloc-size-larger-than*|-Walloc-size-larger-than*)
      echo "clang-filter: dropping unsupported warning option ${a}" >&2
      dropped_warnings=1
      ;;
    -Wno-*|-W*)
      out_args+=("$a")
      ;;
    *)
      out_args+=("$a")
      ;;
  esac
done

if [ "$has_sanitize_trap" -eq 1 ]; then
  need_local=1
  for x in "${out_args[@]}"; do
    case "$x" in -fsanitize=local-bounds) need_local=0; break;; esac
  done
  [ "$need_local" -eq 1 ] && out_args+=("-fsanitize=local-bounds")
fi

out_args+=("-Wno-unknown-warning-option")
out_args+=("-march=native")
exec "$REAL_CLANG_PATH" "${out_args[@]}"