package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.c5;
import com.applovin.impl.e4;
import com.applovin.impl.f6;
import com.applovin.impl.i4;
import com.applovin.impl.k0;
import com.applovin.impl.l0;
import com.applovin.impl.l2;
import com.applovin.impl.l4;
import com.applovin.impl.m0;
import com.applovin.impl.n0;
import com.applovin.impl.n4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u;
import com.applovin.impl.w4;
import com.applovin.impl.w6;
import com.applovin.impl.y6;
import com.applovin.impl.z6;
import com.applovin.impl.z7;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.internal.model.Cookie;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class l {
    private static String j;
    private static String k;
    private static final AtomicReference l = new AtomicReference();
    private static final AtomicReference m = new AtomicReference();

    /* renamed from: a  reason: collision with root package name */
    private final k f3691a;
    private final o b;
    private final Context c;
    private final Map d;
    private final Map f;
    private boolean g;
    private Long h;
    private final Object e = new Object();
    private final AtomicReference i = new AtomicReference();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements c5.a {
        public a() {
        }

        @Override // com.applovin.impl.c5.a
        public void a(u.a aVar) {
            l.l.set(aVar);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f3693a;
        public final int b;

        public b(String str, int i) {
            this.f3693a = str;
            this.b = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f3694a = -1;
        public int b = -1;
        public Boolean c = null;
    }

    public l(k kVar) {
        if (kVar != null) {
            this.f3691a = kVar;
            this.b = kVar.O();
            this.c = k.o();
            this.d = A();
            this.f = z();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    private Map A() {
        HashMap hashMap = new HashMap(35);
        hashMap.put("api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("brand_name", Build.BRAND);
        hashMap.put("hardware", Build.HARDWARE);
        hashMap.put("sim", Boolean.valueOf(AppLovinSdkUtils.isEmulator()));
        hashMap.put("aida", Boolean.valueOf(u.a()));
        hashMap.put("locale", Locale.getDefault().toString());
        hashMap.put("model", Build.MODEL);
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put(TPDownloadProxyEnum.USER_PLATFORM, x());
        hashMap.put("revision", Build.DEVICE);
        hashMap.put("tz_offset", Double.valueOf(B()));
        hashMap.put("gy", Boolean.valueOf(r()));
        hashMap.put("country_code", k());
        hashMap.put("mcc", v());
        hashMap.put("mnc", w());
        hashMap.put("carrier", i());
        hashMap.put("tv", Boolean.valueOf(AppLovinSdkUtils.isTv(this.c)));
        hashMap.put("pc", Integer.valueOf(Runtime.getRuntime().availableProcessors()));
        hashMap.put("hdr", Q());
        hashMap.put("supported_abis", M());
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            hashMap.put("adns", Float.valueOf(displayMetrics.density));
            hashMap.put("adnsd", Integer.valueOf(displayMetrics.densityDpi));
            hashMap.put("xdpi", Float.valueOf(displayMetrics.xdpi));
            hashMap.put("ydpi", Float.valueOf(displayMetrics.ydpi));
            k0.a a2 = k0.a(this.c, this.f3691a);
            if (a2 != null) {
                hashMap.put("tl_cr", Integer.valueOf(a2.c()));
                hashMap.put("tr_cr", Integer.valueOf(a2.d()));
                hashMap.put("bl_cr", Integer.valueOf(a2.a()));
                hashMap.put("br_cr", Integer.valueOf(a2.b()));
            }
        }
        hashMap.put("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        hashMap.put("tbalsi_ms", Long.valueOf(this.f3691a.L() - k.n()));
        CollectionUtils.putBooleanIfValid("psase", Boolean.valueOf(e4.e(this.c)), hashMap);
        CollectionUtils.putStringIfValid("process_name", z6.b(this.c), hashMap);
        CollectionUtils.putBooleanIfValid("is_main_process", z6.g(this.c), hashMap);
        try {
            PackageInfo packageInfo = this.c.getPackageManager().getPackageInfo("com.android.vending", 0);
            hashMap.put("ps_version", packageInfo.versionName);
            hashMap.put("ps_version_code", Integer.valueOf(packageInfo.versionCode));
        } catch (Throwable unused) {
            hashMap.put("ps_version", "");
            hashMap.put("ps_version_code", -1);
        }
        CollectionUtils.putBooleanIfValid("play_store_disabled", w6.a(this.c), hashMap);
        a(hashMap);
        return hashMap;
    }

    private double B() {
        return Math.round((TimeZone.getDefault().getOffset(new Date().getTime()) * 10.0d) / 3600000.0d) / 10.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x020e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x020e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019c A[Catch: all -> 0x0189, LOOP:2: B:56:0x019a->B:57:0x019c, LOOP_END, TryCatch #4 {all -> 0x0189, blocks: (B:34:0x00e6, B:46:0x0162, B:48:0x0168, B:51:0x018b, B:53:0x0194, B:55:0x0197, B:57:0x019c, B:58:0x01c9, B:59:0x01ce, B:61:0x01d4), top: B:98:0x00e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d4 A[Catch: all -> 0x0189, TRY_LEAVE, TryCatch #4 {all -> 0x0189, blocks: (B:34:0x00e6, B:46:0x0162, B:48:0x0168, B:51:0x018b, B:53:0x0194, B:55:0x0197, B:57:0x019c, B:58:0x01c9, B:59:0x01ce, B:61:0x01d4), top: B:98:0x00e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONArray C() {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.l.C():org.json.JSONArray");
    }

    public static String G() {
        return k;
    }

    private Map J() {
        return z6.a(a((Map) null, true, false));
    }

    private JSONArray M() {
        if (k0.d()) {
            return CollectionUtils.toJSONArray(Build.SUPPORTED_ABIS);
        }
        JSONArray jSONArray = new JSONArray();
        JsonUtils.putStringIfValid(jSONArray, Build.CPU_ABI);
        JsonUtils.putStringIfValid(jSONArray, Build.CPU_ABI2);
        return jSONArray;
    }

    private boolean N() {
        try {
            if (!b()) {
                if (!c()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean O() {
        ConnectivityManager connectivityManager;
        int restrictBackgroundStatus;
        if (k0.f() && (connectivityManager = (ConnectivityManager) this.c.getSystemService("connectivity")) != null) {
            try {
                restrictBackgroundStatus = connectivityManager.getRestrictBackgroundStatus();
                if (restrictBackgroundStatus != 3) {
                    return false;
                }
                return true;
            } catch (Throwable th) {
                this.f3691a.O();
                if (o.a()) {
                    this.f3691a.O().a("DataCollector", "Unable to collect constrained network info.", th);
                }
            }
        }
        return false;
    }

    private boolean P() {
        boolean z;
        if (this.c.getResources().getConfiguration().keyboard == 2) {
            z = true;
        } else {
            z = false;
        }
        PackageManager packageManager = this.c.getPackageManager();
        boolean hasSystemFeature = packageManager.hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE");
        boolean hasSystemFeature2 = packageManager.hasSystemFeature("android.hardware.type.pc");
        if (!z || (!hasSystemFeature && !hasSystemFeature2)) {
            return false;
        }
        return true;
    }

    private Boolean Q() {
        boolean isScreenHdr;
        if (k0.g()) {
            isScreenHdr = this.c.getResources().getConfiguration().isScreenHdr();
            return Boolean.valueOf(isScreenHdr);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        this.i.set(p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        try {
            String F = F();
            if (StringUtils.isValidString(F)) {
                this.f3691a.O();
                if (o.a()) {
                    this.f3691a.O().a("DataCollector", "Successfully retrieved bid token");
                }
                l2.a(appLovinBidTokenCollectionListener, F);
                return;
            }
            this.f3691a.O();
            if (o.a()) {
                this.f3691a.O().b("DataCollector", "Empty bid token");
            }
            l2.b(appLovinBidTokenCollectionListener, "Empty bid token");
        } catch (Throwable th) {
            if (o.a()) {
                this.b.a("DataCollector", "Failed to collect bid token", th);
            }
            this.f3691a.E().a("DataCollector", "collectBidToken", th);
            l2.b(appLovinBidTokenCollectionListener, "Failed to collect bid token");
        }
    }

    private boolean c() {
        String[] strArr = {"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"};
        for (int i = 0; i < 9; i++) {
            if (new File(c(strArr[i])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long d() {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.l.d():long");
    }

    private String g() {
        int orientation = AppLovinSdkUtils.getOrientation(this.c);
        if (orientation == 1) {
            return "portrait";
        }
        if (orientation == 2) {
            return "landscape";
        }
        return "none";
    }

    private c h() {
        int i;
        int i2;
        int i3;
        boolean z;
        c cVar = new c();
        Intent registerReceiver = this.c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra("level", -1);
        } else {
            i = -1;
        }
        if (registerReceiver != null) {
            i2 = registerReceiver.getIntExtra("scale", -1);
        } else {
            i2 = -1;
        }
        if (i > 0 && i2 > 0) {
            cVar.b = (int) ((i / i2) * 100.0f);
        } else {
            cVar.b = -1;
        }
        if (registerReceiver != null) {
            i3 = registerReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        } else {
            i3 = -1;
        }
        cVar.f3694a = i3;
        if (Settings.Global.getInt(this.c.getContentResolver(), "stay_on_while_plugged_in", -1) > 0) {
            z = true;
        } else {
            z = false;
        }
        cVar.c = Boolean.valueOf(z);
        return cVar;
    }

    private String i() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                return telephonyManager.getNetworkOperatorName();
            } catch (Throwable th) {
                if (o.a()) {
                    this.b.a("DataCollector", "Unable to collect carrier", th);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String k() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH);
        }
        return "";
    }

    private String l() {
        ActivityInfo activityInfo;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://"));
        ResolveInfo resolveActivity = this.c.getPackageManager().resolveActivity(intent, 65536);
        if (resolveActivity != null && (activityInfo = resolveActivity.activityInfo) != null) {
            k = activityInfo.packageName;
        }
        return k;
    }

    private String m() {
        Point b2 = k0.b(this.c);
        int i = b2.x;
        int i2 = b2.y;
        int c2 = z6.c(this.c);
        if ((i > i2 && (c2 == 0 || c2 == 2)) || (i2 > i && (c2 == 1 || c2 == 3))) {
            return a(c2);
        }
        return b(c2);
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0020 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String o() {
        /*
            r5 = this;
            boolean r0 = com.applovin.impl.k0.f()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L53
            r0.<init>()     // Catch: java.lang.Throwable -> L53
            android.content.Context r2 = r5.c     // Catch: java.lang.Throwable -> L53
            android.content.res.Resources r2 = r2.getResources()     // Catch: java.lang.Throwable -> L53
            android.content.res.Configuration r2 = r2.getConfiguration()     // Catch: java.lang.Throwable -> L53
            android.os.LocaleList r2 = androidx.appcompat.app.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L53
            r3 = 0
        L1c:
            int r4 = androidx.core.os.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L53
            if (r3 >= r4) goto L31
            java.util.Locale r4 = androidx.core.os.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r3)     // Catch: java.lang.Throwable -> L53
            r0.append(r4)     // Catch: java.lang.Throwable -> L53
            java.lang.String r4 = ","
            r0.append(r4)     // Catch: java.lang.Throwable -> L53
            int r3 = r3 + 1
            goto L1c
        L31:
            int r2 = r0.length()     // Catch: java.lang.Throwable -> L53
            if (r2 <= 0) goto L4e
            int r2 = r0.length()     // Catch: java.lang.Throwable -> L53
            int r2 = r2 + (-1)
            char r2 = r0.charAt(r2)     // Catch: java.lang.Throwable -> L53
            r3 = 44
            if (r2 != r3) goto L4e
            int r2 = r0.length()     // Catch: java.lang.Throwable -> L53
            int r2 = r2 + (-1)
            r0.deleteCharAt(r2)     // Catch: java.lang.Throwable -> L53
        L4e:
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L53
            return r0
        L53:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.l.o():java.lang.String");
    }

    private Float p() {
        Float f = (Float) this.f3691a.a(l4.Q3);
        Float b2 = this.f3691a.q().b();
        if (b2 != null) {
            return Float.valueOf(b2.floatValue() * f.floatValue());
        }
        return null;
    }

    private float q() {
        try {
            return Settings.System.getFloat(this.c.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e) {
            if (o.a()) {
                this.b.a("DataCollector", "Error collecting font scale", e);
                return -1.0f;
            }
            return -1.0f;
        }
    }

    private boolean r() {
        SensorManager sensorManager = (SensorManager) this.c.getSystemService("sensor");
        if (sensorManager != null && sensorManager.getDefaultSensor(4) != null) {
            return true;
        }
        return false;
    }

    private Map s() {
        HashMap hashMap = new HashMap();
        CollectionUtils.putIntegerIfValid(Cookie.IABTCF_GDPR_APPLIES, this.f3691a.r0().g(), hashMap);
        CollectionUtils.putStringIfValid("IABTCF_TCString", this.f3691a.r0().j(), hashMap);
        CollectionUtils.putStringIfValid("IABTCF_AddtlConsent", this.f3691a.r0().c(), hashMap);
        return hashMap;
    }

    private Boolean t() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isMusicActive());
    }

    private Boolean u() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isSpeakerphoneOn());
    }

    private String v() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(0, Math.min(3, networkOperator.length()));
            } catch (Throwable th) {
                if (o.a()) {
                    this.b.a("DataCollector", "Unable to collect mobile country code", th);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String w() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(Math.min(3, networkOperator.length()));
            } catch (Throwable th) {
                if (o.a()) {
                    this.b.a("DataCollector", "Unable to collect mobile network code", th);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String y() {
        AudioManager audioManager = (AudioManager) this.c.getSystemService("audio");
        if (audioManager != null) {
            StringBuilder sb = new StringBuilder();
            if (k0.e()) {
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    sb.append(audioDeviceInfo.getType());
                    sb.append(",");
                }
            } else {
                if (audioManager.isWiredHeadsetOn()) {
                    sb.append(3);
                    sb.append(",");
                }
                if (audioManager.isBluetoothScoOn()) {
                    sb.append(7);
                    sb.append(",");
                }
                if (audioManager.isBluetoothA2dpOn()) {
                    sb.append(8);
                }
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            String sb2 = sb.toString();
            if (TextUtils.isEmpty(sb2) && o.a()) {
                this.b.a("DataCollector", "No sound outputs detected");
            }
            return sb2;
        }
        return null;
    }

    private Map z() {
        PackageInfo packageInfo;
        String str;
        int i;
        int i2;
        HashMap hashMap = new HashMap();
        PackageManager packageManager = this.c.getPackageManager();
        ApplicationInfo applicationInfo = this.c.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        try {
            packageInfo = packageManager.getPackageInfo(this.c.getPackageName(), 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        String a2 = a(applicationInfo.packageName, packageManager, this.f3691a);
        hashMap.put("app_name", packageManager.getApplicationLabel(applicationInfo));
        Object obj = "";
        if (packageInfo == null) {
            str = "";
        } else {
            str = packageInfo.versionName;
        }
        hashMap.put("app_version", str);
        if (packageInfo != null) {
            i = packageInfo.versionCode;
        } else {
            i = -1;
        }
        hashMap.put(TPDownloadProxyEnum.USER_APP_VERSION_CODE, Integer.valueOf(i));
        if (a2 == null) {
            a2 = "";
        }
        hashMap.put("installer_name", a2);
        hashMap.put("tg", y6.a(this.f3691a));
        hashMap.put("debug", Boolean.valueOf(z6.c(this.f3691a)));
        hashMap.put("ia", Long.valueOf(lastModified));
        hashMap.put("alts_ms", Long.valueOf(k.n()));
        hashMap.put("session_id", this.f3691a.m0().getSessionId());
        hashMap.put("j8", Boolean.valueOf(k.F0()));
        hashMap.put("ps_tpg", Boolean.valueOf(e4.d(this.c)));
        hashMap.put("ps_apg", Boolean.valueOf(e4.b(this.c)));
        hashMap.put("ps_capg", Boolean.valueOf(e4.c(this.c)));
        hashMap.put("ps_aipg", Boolean.valueOf(e4.a(this.c)));
        k kVar = this.f3691a;
        n4 n4Var = n4.h;
        Long l2 = (Long) kVar.a(n4Var);
        if (l2 != null) {
            hashMap.put("ia_v2", l2);
        } else {
            this.f3691a.b(n4Var, Long.valueOf(lastModified));
        }
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        hashMap.put("omid_sdk_version", this.f3691a.d0().c());
        CollectionUtils.putStringIfValid("ad_review_sdk_version", com.applovin.impl.i.b(), hashMap);
        hashMap.put("api_did", this.f3691a.a(l4.f));
        if (packageInfo != null) {
            obj = Long.valueOf(packageInfo.firstInstallTime);
        }
        hashMap.put("first_install_v3_ms", obj);
        CollectionUtils.putLongIfValid("last_launch_ms", this.f3691a.M(), hashMap);
        CollectionUtils.putLongIfValid("app_launch_count", Long.valueOf(this.f3691a.N()), hashMap);
        hashMap.put("target_sdk", Integer.valueOf(applicationInfo.targetSdkVersion));
        if (k0.f()) {
            i2 = applicationInfo.minSdkVersion;
            hashMap.put("min_sdk", Integer.valueOf(i2));
        }
        if (this.f3691a.H0()) {
            hashMap.put("unity_version", z6.a(this.f3691a.n0()));
        }
        return hashMap;
    }

    public Map D() {
        String str;
        Map map = CollectionUtils.map(this.f);
        ApplicationInfo applicationInfo = this.c.getApplicationInfo();
        if (StringUtils.isValidString(j)) {
            str = j;
        } else {
            str = applicationInfo.packageName;
        }
        map.put(CampaignEx.JSON_KEY_PACKAGE_NAME, str);
        map.put("vz", StringUtils.toShortSHA1Hash(str));
        map.put("first_install", Boolean.valueOf(this.f3691a.C0()));
        map.put("first_install_v2", Boolean.valueOf(!this.f3691a.z0()));
        map.put("test_ads", Boolean.valueOf(this.g));
        map.put("test_mode", Integer.valueOf(this.f3691a.s0().c() ? 1 : 0));
        map.put("muted", Boolean.valueOf(this.f3691a.n0().isMuted()));
        if (((Boolean) this.f3691a.a(l4.q3)).booleanValue()) {
            CollectionUtils.putStringIfValid("cuid", this.f3691a.w0().e(), map);
        }
        if (((Boolean) this.f3691a.a(l4.t3)).booleanValue()) {
            map.put("compass_random_token", this.f3691a.v());
        }
        if (((Boolean) this.f3691a.a(l4.v3)).booleanValue()) {
            map.put("applovin_random_token", this.f3691a.h0());
        }
        if (((Boolean) this.f3691a.a(l4.z3)).booleanValue()) {
            map.put("art", this.f3691a.s());
        }
        map.putAll(s());
        if (this.f3691a.g0() != null) {
            CollectionUtils.putJsonArrayIfValid("ps_topics", this.f3691a.g0().a(), map);
        }
        CollectionUtils.putStringIfValid("template_browser_package_name", (String) this.f3691a.p0().a(n4.N, null), map);
        return map;
    }

    public b E() {
        return (b) m.get();
    }

    public String F() {
        String encodeToString = Base64.encodeToString(new JSONObject(J()).toString().getBytes(Charset.defaultCharset()), 2);
        if (((Boolean) this.f3691a.a(l4.N4)).booleanValue()) {
            return i4.b(encodeToString, z6.a(this.f3691a), i4.a.a(((Integer) this.f3691a.a(l4.O4)).intValue()), this.f3691a.i0(), this.f3691a);
        }
        return encodeToString;
    }

    public Long H() {
        return this.h;
    }

    public String I() {
        ActivityManager activityManager = (ActivityManager) this.c.getSystemService("activity");
        if (activityManager == null) {
            return null;
        }
        return activityManager.getDeviceConfigurationInfo().getGlEsVersion();
    }

    public Map K() {
        return CollectionUtils.map(this.f);
    }

    public Map L() {
        return CollectionUtils.map(this.d);
    }

    public boolean R() {
        return this.g;
    }

    public void T() {
        r5 q0 = this.f3691a.q0();
        c5 c5Var = new c5(this.f3691a, new a());
        r5.b bVar = r5.b.OTHER;
        q0.a((w4) c5Var, bVar);
        this.f3691a.q0().a((w4) new f6(this.f3691a, true, "setDeviceVolume", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                l.this.S();
            }
        }), bVar);
    }

    public void U() {
        synchronized (this.e) {
            a(this.d);
        }
    }

    public Map e() {
        HashMap hashMap = new HashMap();
        hashMap.put("sc", this.f3691a.a(l4.l));
        hashMap.put("sc2", this.f3691a.a(l4.m));
        hashMap.put("sc3", this.f3691a.a(l4.n));
        hashMap.put("server_installed_at", this.f3691a.a(l4.o));
        CollectionUtils.putStringIfValid("persisted_data", (String) this.f3691a.a(n4.F), hashMap);
        return hashMap;
    }

    public u.a f() {
        List<String> list;
        u.a b2 = u.b(this.c);
        if (b2 == null) {
            return new u.a();
        }
        if (((Boolean) this.f3691a.a(l4.o3)).booleanValue()) {
            if (b2.c() && !((Boolean) this.f3691a.a(l4.n3)).booleanValue()) {
                b2.a("");
            }
            l.set(b2);
        } else {
            b2 = new u.a();
        }
        String str = null;
        if (this.f3691a.K() != null) {
            list = this.f3691a.K().getTestDeviceAdvertisingIds();
        } else {
            list = null;
        }
        if (list != null) {
            String a2 = b2.a();
            if (StringUtils.isValidString(a2)) {
                this.g = list.contains(a2);
            }
            b E = E();
            if (E != null) {
                str = E.f3693a;
            }
            if (StringUtils.isValidString(str)) {
                this.g = list.contains(str) | this.g;
            }
            return b2;
        }
        this.g = false;
        return b2;
    }

    public Map j() {
        HashMap hashMap = new HashMap();
        CollectionUtils.putLongIfValid("network_throughput_kbps", H(), hashMap);
        m0.d a2 = this.f3691a.x().a();
        if (a2 != null) {
            hashMap.put("lrm_ts_ms", String.valueOf(a2.c()));
            hashMap.put("lrm_url", a2.d());
            hashMap.put("lrm_ct_ms", String.valueOf(a2.a()));
            hashMap.put("lrm_rs", String.valueOf(a2.b()));
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    public Map n() {
        return a(false);
    }

    public String x() {
        if (AppLovinSdkUtils.isFireOS(this.c)) {
            return "fireos";
        }
        return "android";
    }

    public void a(Long l2) {
        this.h = l2;
    }

    public void a(final AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        this.f3691a.q0().a((w4) new f6(this.f3691a, ((Boolean) this.f3691a.a(l4.D3)).booleanValue(), "DataCollector", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                l.this.b(appLovinBidTokenCollectionListener);
            }
        }), r5.b.CORE);
    }

    private String c(String str) {
        int length = str.length();
        int[] iArr = {11, 12, 10, 3, 2, 1, 15, 10, 15, 14};
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = str.charAt(i);
            for (int i2 = 9; i2 >= 0; i2--) {
                cArr[i] = (char) (cArr[i] ^ iArr[i2]);
            }
        }
        return new String(cArr);
    }

    public Map a(Map map, boolean z, boolean z2) {
        HashMap hashMap = new HashMap(64);
        Map a2 = a(z);
        Map D = D();
        Map j2 = j();
        Map k0 = this.f3691a.k0();
        if (z2) {
            hashMap.put("device_info", a2);
            hashMap.put("app_info", D);
            if (j2 != null) {
                hashMap.put("connection_info", j2);
            }
            if (map != null) {
                hashMap.put("ad_info", map);
            }
            if (!CollectionUtils.isEmpty(k0)) {
                hashMap.put("segments", k0);
            }
        } else {
            hashMap.putAll(a2);
            hashMap.putAll(D);
            if (j2 != null) {
                hashMap.putAll(j2);
            }
            if (map != null) {
                hashMap.putAll(map);
            }
            if (!CollectionUtils.isEmpty(k0)) {
                hashMap.putAll(k0);
            }
        }
        hashMap.put("accept", "custom_size,launch_app,video");
        hashMap.put("format", "json");
        CollectionUtils.putStringIfValid("mediation_provider", this.f3691a.V(), hashMap);
        CollectionUtils.putStringIfValid("mediation_provider_v2", this.f3691a.D(), hashMap);
        CollectionUtils.putStringIfValid("plugin_version", (String) this.f3691a.a(l4.B3), hashMap);
        CollectionUtils.putLongIfValid("tssf_ms", Long.valueOf(this.f3691a.t0()), hashMap);
        if (!((Boolean) this.f3691a.a(l4.L4)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3691a.i0());
        }
        CollectionUtils.putStringIfValid("connectEventKey", this.f3691a.r(), hashMap);
        hashMap.putAll(e());
        hashMap.put("rid", UUID.randomUUID().toString());
        return hashMap;
    }

    private String b(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return "unknown";
                    }
                    return "landscape_left";
                }
                return "portrait_upside_down";
            }
            return "landscape_right";
        }
        return "portrait";
    }

    private int b(String str) {
        try {
            return Settings.Secure.getInt(this.c.getContentResolver(), str);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private boolean b() {
        String str = Build.TAGS;
        return str != null && str.contains(c("lz}$blpz"));
    }

    public Map a(boolean z) {
        Map map;
        synchronized (this.e) {
            map = CollectionUtils.map(this.d);
        }
        return a(map, z);
    }

    private void a(Map map) {
        JSONArray C;
        if (((Boolean) this.f3691a.a(l4.K3)).booleanValue() && !map.containsKey("af")) {
            map.put("af", Long.valueOf(d()));
        }
        if (((Boolean) this.f3691a.a(l4.L3)).booleanValue() && !map.containsKey("font")) {
            map.put("font", Float.valueOf(q()));
        }
        if (((Boolean) this.f3691a.a(l4.S3)).booleanValue() && z6.d(this.f3691a)) {
            z7.a(this.f3691a);
        }
        if (((Boolean) this.f3691a.a(l4.d4)).booleanValue()) {
            z7.b(this.f3691a);
        }
        if (((Boolean) this.f3691a.a(l4.R3)).booleanValue() && !map.containsKey("sua")) {
            map.put("sua", System.getProperty("http.agent"));
        }
        if (((Boolean) this.f3691a.a(l4.N3)).booleanValue() && !map.containsKey("network_restricted")) {
            map.put("network_restricted", Boolean.valueOf(O()));
        }
        map.put("is_pc", Boolean.valueOf(P()));
        if (((Boolean) this.f3691a.a(l4.f4)).booleanValue()) {
            CollectionUtils.putStringIfValid("oglv", I(), map);
        }
        if (((Boolean) this.f3691a.a(l4.f6)).booleanValue()) {
            CollectionUtils.putStringIfValid("dbpn", l(), map);
        }
        if (!((Boolean) this.f3691a.a(l4.g6)).booleanValue() || map.containsKey("video_decoders") || (C = C()) == null || C.length() <= 0) {
            return;
        }
        map.put("video_decoders", C);
    }

    private Map a(Map map, boolean z) {
        u.a f;
        PowerManager powerManager;
        int dataNetworkType;
        Map map2 = CollectionUtils.map(map);
        Point b2 = k0.b(this.c);
        map2.put("dx", Integer.valueOf(b2.x));
        map2.put("dy", Integer.valueOf(b2.y));
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            map2.put("screen_size_in", Double.valueOf(Math.sqrt(Math.pow(b2.x, 2.0d) + Math.pow(b2.y, 2.0d)) / displayMetrics.xdpi));
        }
        map2.put("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.c)));
        if (z) {
            f = (u.a) l.get();
            if (f != null) {
                T();
            } else if (z6.h()) {
                f = new u.a();
                map2.put("inc", Boolean.TRUE);
            } else {
                f = f();
            }
        } else {
            f = f();
        }
        String a2 = f.a();
        if (StringUtils.isValidString(a2)) {
            map2.put("idfa", a2);
        }
        map2.put("dnt", Boolean.valueOf(f.c()));
        map2.put("dnt_code", f.b().b());
        b bVar = (b) m.get();
        if (((Boolean) this.f3691a.a(l4.p3)).booleanValue() && bVar != null) {
            map2.put("idfv", bVar.f3693a);
            map2.put("idfv_scope", Integer.valueOf(bVar.b));
        }
        Boolean b3 = l0.b().b(this.c);
        if (b3 != null) {
            map2.put("huc", b3);
        }
        Boolean b4 = l0.c().b(this.c);
        if (b4 != null) {
            map2.put("aru", b4);
        }
        Boolean b5 = l0.a().b(this.c);
        if (b5 != null) {
            map2.put("dns", b5);
        }
        if (((Boolean) this.f3691a.a(l4.E3)).booleanValue()) {
            c h = h();
            CollectionUtils.putIntegerIfValid("act", Integer.valueOf(h.f3694a), map2);
            CollectionUtils.putIntegerIfValid("acm", Integer.valueOf(h.b), map2);
            CollectionUtils.putBooleanIfValid("sowpie", h.c, map2);
        }
        if (((Boolean) this.f3691a.a(l4.M3)).booleanValue()) {
            map2.put("mtl", Integer.valueOf(this.f3691a.m0().getLastTrimMemoryLevel()));
        }
        if (((Boolean) this.f3691a.a(l4.P3)).booleanValue()) {
            map2.put("adr", Boolean.valueOf(N()));
        }
        Float p = z ? (Float) this.i.get() : p();
        if (p != null) {
            map2.put("volume", p);
        }
        CollectionUtils.putBooleanIfValid("ma", t(), map2);
        CollectionUtils.putBooleanIfValid("spo", u(), map2);
        CollectionUtils.putBooleanIfValid("aif", Boolean.valueOf(!this.f3691a.m0().isApplicationPaused()), map2);
        CollectionUtils.putLongIfValid("af_ts_ms", Long.valueOf(this.f3691a.m0().getAppEnteredForegroundTimeMillis()), map2);
        CollectionUtils.putLongIfValid("ab_ts_ms", Long.valueOf(this.f3691a.m0().getAppEnteredBackgroundTimeMillis()), map2);
        try {
            map2.put("sb", Integer.valueOf((int) ((Settings.System.getInt(this.c.getContentResolver(), "screen_brightness") / 255.0f) * 100.0f)));
        } catch (Settings.SettingNotFoundException e) {
            if (o.a()) {
                this.b.a("DataCollector", "Unable to collect screen brightness", e);
            }
        }
        if (((Boolean) this.f3691a.a(l4.S3)).booleanValue() && z6.d(this.f3691a)) {
            z7.a(this.f3691a);
            String a3 = z7.a();
            if (StringUtils.isValidString(a3)) {
                map2.put("ua", a3);
            }
        }
        if (((Boolean) this.f3691a.a(l4.d4)).booleanValue()) {
            z7.b(this.f3691a);
            CollectionUtils.putIntegerIfValid("wvvc", Integer.valueOf(z7.d()), map2);
            CollectionUtils.putStringIfValid("wvv", z7.c(), map2);
            CollectionUtils.putStringIfValid("wvpn", z7.b(), map2);
        }
        if (((Boolean) this.f3691a.a(l4.G3)).booleanValue()) {
            try {
                map2.put("fs", Long.valueOf(Environment.getDataDirectory().getFreeSpace()));
                map2.put("tds", Long.valueOf(Environment.getDataDirectory().getTotalSpace()));
            } catch (Throwable th) {
                map2.put("fs", -1);
                map2.put("tds", -1);
                if (o.a()) {
                    this.b.a("DataCollector", "Unable to collect total & free space.", th);
                }
            }
        }
        if (((Boolean) this.f3691a.a(l4.H3)).booleanValue()) {
            ActivityManager.MemoryInfo a4 = z6.a((ActivityManager) this.c.getSystemService("activity"));
            if (a4 != null) {
                map2.put("fm", Long.valueOf(a4.availMem));
                map2.put("tm", Long.valueOf(a4.totalMem));
                map2.put("lmt", Long.valueOf(a4.threshold));
                map2.put("lm", Boolean.valueOf(a4.lowMemory));
            } else {
                map2.put("fm", -1);
                map2.put("tm", -1);
                map2.put("lmt", -1);
            }
        }
        if (((Boolean) this.f3691a.a(l4.I3)).booleanValue() && k0.a("android.permission.READ_PHONE_STATE", this.c) && k0.f()) {
            dataNetworkType = ((TelephonyManager) this.c.getSystemService("phone")).getDataNetworkType();
            map2.put("rat", Integer.valueOf(dataNetworkType));
        }
        if (((Boolean) this.f3691a.a(l4.F3)).booleanValue()) {
            String y = y();
            if (!TextUtils.isEmpty(y)) {
                map2.put("so", y);
            }
        }
        map2.put("device_orientation", m());
        map2.put("orientation_lock", g());
        if (((Boolean) this.f3691a.a(l4.J3)).booleanValue()) {
            map2.put("vs", Boolean.valueOf(z6.j()));
        }
        if (k0.d() && (powerManager = (PowerManager) this.c.getSystemService("power")) != null) {
            map2.put("lpm", Integer.valueOf(powerManager.isPowerSaveMode() ? 1 : 0));
        }
        if (((Boolean) this.f3691a.a(l4.U3)).booleanValue() && this.f3691a.l0() != null) {
            map2.put("da", Float.valueOf(this.f3691a.l0().a()));
        }
        if (((Boolean) this.f3691a.a(l4.V3)).booleanValue() && this.f3691a.l0() != null) {
            map2.put("dm", Float.valueOf(this.f3691a.l0().b()));
        }
        map2.put("mute_switch", Integer.valueOf(this.f3691a.q().c()));
        map2.put("network", n0.g(this.f3691a));
        String o = o();
        if (StringUtils.isValidString(o)) {
            map2.put("kb", o);
        }
        ArrayService p2 = this.f3691a.p();
        if (p2.isAppHubInstalled()) {
            if (p2.getIsDirectDownloadEnabled() != null) {
                map2.put("ah_dd_enabled", p2.getIsDirectDownloadEnabled());
            }
            map2.put("ah_sdk_version_code", Long.valueOf(p2.getAppHubVersionCode()));
            map2.put("ah_random_user_token", StringUtils.emptyIfNull(p2.getRandomUserToken()));
            map2.put("ah_sdk_package_name", StringUtils.emptyIfNull(p2.getAppHubPackageName()));
        }
        return map2;
    }

    private String a(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return "unknown";
                    }
                    return "portrait";
                }
                return "landscape_left";
            }
            return "portrait_upside_down";
        }
        return "landscape_right";
    }

    public static void a(u.a aVar) {
        l.set(aVar);
    }

    public static void a(b bVar) {
        m.set(bVar);
    }

    public static void a(String str, k kVar) {
        String a2 = a(k.o().getApplicationInfo().packageName, k.o().getPackageManager(), kVar);
        List c2 = kVar.c(l4.p6);
        if (!StringUtils.isValidString(a2) || c2.contains(a2)) {
            j = str;
        }
    }

    private boolean a(String str) {
        return b(str) == 1;
    }

    private static String a(String str, PackageManager packageManager, k kVar) {
        InstallSourceInfo installSourceInfo;
        String installingPackageName;
        try {
            if (((Boolean) kVar.a(l4.l4)).booleanValue() && k0.b()) {
                installSourceInfo = packageManager.getInstallSourceInfo(str);
                installingPackageName = installSourceInfo.getInstallingPackageName();
                return installingPackageName;
            }
            return packageManager.getInstallerPackageName(str);
        } catch (Throwable th) {
            kVar.E().a("DataCollector", "getInstallerName", th);
            return null;
        }
    }
}
