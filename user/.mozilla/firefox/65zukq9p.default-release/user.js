/*  ----------------------------------------------------------------------------
	This file contains custom configuration for Firefox.

	Some settings have been copied from https://github.com/amq/firefox-debloat
	under the terms of the MIT license.

	The MIT License (MIT)

	Copyright (c) 2015 amq

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.

	Some settings have been copied from https://github.com/arkenfox/user.js
	under the terms of the MIT license.

	MIT License

	Copyright (c) 2020 arkenfox

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.

	------------------------------------------------------------------------- */

user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.contentblocking.category", "custom");
user_pref("browser.ctrlTab.recentlyUsedOrder", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSearch", true);
user_pref("browser.newtabpage.activity-stream.topSitesRows", 2);
user_pref("browser.newtabpage.pinned", "[]");
user_pref("browser.search.region", "GB");
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.startup.homepage", "about:home");
user_pref("browser.tabs.drawInTitlebar", true);
user_pref("browser.tabs.warnOnClose", false);
user_pref("distribution.openSUSE.bookmarksProcessed", true);
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_ever_enabled", true);
user_pref("gfx.webrender.all", true);
user_pref("loop.enabled", false);
user_pref("media.autoplay.default", 5);
user_pref("media.peerconnection.ice.default_address_only", true);
user_pref("mozilla.widget.use-argb-visuals", true);
user_pref("network.cookie.cookieBehavior", 1);
user_pref("permissions.default.desktop-notification", 2);
user_pref("permissions.default.xr", 2);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("signon.generation.enabled", false);
user_pref("signon.rememberSignons", false);

// -----------------------------------------------------------------------------
// Disable telemetry
// -----------------------------------------------------------------------------

user_pref("datareporting.healthreport.service.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);

// -----------------------------------------------------------------------------
// Disable pocket integration
// -----------------------------------------------------------------------------

user_pref("browser.pocket.enabled", false);

// -----------------------------------------------------------------------------
// Disable form autofill
// -----------------------------------------------------------------------------

user_pref("browser.formfill.enable", false);
user_pref("signon.autofillForms", false);
