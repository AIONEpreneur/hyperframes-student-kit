# Kirsten Biema — Visual Identity („KI, aber richtig“)

Ground truth: das Live-CSS von [kirstenbiema.com](https://www.kirstenbiema.com)
(`assets/redesign/site.css`, „approved Paper / Violet identity“). Jede Komposition
für Kirstens Videos MUSS Farben, Typografie und Motion auf diese Datei zurückführen.
Die CSS-Variablen liegen in `assets/kb-brand-tokens.css`.

## Style Prompt

Kirsten Biema ist Business-Mentorin für Solo-Unternehmerinnen: „Dein Business braucht
dich, aber nicht rund um die Uhr.“ Die Marke wirkt **ruhig, klar, warm und kompetent**,
wie ein aufgeräumter Schreibtisch mit gutem Licht. Warmes Papierweiß, tiefe
Tinten-Schrift und genau **ein** kräftiges Violett, das nur das Wichtige markiert.
Viel Luft, großzügige Ränder, weiche Rundungen. Kein Tech-Neon, kein Kontrollraum,
kein Hype. Die Grafiken erklären und entlasten. Sie sollen nicht beeindrucken wollen.

## Colors

| Token | Hex | Rolle |
|---|---|---|
| `--kb-paper` | `#faf9f6` | Standard-Hintergrund (warmes Papierweiß) |
| `--kb-warm` | `#f0ede7` | Karten und Panels auf Papier |
| `--kb-surface` | `#ffffff` | Erhöhte Karte, Lower-Third-Plate |
| `--kb-lavender` | `#e9e2ff` | Highlight-Flächen, Chips, Callout-Boxen |
| `--kb-line` | `#e0dbe7` | Haarlinien, Trenner, Rahmen |
| `--kb-ink` | `#242226` | Primärtext, zugleich dunkle Leinwand für Takeovers |
| `--kb-muted` | `#706d76` | Sekundär- und Meta-Text |
| `--kb-violet` | `#7050e8` | **Die** Akzentfarbe: Schlüsselwörter, Zahlen, CTAs, das ✳ |
| `--kb-violet-deep` | `#583ac9` | Schattenseite des Violetts, gedrückte Zustände |
| `--kb-violet-soft` | `#c7b9fc` | Violett auf dunklem Grund, weiche Flächen |
| `--kb-apricot` | `#ffd5b8` | Warmer Zweitakzent, sparsam einsetzen |

**Zwei Modi:**
- **Paper (Standard):** `--kb-paper`-Grund, `--kb-ink`-Text, Violett als Akzent.
  Für Erklär-Karten, Listen, Zitate, Lower-Thirds.
- **Ink (Takeover/Kontrast):** `--kb-ink`-Grund, Papierweiß-Text, `--kb-violet-soft`
  oder `--kb-violet` als Akzent. Nur für Kapitelmarker, große Zahlen und den
  Hook, also Momente mit Gewicht. Höchstens etwa ein Drittel der Takeovers.

Faustregel: Violett markiert pro Bild **ein** Wort oder **eine** Zahl. Headlines
sind Tinte, und das entscheidende Wort darin wird violett (`<em>` ohne Kursiv,
wie auf der Website).

## Typography

- **Space Grotesk (Medium 500, Wortmarke 700):** Headlines, große Zahlen, Kapitelmarker.
  Enges Tracking: bei 1920×1080 Headlines ca. −0.035em (Website h1: −2.7px bei 74px).
  Zeilenhöhe 1.08–1.16.
- **Manrope (400 / 700 / 800):** Fließtext, Untertitel, Captions, Button-Text.
  Zeilenhöhe 1.5–1.8.
- **Eyebrow/Kicker:** Manrope 800, UPPERCASE, Letter-Spacing 0.17em, klein, violett.
  Das ist das Hausmuster: Eyebrow über Space-Grotesk-Headline.
- **Space Mono:** nur für Code, Prompts, Terminal- und Tool-Screens.

Alle drei sind Google Fonts. Für den finalen Render lokal einbinden (siehe README-Hinweis
zu CDNs), damit HyperFrames nicht auf Ersatzschriften ausweicht.

Größen bei 1920×1080: Headline Takeover 110–150px, Headline Karte 64–80px,
Body 34–40px, Eyebrow 20–22px, Caption 44–52px. Bei 1080×1920 (Reel) Headline
90–120px, Caption 56–64px.

## Logo / Wortmarke

- Die Marke ist eine **Wortmarke in Kleinbuchstaben**: `kirsten biema✳`.
  Space Grotesk 700, Tracking ca. −0.06em, Text in `--kb-ink` (auf dunklem
  Grund Papierweiß). Das **✳ steht in `--kb-violet`** und leicht größer als der Text.
- Wird als Live-Text gesetzt (keine Grafikdatei nötig). Das ✳ ist das Markenzeichen
  und darf als eigenes Motiv auftauchen: als Bullet, als rotierender Übergang oder als
  Loader. Es bleibt immer violett.
- Claim: „KI, aber richtig“.
- Freiraum: mindestens die Versalhöhe rundherum. Nicht verzerren, keine Glows,
  keine Verläufe.

## Formen & Komponenten

- **Karten:** `--kb-warm` oder `--kb-surface`, Radius 14px, optional 1px `--kb-line`.
  Keine harten Schatten; höchstens `0 12px 25px rgba(36,34,38,0.04)`.
- **Callout-Panel:** `--kb-lavender`, Radius 20px, viel Innenabstand.
- **Button/CTA:** gefülltes `--kb-violet`, weißer Manrope-700-Text, Radius 8px,
  Pfeil `↗` am Ende. Beispiel: `Lass uns sprechen ↗`.
- **Chip/Tag:** `--kb-lavender`-Pille, violetter Manrope-700-Text.
- **Portrait-Rahmen (Signatur):** asymmetrischer Radius `120px 16px 16px 16px`,
  also oben links stark gerundet. Gut für Bild-in-Bild von Kirsten und für B-Roll-Fenster.
- **Lower-Third:** weiße oder papierfarbene Plate, Radius 8px, Name in Space Grotesk,
  Rolle in Manrope `--kb-muted`, kleines violettes ✳ davor.
- **Captions (Reels/Shorts):** Manrope 800, Tinte auf halbtransparenter Papier-Plate
  (`rgba(250,249,246,0.92)`) oder Weiß mit weicher Kontur auf Footage. Das aktive
  Wort wird violett, Wort für Wort, zeitgenau am Transkript.

## Motion Rules

Der Ton ist **gelassen und präzise**, also langsamer als der Sizzle-Stil aus
`MOTION_PHILOSOPHY.md`. Lehrinhalte brauchen Luft.

- **Nur Eingänge** über `gsap.from()`. Ausgänge übernehmen die Übergänge.
- **Easing-Palette:** `power3.out` (Standard), `expo.out` (Headlines),
  `back.out(1.2)` (nur Chips/✳, dezent), `sine.inOut` (Ambient),
  `power2.inOut` (Übergänge). Mindestens zwei verschiedene Eases pro Szene.
- **Dauern:** kleine Elemente 0.4–0.6s, Headlines 0.7–1.0s, Ambient-Drifts 3–5s.
  Erste Animation 0.15–0.3s nach Szenenstart.
- **Text:** Headlines wortweise, Stagger 0.08–0.12s, von `y: 24, opacity: 0`.
  Das violette Schlüsselwort kommt zuletzt und bekommt einen kleinen Extra-Moment
  (z. B. Unterstreichung, die von links wächst).
- **Zahlen:** Count-up mit `snap`, `font-variant-numeric: tabular-nums`, Zahl violett.
- **Das ✳:** darf sich 90° mit `power3.out` drehen, wenn es erscheint. Kein Dauer-Rotieren.
- Nach dem Aufbau jedes Elements mindestens 1.5s stehen lassen, damit man es lesen kann.

## Transitions

| Szenenwechsel | Übergang | Dauer | Ease |
|---|---|---|---|
| Standard (ca. 70 %) | Weicher Push/Slide nach links | 0.5s | `power2.inOut` |
| Kapitelwechsel | Wipe mit Violett-Fläche (Papier → Violett → Papier) | 0.6s | `power3.inOut` |
| Zum Outro/CTA | Blur-Crossfade | 0.6s | `sine.inOut` |

Keine Zoom-Punches, keine Glitches, keine Flashes.

## What NOT to Do

1. **Kein Neon, kein Cyan, keine Tech-Gradients.** Palette: Papier, Tinte, Violett,
   Lavendel und sparsam Apricot. Sonst nichts.
2. **Keine vollflächigen linearen Verläufe** (H.264-Banding). Stattdessen einfarbige
   Flächen, höchstens eine sehr weiche radiale Lavendel-Aura hinter dem Fokus.
3. **Kein Violett für Fließtext** und nicht mehr als ein violetter Fokus pro Bild.
4. **Keine anderen Schriften** (kein Inter, Montserrat, Roboto, Arial als Gestaltungsmittel).
5. **Keine Kursivschrift für Betonung.** Betonung heißt Violett (wie `<em>` auf der Website).
6. **Kein reines Schwarz `#000` und kein reines Weiß als Hintergrund.** Tinte `#242226` und Papier `#faf9f6` verwenden.
7. **Kein `transparent` in Gradients.** `rgba(250,249,246,0)` verwenden.
8. **Kein `Math.random()` / `Date.now()`**, damit der Render deterministisch bleibt.
9. **Keine Grafik über Kirstens Gesicht.** Tier-2-Karten sitzen seitlich oder unten.
10. **Keine Hektik:** kein Schnittgewitter und keine Sizzle-Pacing-Übernahme bei Lehrinhalten.

## File References

- `assets/kb-brand-tokens.css` — die `:root`-Variablen für jede Komposition
- Website: https://www.kirstenbiema.com (Referenz für Look & Tonalität)
- Vorlage/Format: `DESIGN.ais-example.md`

## Offen / bitte ergänzen

- Logo als Datei (SVG/PNG), falls es neben der Text-Wortmarke eine gibt → `assets/`
- Musik/Sound-Vorgaben (Stimmung, BPM, Bibliothek)
- Eigene Portrait-/B-Roll-Aufnahmen für Intro und Outro
