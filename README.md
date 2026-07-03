# ActiveCampaign Site Tracking — GTM Web Tag Template

A Google Tag Manager web tag template for [ActiveCampaign](https://www.activecampaign.com) Site Tracking. Loads the `diffuser.js` SDK, identifies visitors by email, tracks custom events, and records page views — all without Custom HTML.

Created and maintained by [Freek Kampen](https://freekkampen.com) at [New North Digital](https://newnorth.digital?utm_source=github&utm_medium=gtm-template&utm_campaign=activecampaign-web-tag).

## Features

- **Initialisation** — loads the ActiveCampaign tracker once, configures the account, optionally enables auto page-view tracking.
- **Identify visitor** — links the current browser session to an email address so subsequent events attach to the correct ActiveCampaign contact.
- **Track event** — fires custom events with category, action, label, and value (the ActiveCampaign Event API shape).
- **Page view** — manual page-view trigger for SPA route changes.
- Built-in Consent Mode gate: follows GTM Consent Mode by default, firing only once `analytics_storage` is granted and waiting for consent otherwise.
- Native sandboxed JS — no `eval`, no Custom HTML, no third-party dependencies.
- Optional console debug logging gated behind a checkbox.

## Installation

### From the Community Template Gallery (recommended)

1. In GTM, click **Templates** → **Search Gallery**.
2. Search for **ActiveCampaign Site Tracking** by **New North Digital**.
3. Click **Add to workspace**.

### Manual import

1. Download [`template.tpl`](./template.tpl) from this repository.
2. In GTM, go to **Templates** → **Tag Templates** → **New** → ⋮ menu → **Import**.
3. Select the downloaded file and save.

## Setup

### 1. Find your Account ID

In ActiveCampaign, go to **Settings → Tracking → Site Tracking** and copy the numeric Account ID (e.g., `255304459`).

### 2. Initialisation tag (fire on all pages)

- **Action type:** Initialisation
- **Account ID:** your numeric ID
- **Track page views by default:** ✓ enabled (auto-fires page views on every load)
- **Trigger:** All Pages

### 3. Identify visitor (optional)

Fire when a logged-in user is detected or after a form submission:

- **Action type:** Identify visitor
- **Visitor email:** GTM variable returning the email
- **Trigger:** custom event (e.g., `user_logged_in`, `form_submitted`)

### 4. Track event (optional)

Fire on specific business events:

- **Action type:** Track event
- **Event category:** e.g., `ecommerce`
- **Event action:** e.g., `purchase`
- **Event label:** (optional) e.g., product name
- **Event value:** (optional) e.g., order total
- **Trigger:** the relevant dataLayer event

### 5. Page view for SPAs (optional)

If your site is a single-page app, disable "Track page views by default" on the init tag and fire a separate Page view tag on each route change.

## Consent

The tag has a built-in Consent Mode gate, set by the **Consent handling** field:

- **Follow GTM Consent Mode (`analytics_storage`)** (default) — the tag fires only once `analytics_storage` is granted. If consent is not yet given, it waits with a consent listener and fires as soon as the visitor grants it. Consent that is never configured counts as granted, so sites without Consent Mode are unaffected.
- **Fire immediately (I gate consent elsewhere)** — the tag runs right away, for when you gate consent with GTM's tag-level consent settings or a consent trigger.

ActiveCampaign Site Tracking stores cookies to recognise visitors across page views, which is why `analytics_storage` is the gating consent type.

## Field Reference

| Field | Action type | Required | Description |
| --- | --- | --- | --- |
| Account ID | Initialisation | yes | Numeric ActiveCampaign account ID |
| Track page views by default | Initialisation | no | Auto-fire page views (default on) |
| Visitor email | Identify | yes | Email of the current visitor |
| Event category | Track | yes | e.g., `ecommerce` |
| Event action | Track | yes | e.g., `purchase` |
| Event label | Track | no | Free-text label |
| Event value | Track | no | Numeric value |
| Consent handling | All | no | Follow GTM Consent Mode (`analytics_storage`) or fire immediately |
| Log to console for debugging | All | no | Verbose console output |

## Permissions

- Inject script: `https://diffuser-cdn.app-us1.com/diffuser/diffuser.js`
- Access globals: `vgo` (write + execute), `visitorGlobalObjectAlias` (write)
- Access consent: `analytics_storage` (read)
- Logging: enabled in debug environment only

## Resources

- [ActiveCampaign Site Tracking docs](https://www.activecampaign.com/learn/site-tracking)
- [ActiveCampaign Event Tracking docs](https://www.activecampaign.com/learn/event-tracking)

## Author

Created and maintained by [Freek Kampen](https://freekkampen.com) at [New North Digital](https://newnorth.digital?utm_source=github&utm_medium=gtm-template&utm_campaign=activecampaign-web-tag) — analytics implementation and tracking architecture for ecommerce.

## License

Apache 2.0 — see [LICENSE](./LICENSE).
