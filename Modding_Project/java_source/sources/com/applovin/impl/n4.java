package com.applovin.impl;

import com.vungle.ads.internal.model.Cookie;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class n4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3446a;
    private final Class b;
    public static final n4 c = new n4("com.applovin.sdk.impl.isFirstRun", String.class);
    public static final n4 d = new n4("com.applovin.sdk.launched_before", Boolean.class);
    public static final n4 e = new n4("com.applovin.sdk.launch_count", Long.class);
    public static final n4 f = new n4("com.applovin.sdk.last_launch_timestamp", Long.class);
    public static final n4 g = new n4("com.applovin.sdk.latest_installed_version", String.class);
    public static final n4 h = new n4("com.applovin.sdk.install_date", Long.class);
    public static final n4 i = new n4("com.applovin.sdk.user_id", String.class);
    public static final n4 j = new n4("com.applovin.sdk.compass_random_token", String.class);
    public static final n4 k = new n4("com.applovin.sdk.applovin_random_token", String.class);
    public static final n4 l = new n4("com.applovin.sdk.alart", String.class);
    public static final n4 m = new n4("com.applovin.sdk.aleid", String.class);
    public static final n4 n = new n4("com.applovin.sdk.device_test_group", String.class);
    public static final n4 o = new n4("com.applovin.sdk.compliance.has_user_consent", Boolean.class);
    public static final n4 p = new n4("com.applovin.sdk.compliance.is_age_restricted_user", Boolean.class);
    public static final n4 q = new n4("com.applovin.sdk.compliance.is_do_not_sell", Boolean.class);
    public static final n4 r = new n4("com.applovin.sdk.has_seen_but_not_accepted_privacy_policy", Boolean.class);
    public static final n4 s = new n4("IABTCF_CmpSdkID", Object.class);
    public static final n4 t = new n4("IABTCF_CmpSdkVersion", Object.class);
    public static final n4 u = new n4(Cookie.IABTCF_GDPR_APPLIES, Object.class);
    public static final n4 v = new n4("IABTCF_TCString", String.class);
    public static final n4 w = new n4("IABTCF_AddtlConsent", String.class);
    public static final n4 x = new n4("IABTCF_VendorConsents", String.class);
    public static final n4 y = new n4("IABTCF_VendorLegitimateInterests", String.class);
    public static final n4 z = new n4("IABTCF_PurposeConsents", String.class);
    public static final n4 A = new n4("IABTCF_PurposeLegitimateInterests", String.class);
    public static final n4 B = new n4("IABTCF_SpecialFeaturesOptIns", String.class);
    public static final n4 C = new n4("com.applovin.sdk.impl.ad.persistence.queue", String.class);
    public static final n4 D = new n4("com.applovin.sdk.mediation.signal_providers", String.class);
    public static final n4 E = new n4("com.applovin.sdk.mediation.auto_init_adapters", String.class);
    public static final n4 F = new n4("com.applovin.sdk.persisted_data", String.class);
    public static final n4 G = new n4("com.applovin.sdk.mediation.test_mode_enabled", Boolean.class);
    public static final n4 H = new n4("com.applovin.sdk.mediation.should_use_applovin_adaptive_sizing_formula", Boolean.class);
    public static final n4 I = new n4("com.applovin.sdk.user_agent", String.class);
    public static final n4 J = new n4("com.applovin.sdk.last_fullscreen_ad_timestamp_ms", Long.class);
    public static final n4 K = new n4("com.applovin.sdk.last_fullscreen_ad_duration_ms", Long.class);
    public static final n4 L = new n4("com.applovin.sdk.app_killed_urls_from_last_ad", String.class);
    public static final n4 M = new n4("com.applovin.sdk.app_killed_last_ad_data", String.class);
    public static final n4 N = new n4("com.applovin.sdk.template_browser_package_name", String.class);

    public n4(String str, Class cls) {
        this.f3446a = str;
        this.b = cls;
    }

    public String a() {
        return this.f3446a;
    }

    public Class b() {
        return this.b;
    }

    public String toString() {
        return "Key{name='" + this.f3446a + "', type=" + this.b + AbstractJsonLexerKt.END_OBJ;
    }
}
