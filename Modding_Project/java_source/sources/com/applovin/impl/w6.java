package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class w6 {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3804a;
        final /* synthetic */ com.applovin.impl.adview.a b;
        final /* synthetic */ com.applovin.impl.sdk.k c;

        public a(String str, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
            this.f3804a = str;
            this.b = aVar;
            this.c = kVar;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof AppLovinWebViewActivity) {
                ((AppLovinWebViewActivity) activity).loadUrl(this.f3804a, null);
                l2.c(this.b.e(), this.b.g(), this.b.i());
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof AppLovinWebViewActivity) {
                l2.a(this.b.e(), this.b.g(), this.b.i());
                this.c.e().b(this);
            }
        }
    }

    public static boolean a(Uri uri, Context context, com.applovin.impl.sdk.k kVar) {
        return a(uri, (com.applovin.impl.sdk.ad.b) null, context, kVar);
    }

    public static boolean b(Uri uri) {
        return uri != null && "applovin".equalsIgnoreCase(uri.getScheme()) && AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(uri.getHost()) && "/adservice/deeplink".equals(uri.getPath());
    }

    public static void c(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        String emptyIfNull = StringUtils.emptyIfNull(uri.getQueryParameter("error"));
        String emptyIfNull2 = StringUtils.emptyIfNull(uri.getQueryParameter("exception"));
        String emptyIfNull3 = StringUtils.emptyIfNull(uri.getQueryParameter("details"));
        HashMap<String, String> hashMap = CollectionUtils.hashMap("source", emptyIfNull);
        CollectionUtils.putStringIfValid("top_main_method", emptyIfNull2, hashMap);
        CollectionUtils.putStringIfValid("details", emptyIfNull3, hashMap);
        if (bVar != null) {
            hashMap.putAll(a2.a((AppLovinAdImpl) bVar));
            hashMap.putAll(a2.a(bVar));
        }
        kVar.E().d(y1.B0, hashMap);
    }

    public static boolean a(Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.k kVar) {
        return a(uri, null, bVar, context, kVar);
    }

    public static void b(Uri uri, final com.applovin.impl.sdk.ad.b bVar, final com.applovin.impl.sdk.k kVar) {
        final String queryParameter = uri.getQueryParameter("url");
        if (!StringUtils.isValidString(queryParameter)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find resource URL to preload from query parameters");
            }
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), CollectionUtils.map("error", "Invalid URL"));
        } else if (bVar == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Cannot preload resource: ad is null");
            }
            Map map = CollectionUtils.map("error", "Invalid ad reference");
            map.put(DownloadModel.RESOURCE_URL, queryParameter);
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map);
        } else {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("UriUtils", "Attempting to preload resource: " + queryParameter);
            }
            kVar.q0().a((w4) new f6(kVar, false, "preloadResource", new Runnable() { // from class: com.applovin.impl.Xxxx
                @Override // java.lang.Runnable
                public final void run() {
                    w6.a(com.applovin.impl.sdk.k.this, queryParameter, bVar);
                }
            }), r5.b.CACHING);
        }
    }

    public static boolean a(Uri uri, String str, com.applovin.impl.sdk.ad.b bVar, Context context, com.applovin.impl.sdk.k kVar) {
        boolean z = false;
        String str2 = null;
        if (uri == null) {
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.external_redirect_failure"), null);
            return false;
        }
        try {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.d("UriUtils", "Opening URI: " + uri);
            }
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            str2 = StringUtils.defaultIfEmpty(str, a(intent, uri, bVar, context));
            intent.setPackage(str2);
            kVar.m0().pauseForClick();
            context.startActivity(intent);
            z = true;
        } catch (Throwable th) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = kVar.O();
                O2.a("UriUtils", "Unable to open \"" + uri + "\".", th);
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("url", uri.toString());
            hashMap.put("name", str2);
            if (bVar != null) {
                hashMap.putAll(a2.a((AppLovinAdImpl) bVar));
                hashMap.putAll(a2.a(bVar));
            }
            if ("play.google.com".equals(uri.getHost())) {
                CollectionUtils.putStringIfValid("details", (String) kVar.B().L().get("ps_version"), hashMap);
            }
            kVar.E().a("UriUtils", "openUri", th, hashMap);
        }
        if (!z) {
            kVar.m0().resumeForClick();
        }
        AppLovinBroadcastManager.sendBroadcast(new Intent(z ? "com.applovin.external_redirect_success" : "com.applovin.external_redirect_failure"), CollectionUtils.map("url", uri));
        return z;
    }

    private static String a(Intent intent, Uri uri, com.applovin.impl.sdk.ad.b bVar, Context context) {
        if (!"market".equals(intent.getScheme()) && !"play.google.com".equals(uri.getHost())) {
            if ("https".equals(intent.getScheme()) && bVar != null) {
                if (bVar.l1()) {
                    String G = com.applovin.impl.sdk.l.G();
                    if (a(G, context)) {
                        return G;
                    }
                }
                for (String str : bVar.X()) {
                    if (a(str, context)) {
                        return str;
                    }
                }
            }
            return null;
        }
        if (Boolean.FALSE.equals(a(context))) {
            return "com.android.vending";
        }
        return null;
    }

    private static boolean a(String str, Context context) {
        return (TextUtils.isEmpty(str) || context.getPackageManager().getLaunchIntentForPackage(str) == null) ? false : true;
    }

    public static void a(Uri uri, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
        com.applovin.impl.adview.b f = aVar.f();
        String queryParameter = uri.getQueryParameter("n");
        if (TextUtils.isEmpty(queryParameter)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find url to load from query in original uri");
            }
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.external_redirect_failure"), null);
            return;
        }
        o4 p0 = kVar.p0();
        n4 n4Var = n4.N;
        String str = (String) p0.a(n4Var, null);
        if (uri.getQueryParameterNames().contains("browser")) {
            String queryParameter2 = uri.getQueryParameter("browser");
            String str2 = TextUtils.isEmpty(queryParameter2) ? null : queryParameter2;
            if (Boolean.parseBoolean(uri.getQueryParameter("retain_browser"))) {
                kVar.p0().b(n4Var, str2);
            }
            str = str2;
        }
        String queryParameter3 = uri.getQueryParameter("load_type");
        if ("external".equalsIgnoreCase(queryParameter3)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("UriUtils", "Loading new page externally: " + queryParameter);
            }
            a(queryParameter, str, aVar, kVar);
        } else if ("internal".equalsIgnoreCase(queryParameter3)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = kVar.O();
                O2.a("UriUtils", "Loading new page in WebView: " + queryParameter);
            }
            f.loadUrl(queryParameter);
            JSHookAop.loadUrl(f, queryParameter);
            String queryParameter4 = uri.getQueryParameter("bg_color");
            if (StringUtils.isValidString(queryParameter4)) {
                f.setBackgroundColor(Color.parseColor(queryParameter4));
            }
        } else if ("in_app".equalsIgnoreCase(queryParameter3)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O3 = kVar.O();
                O3.a("UriUtils", "Loading new page in slide-up webview: " + queryParameter);
            }
            kVar.e().a(new a(queryParameter, aVar, kVar));
            Intent intent = new Intent(com.applovin.impl.sdk.k.o(), AppLovinWebViewActivity.class);
            intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, kVar.i0());
            intent.setFlags(268435456);
            com.applovin.impl.sdk.k.o().startActivity(intent);
        } else if ("in_app_v2".equalsIgnoreCase(queryParameter3)) {
            aVar.a(aVar.g(), aVar.i(), (Uri) null, f.getAndClearLastClickEvent(), (Bundle) null);
            if (aVar.h() != null) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O4 = kVar.O();
                    O4.a("UriUtils", "Loading new page in Custom Tabs: " + queryParameter);
                }
                kVar.A().a(queryParameter, aVar, kVar.u0());
                return;
            }
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O5 = kVar.O();
                O5.a("UriUtils", "Custom Tabs not supported, loading new page externally: " + queryParameter);
            }
            a(queryParameter, str, aVar, kVar);
        } else {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("UriUtils", "Could not find load type in original uri");
            }
        }
    }

    public static void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        String queryParameter = uri.getQueryParameter("n");
        if (URLUtil.isValidUrl(queryParameter)) {
            String appendQueryParameter = StringUtils.appendQueryParameter(queryParameter, "clcode", bVar.getClCode());
            kVar.e0().e(com.applovin.impl.sdk.network.d.b().d(appendQueryParameter).a(false).b(Boolean.parseBoolean(uri.getQueryParameter("fire_from_webview"))).a());
            return;
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.b("UriUtils", "Could not find postback url to fire from query in original uri: " + uri);
        }
    }

    public static Bundle a(Uri uri) {
        Bundle bundle = new Bundle();
        for (String str : uri.getQueryParameterNames()) {
            bundle.putString(str, uri.getQueryParameter(str));
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.k kVar, String str, com.applovin.impl.sdk.ad.b bVar) {
        com.applovin.impl.sdk.ad.b bVar2;
        try {
            com.applovin.impl.sdk.m H = kVar.H();
            Context o = com.applovin.impl.sdk.k.o();
            bVar2 = bVar;
            try {
                String a2 = H.a(com.applovin.impl.sdk.k.o(), str, bVar.getCachePrefix(), bVar.c0(), true, H.a(str, bVar2), bVar2.i0(), a2.a((AppLovinAdImpl) bVar2));
                if (a2 != null) {
                    String uri = Uri.fromFile(H.a(a2, o)).toString();
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = kVar.O();
                        O.a("UriUtils", "Successfully cached resource at: " + uri);
                    }
                    Map map = CollectionUtils.map(DownloadModel.RESOURCE_URL, str);
                    map.put("cached_url", uri);
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_success"), map);
                    return;
                }
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = kVar.O();
                    O2.k("UriUtils", "Failed to cache resource: " + str);
                }
                Map map2 = CollectionUtils.map("error", "Failed to cache resource");
                map2.put(DownloadModel.RESOURCE_URL, str);
                AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map2);
            } catch (Throwable th) {
                th = th;
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("UriUtils", "Exception while caching resource", th);
                }
                Map map3 = CollectionUtils.map("url", str);
                map3.putAll(a2.a((AppLovinAdImpl) bVar2));
                map3.putAll(a2.a(bVar2));
                kVar.E().a("UriUtils", "handlePreload", th, map3);
                Map map4 = CollectionUtils.map("error", "Internal error while caching");
                map4.put(DownloadModel.RESOURCE_URL, str);
                AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.preload_failure"), map4);
            }
        } catch (Throwable th2) {
            th = th2;
            bVar2 = bVar;
        }
    }

    private static void a(String str, String str2, com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
        a(Uri.parse(str), str2, aVar.g(), aVar.f().getContext(), kVar);
        l2.b(aVar.e(), aVar.g(), aVar.i());
    }

    public static Boolean a(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            boolean z = true;
            packageManager.getPackageInfo("com.android.vending", 1);
            int applicationEnabledSetting = packageManager.getApplicationEnabledSetting("com.android.vending");
            if (applicationEnabledSetting != 2 && applicationEnabledSetting != 3) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (PackageManager.NameNotFoundException unused) {
            return Boolean.TRUE;
        } catch (Throwable unused2) {
            return null;
        }
    }
}
