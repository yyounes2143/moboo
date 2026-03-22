package com.applovin.impl;

import android.os.Build;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.y1;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import j$.util.DesugarCollections;
import java.io.OutputStream;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class z1 {
    private static volatile ExecutorService g;

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f3826a;
    protected final com.applovin.impl.sdk.o b;
    private final y1.b c;
    private final Map d = DesugarCollections.synchronizedMap(new HashMap());
    private final Set e = Collections.synchronizedSet(new HashSet());
    private static final int f = (int) TimeUnit.SECONDS.toMillis(30);
    private static final Object h = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements ThreadFactory {

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.z1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0029a implements Thread.UncaughtExceptionHandler {
            public C0029a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                z1.this.f3826a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    z1.this.f3826a.O().a("HealthEventsReporter", "Caught unhandled exception", th);
                }
            }
        }

        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:health_events_reporter");
            thread.setDaemon(true);
            thread.setPriority(((Integer) z1.this.f3826a.a(l4.Q)).intValue());
            thread.setUncaughtExceptionHandler(new C0029a());
            return thread;
        }
    }

    public z1(com.applovin.impl.sdk.k kVar, y1.b bVar) {
        this.f3826a = kVar;
        this.b = kVar.O();
        this.c = bVar;
        a();
    }

    private void a() {
        if (g != null) {
            return;
        }
        synchronized (h) {
            try {
                if (g != null) {
                    return;
                }
                g = Executors.newFixedThreadPool(1, new a());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c(y1 y1Var, List list) {
        HttpURLConnection httpURLConnection;
        Throwable th;
        if (y1Var.a() == y1.b.AD || y1Var.a() == y1.b.MEDIATED_AD || y1Var.a() == y1.b.USER_SESSION || !z6.a(((Integer) this.f3826a.a(l4.z)).intValue())) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            try {
                httpURLConnection = (HttpURLConnection) a(y1Var, map).openConnection();
                try {
                    int i = f;
                    httpURLConnection.setConnectTimeout(i);
                    httpURLConnection.setReadTimeout(i);
                    httpURLConnection.setDefaultUseCaches(false);
                    httpURLConnection.setAllowUserInteraction(false);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    httpURLConnection.setRequestProperty("AppLovin-Event-Type", y1Var.b());
                    int responseCode = httpURLConnection.getResponseCode();
                    if (com.applovin.impl.sdk.o.a()) {
                        this.b.a("HealthEventsReporter", y1Var.b() + " reported with code " + responseCode + " and extra parameters " + map);
                    }
                    this.d.put(y1Var, Long.valueOf(System.currentTimeMillis()));
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (com.applovin.impl.sdk.o.a()) {
                            this.b.d("HealthEventsReporter", "Failed to report " + y1Var.b() + " with extra parameters " + map, th);
                        }
                        z6.a(httpURLConnection, this.f3826a);
                    } finally {
                        z6.a(httpURLConnection, this.f3826a);
                    }
                }
            } catch (Throwable th3) {
                httpURLConnection = null;
                th = th3;
            }
        }
    }

    public void d(y1 y1Var, Map map) {
        a(y1Var, map, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(String str, y1 y1Var, JSONObject jSONObject) {
        byte[] bytes;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            URL url = new URL(str);
            bytes = jSONObject.toString().getBytes("UTF-8");
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th) {
            th = th;
        }
        try {
            int i = f;
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
            httpURLConnection.setRequestProperty("AppLovin-Event-Type", y1Var.b());
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bytes);
            outputStream.close();
            int responseCode = httpURLConnection.getResponseCode();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.b;
                oVar.a("HealthEventsReporter", y1Var.b() + " reported with code " + responseCode);
            }
            this.d.put(y1Var, Long.valueOf(System.currentTimeMillis()));
            z6.a(httpURLConnection, this.f3826a);
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            try {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.b;
                    oVar2.d("HealthEventsReporter", "Failed to report " + y1Var.b(), th);
                }
            } finally {
                z6.a(httpURLConnection2, this.f3826a);
            }
        }
    }

    private void d(final y1 y1Var, List list) {
        final String str = (String) this.f3826a.a(l4.A);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        double a2 = y1Var.a(this.f3826a);
        if (z6.a(a2)) {
            if (((Boolean) this.f3826a.a(l4.G)).booleanValue()) {
                a(str, y1Var, a(y1Var, a2, list));
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final JSONObject a3 = a(y1Var, a2, Collections.singletonList((Map) it.next()));
                g.execute(new Runnable() { // from class: com.applovin.impl.Mmmmm
                    @Override // java.lang.Runnable
                    public final void run() {
                        z1.this.a(str, y1Var, a3);
                    }
                });
            }
        }
    }

    public void a(y1 y1Var, String str) {
        a(y1Var, str, new HashMap());
    }

    public void a(y1 y1Var, String str, Map map) {
        map.put("source", str);
        d(y1Var, map);
    }

    public void a(y1 y1Var, String str, Map map, String str2) {
        if (!StringUtils.isValidString(str2) || this.e.add(str2)) {
            map.put("source", str);
            a(y1Var, str, map);
        }
    }

    public void a(y1 y1Var, Map map, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(map);
        a(y1Var, arrayList, j);
    }

    public void a(final y1 y1Var, final List list, long j) {
        if (a(y1Var, j)) {
            return;
        }
        try {
            if (z6.h()) {
                g.execute(new Runnable() { // from class: com.applovin.impl.Mmmm
                    @Override // java.lang.Runnable
                    public final void run() {
                        z1.this.b(y1Var, list);
                    }
                });
            } else {
                b(y1Var, list);
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.b;
                oVar.d("HealthEventsReporter", "Failed to report " + y1Var.b() + " with extra parameters collection " + list, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(y1 y1Var, List list) {
        if (AppLovinSdkUtils.isEmulator()) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.b;
            oVar.a("HealthEventsReporter", "Reporting " + y1Var.b() + " with extra parameters collection " + list);
        }
        if (this.c != y1Var.a()) {
            g1.a("Health event " + y1Var.b() + " category: " + y1Var.a() + " does not match the reporter category: " + this.c, new Object[0]);
        }
        c(y1Var, list);
        d(y1Var, list);
    }

    private Map c(y1 y1Var, Map map) {
        HashMap hashMap = new HashMap(map);
        if (y1Var == y1.s0) {
            hashMap.remove("details");
        }
        return hashMap;
    }

    private Map b(y1 y1Var, Map map) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", y1Var.b());
        if (y1Var == y1.o0 || y1Var == y1.D0 || y1Var == y1.B0) {
            if (((Boolean) this.f3826a.a(l4.d4)).booleanValue()) {
                CollectionUtils.putStringIfValid("wvvc", String.valueOf(z7.d()), hashMap);
                CollectionUtils.putStringIfValid("wvv", z7.c(), hashMap);
                CollectionUtils.putStringIfValid("wvpn", z7.b(), hashMap);
            }
            CollectionUtils.putStringIfValid("oglv", this.f3826a.B().I(), hashMap);
        }
        Map L = this.f3826a.B().L();
        hashMap.put(TPDownloadProxyEnum.USER_PLATFORM, String.valueOf(L.get(TPDownloadProxyEnum.USER_PLATFORM)));
        hashMap.put("country_code", String.valueOf(L.get("country_code")));
        hashMap.put("cc", this.f3826a.w().getCountryCode());
        hashMap.put("applovin_random_token", this.f3826a.h0());
        hashMap.put("compass_random_token", this.f3826a.v());
        hashMap.put("model", Build.MODEL);
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("brand_name", Build.BRAND);
        hashMap.put("hardware", Build.HARDWARE);
        hashMap.put("revision", Build.DEVICE);
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put("api_level", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("sdk_version", String.valueOf(AppLovinSdk.VERSION));
        CollectionUtils.putStringIfValid("ad_review_sdk_version", i.b(), hashMap);
        hashMap.put("md", (String) this.f3826a.a(l4.t));
        b(hashMap);
        a(hashMap);
        if (map != null) {
            hashMap.putAll(c(y1Var, map));
        }
        return hashMap;
    }

    private URL a(y1 y1Var, Map map) {
        StringBuilder sb = new StringBuilder("https://ms.applovin.com/1.0/sdk/error");
        sb.append("?");
        Iterator it = b(y1Var, map).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String encode = URLEncoder.encode((String) entry.getKey(), "UTF-8");
            String encode2 = URLEncoder.encode((String) entry.getValue(), "UTF-8");
            sb.append(encode);
            sb.append("=");
            sb.append(encode2);
            if (it.hasNext()) {
                sb.append("&");
            }
        }
        return new URL(sb.toString());
    }

    private JSONObject a(y1 y1Var, double d, List list) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putLong(jSONObject, "ts_ms", System.currentTimeMillis());
        if (y1Var == y1.o0 || y1Var == y1.D0 || y1Var == y1.B0) {
            if (((Boolean) this.f3826a.a(l4.d4)).booleanValue()) {
                JsonUtils.putStringIfValid(jSONObject, "wvvc", String.valueOf(z7.d()));
                JsonUtils.putStringIfValid(jSONObject, "wvv", z7.c());
                JsonUtils.putStringIfValid(jSONObject, "wvpn", z7.b());
            }
            JsonUtils.putStringIfValid(jSONObject, "oglv", this.f3826a.B().I());
        }
        JSONObject jSONObject2 = new JSONObject();
        Map L = this.f3826a.B().L();
        JsonUtils.putObject(jSONObject2, TPDownloadProxyEnum.USER_PLATFORM, L.get(TPDownloadProxyEnum.USER_PLATFORM));
        JsonUtils.putObject(jSONObject2, "os", L.get("os"));
        JsonUtils.putObject(jSONObject2, "brand", L.get("brand"));
        JsonUtils.putObject(jSONObject2, "model", L.get("model"));
        JsonUtils.putObject(jSONObject2, "revision", L.get("revision"));
        JsonUtils.putObject(jSONObject2, "country_code", L.get("country_code"));
        JsonUtils.putObject(jSONObject2, "cc", this.f3826a.w().getCountryCode());
        JsonUtils.putObject(jSONObject2, "applovin_random_token", this.f3826a.h0());
        JsonUtils.putObject(jSONObject2, "ad_review_sdk_version", StringUtils.emptyIfNull(i.b()));
        Map D = this.f3826a.B().D();
        JsonUtils.putObject(jSONObject2, "sdk_version", D.get("sdk_version"));
        JsonUtils.putObject(jSONObject2, "plugin_version", this.f3826a.a(l4.B3));
        JsonUtils.putObject(jSONObject2, "app_version", D.get("app_version"));
        JsonUtils.putObject(jSONObject2, CampaignEx.JSON_KEY_PACKAGE_NAME, D.get(CampaignEx.JSON_KEY_PACKAGE_NAME));
        JsonUtils.putObject(jSONObject2, "first_install", Boolean.toString(Boolean.TRUE.equals((Boolean) D.get("first_install_v2"))));
        JsonUtils.putObject(jSONObject2, "md", this.f3826a.a(l4.t));
        JsonUtils.putObject(jSONObject2, "mediation_provider", this.f3826a.V());
        SessionTracker m0 = this.f3826a.m0();
        JsonUtils.putObject(jSONObject2, "app_state", m0.getCurrentApplicationState().b());
        JsonUtils.putObject(jSONObject2, "app_state_duration_ms", Long.valueOf(m0.getCurrentApplicationStateDurationMillis()));
        JsonUtils.putObject(jSONObject2, "session_id", m0.getSessionId());
        JsonUtils.putObject(jSONObject2, "session_duration_ms", Long.valueOf(System.currentTimeMillis() - com.applovin.impl.sdk.k.n()));
        JsonUtils.putObject(jSONObject, "shared_fields", jSONObject2);
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            JSONObject jSONObject3 = new JSONObject();
            JsonUtils.putDouble(jSONObject3, "ts_ms", System.currentTimeMillis());
            JsonUtils.putString(jSONObject3, "type", y1Var.b());
            JsonUtils.putDouble(jSONObject3, "weight", d);
            JsonUtils.putString(jSONObject3, "level", "DEBUG");
            a(map);
            JsonUtils.putAll(jSONObject3, map);
            jSONArray.put(jSONObject3);
        }
        JsonUtils.putObject(jSONObject, DbParams.TABLE_EVENTS, jSONArray);
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.util.Map r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r1 = 0
            android.content.Context r2 = com.applovin.impl.sdk.k.o()     // Catch: java.lang.Throwable -> L18
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: java.lang.Throwable -> L18
            android.content.Context r3 = com.applovin.impl.sdk.k.o()     // Catch: java.lang.Throwable -> L18
            java.lang.String r3 = r3.getPackageName()     // Catch: java.lang.Throwable -> L18
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r1)     // Catch: java.lang.Throwable -> L19
            goto L1a
        L18:
            r3 = r0
        L19:
            r2 = 0
        L1a:
            java.lang.String r4 = "package_name"
            r6.put(r4, r3)
            if (r2 == 0) goto L23
            java.lang.String r0 = r2.versionName
        L23:
            java.lang.String r3 = "app_version"
            r6.put(r3, r0)
            if (r2 == 0) goto L2c
            int r1 = r2.versionCode
        L2c:
            java.lang.String r0 = java.lang.String.valueOf(r1)
            java.lang.String r1 = "app_version_code"
            r6.put(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.z1.b(java.util.Map):void");
    }

    private void a(Map map) {
        if (map == null) {
            return;
        }
        Object a2 = this.f3826a.I().a();
        if (a2 instanceof com.applovin.impl.sdk.ad.b) {
            map.put("fs_ad_network", "AppLovin");
            map.put("fs_ad_creative_id", Long.toString(((com.applovin.impl.sdk.ad.b) a2).getAdIdNumber()));
        } else if (a2 instanceof q2) {
            q2 q2Var = (q2) a2;
            map.put("fs_ad_network", q2Var.getNetworkName());
            map.put("fs_ad_creative_id", q2Var.getCreativeId());
        } else {
            map.put("fs_ad_network", "None");
            map.put("fs_ad_creative_id", "None");
        }
    }

    private boolean a(y1 y1Var, long j) {
        Long l = (Long) this.d.get(y1Var);
        return System.currentTimeMillis() - (l != null ? l.longValue() : -1L) < j;
    }
}
