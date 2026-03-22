package com.applovin.impl;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.a0;
import com.applovin.impl.j2;
import com.applovin.impl.n6;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v2;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class e3 extends k2 implements AppLovinCommunicatorSubscriber, a0.a {
    private List A;
    private List B;
    private List C;
    private List D;
    private List E;
    private com.applovin.impl.sdk.k e;
    private List f;
    private List g;
    private List h;
    private List i;
    private String j;
    private String k;
    private String l;
    private boolean m;
    private final StringBuilder n;
    private final AtomicBoolean o;
    private boolean p;
    private List q;
    private List r;
    private List s;
    private List t;
    private List u;
    private List v;
    private List w;
    private List x;
    private List y;
    private List z;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3118a;

        static {
            int[] iArr = new int[a0.b.values().length];
            f3118a = iArr;
            try {
                iArr[a0.b.APP_DETAILS_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3118a[a0.b.INVALID_DEVELOPER_URI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3118a[a0.b.APPADSTXT_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3118a[a0.b.MISSING_APPLOVIN_ENTRIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3118a[a0.b.MISSING_NON_APPLOVIN_ENTRIES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        AD_UNITS,
        SELECT_LIVE_NETWORKS,
        SELECT_TEST_MODE_NETWORKS,
        INITIALIZATION_AD_UNITS,
        COUNT
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        SUCCESS,
        WARNING,
        ERROR
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum d {
        CMP,
        NETWORK_CONSENT_STATUSES,
        DO_NOT_SELL,
        COUNT
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum e {
        APP_INFO,
        MAX,
        PRIVACY,
        ADS,
        INCOMPLETE_NETWORKS,
        MICRO_SDK_PARTNER_NETWORKS,
        COMPLETED_NETWORKS,
        MISSING_NETWORKS,
        COUNT
    }

    public e3(Context context) {
        super(context);
        this.n = new StringBuilder("");
        this.o = new AtomicBoolean();
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.z = new ArrayList();
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.D = new ArrayList();
        this.E = new ArrayList();
    }

    private List g() {
        boolean c2 = this.e.s0().c();
        List b2 = this.e.s0().b();
        if (c2) {
            return a((String) null, a(b2, false));
        }
        return a(a(b2, true), (String) null);
    }

    private List j() {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList(7);
        try {
            str = this.f3169a.getPackageManager().getPackageInfo(this.f3169a.getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            str = null;
        }
        arrayList.add(j2.a().d("Package Name").c(this.f3169a.getPackageName()).a());
        j2.b d2 = j2.a().d("App Version");
        String str3 = "None";
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(d2.c(str).a());
        arrayList.add(j2.a().d("OS").c(z6.d()).a());
        j2.b d3 = j2.a().d("Account");
        if (!StringUtils.isValidString(this.l)) {
            str2 = "None";
        } else {
            str2 = this.l;
        }
        arrayList.add(d3.c(str2).a());
        j2.b d4 = j2.a().d("Mediation Provider");
        if (StringUtils.isValidString(this.e.V())) {
            str3 = this.e.V();
        }
        arrayList.add(d4.c(str3).a());
        arrayList.add(j2.a().d("OM SDK Version").c(this.e.d0().c()).a());
        arrayList.add(a(com.applovin.impl.sdk.k.F0()));
        return arrayList;
    }

    private j2 l() {
        int i;
        int i2;
        String d2 = this.e.r0().d();
        boolean isValidString = StringUtils.isValidString(d2);
        boolean isValidString2 = StringUtils.isValidString(this.e.r0().j());
        j2.b d3 = j2.a(j2.c.DETAIL).d("CMP (Consent Management Platform)");
        if (!isValidString) {
            if (isValidString2) {
                d2 = "Unknown";
            } else {
                d2 = "None";
            }
        }
        j2.b c2 = d3.c(d2);
        if (this.m) {
            boolean z = true;
            c2.a(true);
            if (isValidString2) {
                c2.a(this.f3169a);
            } else {
                c2.b("TC Data Not Found");
                c2.a("By January 16, 2024, if you use Google AdMob or Google Ad Manager, you must also use a Google-certified CMP. Test your app in EEA and UK regions to ensure that this warning doesn't appear in those regions.\n\nFor more details, see:\nhttps://support.google.com/admob/answer/13554116");
                if (this.e.w().getConsentFlowUserGeography() != AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
                    z = false;
                }
                if (z) {
                    i = R.drawable.applovin_ic_x_mark;
                } else {
                    i = R.drawable.applovin_ic_warning;
                }
                c2.a(i);
                if (z) {
                    i2 = R.color.applovin_sdk_xmarkColor;
                } else {
                    i2 = R.color.applovin_sdk_warningColor;
                }
                c2.b(i0.a(i2, this.f3169a));
            }
        }
        return c2.a();
    }

    private j2 m() {
        return j2.a().d("MAX Terms and Privacy Policy Flow").a(this.f3169a).a(true).a();
    }

    private j2 n() {
        int i;
        int i2;
        boolean hasSupportedCmp = this.e.t().hasSupportedCmp();
        j2.b d2 = j2.a().d("Google UMP SDK");
        if (hasSupportedCmp) {
            i = R.drawable.applovin_ic_check_mark_bordered;
        } else {
            i = R.drawable.applovin_ic_x_mark;
        }
        j2.b a2 = d2.a(i);
        if (hasSupportedCmp) {
            i2 = R.color.applovin_sdk_checkmarkColor;
        } else {
            i2 = R.color.applovin_sdk_xmarkColor;
        }
        return a2.b(i0.a(i2, this.f3169a)).b("Google UMP SDK").a("In order to use MAX Terms and Privacy Policy Flow, you must add the Google User Messaging Platform SDK as a dependency.\n\nFor more details, see:\nhttps://developers.applovin.com/en/android/overview/terms-and-privacy-policy-flow").a(!hasSupportedCmp).a();
    }

    private List q() {
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(j2.a().d("SDK Version").c(AppLovinSdk.VERSION).a());
        String str = (String) this.e.a(l4.B3);
        j2.b d2 = j2.a().d("Plugin Version");
        String str2 = "None";
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(d2.c(str).a());
        arrayList.add(e());
        if (this.e.H0()) {
            String a2 = z6.a(this.e.n0());
            if (StringUtils.isValidString(a2)) {
                str2 = a2;
            }
            arrayList.add(b("Unity Version", str2));
        }
        if (this.e.y().j()) {
            arrayList.add(m());
            arrayList.add(n());
            return arrayList;
        }
        if (this.e.y().l()) {
            arrayList.add(u());
        }
        return arrayList;
    }

    private j2 r() {
        return j2.a().d("Network Consent Statuses").a(this.f3169a).a(true).a();
    }

    private List s() {
        ArrayList arrayList = new ArrayList(d.COUNT.ordinal());
        arrayList.add(l());
        if (StringUtils.isValidString(this.e.r0().j())) {
            arrayList.add(r());
        } else {
            arrayList.add(new f4(l0.b(), false, this.f3169a));
        }
        arrayList.add(new f4(l0.a(), true, this.f3169a));
        return arrayList;
    }

    private j2 u() {
        return j2.a().d("Terms Flow").a(R.drawable.applovin_ic_x_mark).b(i0.a(R.color.applovin_sdk_xmarkColor, this.f3169a)).b("Terms Flow has been replaced").a(this.e.y().g()).a(true).a();
    }

    private void z() {
        String str;
        StringBuilder sb = new StringBuilder("\n========== MEDIATION DEBUGGER ==========");
        sb.append("\n========== APP INFO ==========");
        sb.append("\nDev Build - " + z6.c(this.e));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nTest Mode - ");
        if (this.e.s0().c()) {
            str = "enabled";
        } else {
            str = "disabled";
        }
        sb2.append(str);
        sb.append(sb2.toString());
        sb.append("\nTarget SDK - " + this.e.B().D().get("target_sdk"));
        sb.append("\n========== MAX ==========");
        String str2 = AppLovinSdk.VERSION;
        String str3 = (String) this.e.a(l4.B3);
        String b2 = i.b();
        sb.append("\nSDK Version - " + str2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("\nPlugin Version - ");
        String str4 = "None";
        if (!StringUtils.isValidString(str3)) {
            str3 = "None";
        }
        sb3.append(str3);
        sb.append(sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("\nAd Review Version - ");
        if (!StringUtils.isValidString(b2)) {
            b2 = "Disabled";
        }
        sb4.append(b2);
        sb.append(sb4.toString());
        if (this.e.H0()) {
            String a2 = z6.a(this.e.n0());
            StringBuilder sb5 = new StringBuilder();
            sb5.append("\nUnity Version - ");
            if (StringUtils.isValidString(a2)) {
                str4 = a2;
            }
            sb5.append(str4);
            sb.append(sb5.toString());
        }
        sb.append("\n========== PRIVACY ==========");
        sb.append(l0.a(this.f3169a));
        sb.append(this.e.y().e());
        sb.append("\n========== CMP (CONSENT MANAGEMENT PLATFORM) ==========");
        sb.append(this.e.r0().i());
        sb.append("\n========== NETWORK CONSENT STATUSES ==========");
        for (n6 n6Var : d()) {
            sb.append(n6Var.e());
        }
        sb.append("\n========== NETWORKS ==========");
        for (v2 v2Var : this.r) {
            a(sb, v2Var.j());
        }
        for (v2 v2Var2 : this.s) {
            a(sb, v2Var2.j());
        }
        for (v2 v2Var3 : this.q) {
            a(sb, v2Var3.j());
        }
        sb.append("\n========== AD UNITS ==========");
        for (m mVar : this.g) {
            a(sb, mVar.e());
        }
        sb.append("\n========== END ==========");
        com.applovin.impl.sdk.o.g("MediationDebuggerListAdapter", sb.toString());
        this.n.append(sb.toString());
    }

    public boolean a(j2 j2Var) {
        if (j2Var.k() == null) {
            return false;
        }
        return "MAX Terms and Privacy Policy Flow".equals(j2Var.k().toString());
    }

    public void b(boolean z) {
        this.p = z;
    }

    @Override // com.applovin.impl.k2
    public List c(int i) {
        if (i == e.APP_INFO.ordinal()) {
            return this.x;
        }
        if (i == e.MAX.ordinal()) {
            return this.y;
        }
        if (i == e.PRIVACY.ordinal()) {
            return this.z;
        }
        if (i == e.ADS.ordinal()) {
            return this.A;
        }
        if (i == e.INCOMPLETE_NETWORKS.ordinal()) {
            return this.B;
        }
        if (i == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return this.C;
        }
        if (i == e.COMPLETED_NETWORKS.ordinal()) {
            return this.D;
        }
        return this.E;
    }

    public List d() {
        ArrayList arrayList = new ArrayList();
        for (v2 v2Var : this.f) {
            arrayList.add(v2Var.t());
        }
        String k = this.e.r0().k();
        int i = 0;
        if (k != null) {
            String c2 = this.e.r0().c();
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                n6 n6Var = (n6) obj;
                if (n6Var.f() == n6.a.TCF_VENDOR && n6Var.d() != null) {
                    n6Var.a(Boolean.valueOf(p6.a(k, n6Var.d().intValue() - 1)));
                } else if (n6Var.f() == n6.a.ATP_NETWORK && n6Var.d() != null) {
                    n6Var.a(p6.a(n6Var.d().intValue(), c2));
                }
            }
        } else {
            int size2 = arrayList.size();
            while (i < size2) {
                Object obj2 = arrayList.get(i);
                i++;
                ((n6) obj2).a(null);
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.k2
    public j2 e(int i) {
        if (i == e.APP_INFO.ordinal()) {
            return new j4("APP INFO");
        }
        if (i == e.MAX.ordinal()) {
            return new j4("MAX");
        }
        if (i == e.PRIVACY.ordinal()) {
            return new j4("PRIVACY");
        }
        if (i == e.ADS.ordinal()) {
            return new j4("ADS");
        }
        if (i == e.INCOMPLETE_NETWORKS.ordinal()) {
            return new j4("INCOMPLETE SDK INTEGRATIONS");
        }
        if (i == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return new j4("APPLOVIN MICRO SDK PARTNERS");
        }
        if (i == e.COMPLETED_NETWORKS.ordinal()) {
            return new j4("COMPLETED SDK INTEGRATIONS");
        }
        return new j4("MISSING SDK INTEGRATIONS");
    }

    public List f() {
        return this.g;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediationDebuggerListAdapter";
    }

    public String h() {
        return this.k;
    }

    public String i() {
        return this.j;
    }

    public List k() {
        return this.u;
    }

    public List o() {
        return this.h;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("privacy_setting_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.z = s();
            c();
        } else if ("network_sdk_version_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.B = a(this.q);
            this.C = a(this.r);
            this.D = a(this.s);
            c();
        } else if ("live_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.A = a(a((List) appLovinCommunicatorMessage.getMessageData().getStringArrayList("live_networks"), true), (String) null);
            c();
        } else if ("test_mode_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.A = a((String) null, a((List) appLovinCommunicatorMessage.getMessageData().getStringArrayList("test_mode_networks"), false));
            c();
        }
    }

    public String p() {
        return this.n.toString();
    }

    public com.applovin.impl.sdk.k t() {
        return this.e;
    }

    public String toString() {
        return "MediationDebuggerListAdapter{isInitialized=" + this.o.get() + "}";
    }

    public List v() {
        return this.w;
    }

    public List w() {
        return this.v;
    }

    public boolean x() {
        return this.p;
    }

    public boolean y() {
        return this.o.get();
    }

    @Override // com.applovin.impl.k2
    public int b() {
        return e.COUNT.ordinal();
    }

    private void b(List list) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            n f = ((m) it.next()).f();
            for (u7 u7Var : f.a()) {
                hashSet.add(u7Var.b());
            }
            for (u7 u7Var2 : f.e()) {
                hashSet2.add(u7Var2.b());
            }
        }
        this.u = new ArrayList(hashSet);
        this.v = new ArrayList(hashSet2);
        Collections.sort(this.u);
        Collections.sort(this.v);
    }

    public void a(List list, List list2, List list3, List list4, String str, String str2, String str3, boolean z, com.applovin.impl.sdk.k kVar) {
        this.e = kVar;
        this.f = list;
        this.g = list2;
        this.h = list3;
        this.i = list4;
        this.j = str;
        this.k = str2;
        this.l = str3;
        this.m = z;
        if (list != null && this.o.compareAndSet(false, true)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("MediationDebuggerListAdapter", "Populating networks...");
            }
            c(list);
            b(list2);
            d(this.s);
            this.x.addAll(j());
            this.y.addAll(q());
            this.z.addAll(s());
            this.A.addAll(g());
            this.B = a(this.q);
            this.C = a(this.r);
            this.D = a(this.s);
            this.E = a(this.t);
            ArrayList arrayList = new ArrayList(3);
            arrayList.add("privacy_setting_updated");
            arrayList.add("network_sdk_version_updated");
            arrayList.add("live_networks_updated");
            arrayList.add("test_mode_networks_updated");
            AppLovinCommunicator.getInstance(this.f3169a).subscribe(this, arrayList);
            z();
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwww
            @Override // java.lang.Runnable
            public final void run() {
                e3.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.applovin.impl.k2
    public int d(int i) {
        if (i == e.APP_INFO.ordinal()) {
            return this.x.size();
        }
        if (i == e.MAX.ordinal()) {
            return this.y.size();
        }
        if (i == e.PRIVACY.ordinal()) {
            return this.z.size();
        }
        if (i == e.ADS.ordinal()) {
            return this.A.size();
        }
        if (i == e.INCOMPLETE_NETWORKS.ordinal()) {
            return this.B.size();
        }
        if (i == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return this.C.size();
        }
        if (i == e.COMPLETED_NETWORKS.ordinal()) {
            return this.D.size();
        }
        return this.E.size();
    }

    private j2 b(String str, String str2) {
        j2.b d2 = j2.a().d(str);
        if (StringUtils.isValidString(str2)) {
            d2.c(str2);
        } else {
            d2.a(R.drawable.applovin_ic_x_mark);
            d2.b(i0.a(R.color.applovin_sdk_xmarkColor, this.f3169a));
        }
        return d2.a();
    }

    private void c(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v2 v2Var = (v2) it.next();
            if (!v2Var.H()) {
                if (v2Var.q() != v2.a.INCOMPLETE_INTEGRATION && v2Var.q() != v2.a.INVALID_INTEGRATION) {
                    if (v2Var.q() == v2.a.COMPLETE) {
                        if (v2Var.z()) {
                            this.r.add(v2Var);
                        } else {
                            this.s.add(v2Var);
                        }
                    } else if (v2Var.q() == v2.a.MISSING) {
                        this.t.add(v2Var);
                    }
                } else if (v2Var.z()) {
                    this.r.add(v2Var);
                } else {
                    this.q.add(v2Var);
                }
            }
        }
    }

    private j2 e() {
        String str;
        j2.b d2 = j2.a().d("Ad Review Version");
        String b2 = i.b();
        if (StringUtils.isValidString(b2)) {
            String a2 = i.a();
            if (!StringUtils.isValidString(a2) || a2.equals(this.e.i0())) {
                str = null;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("MAX Ad Review integrated with wrong SDK key. Please check that your ");
                sb.append(this.e.H0() ? "SDK key is downloaded" : "Gradle plugin snippet is integrated");
                sb.append(" from the correct account.");
                str = sb.toString();
            }
        } else {
            str = "Integrating MAX Ad review is OPTIONAL. This feature gives developers unprecedented transparency into the creatives the users see in their apps.";
        }
        if (str != null) {
            d2.b("MAX Ad Review").a(str).a(R.drawable.applovin_ic_x_mark).b(i0.a(R.color.applovin_sdk_xmarkColor, this.f3169a)).a(true);
        } else {
            d2.c(b2);
        }
        return d2.a();
    }

    private j2 b(String str) {
        j2.b a2 = j2.a();
        if (this.e.s0().c()) {
            a2.a(this.f3169a);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtils.isValidString(str) ? "" : "Select ");
        sb.append("Test Mode Network");
        j2.b d2 = a2.d(sb.toString());
        if (!this.e.s0().c()) {
            str = "Enable";
        }
        return d2.c(str).c(-16776961).a("Please re-launch the app to enable test mode. This will allow the selection of test mode networks.").a(true).a();
    }

    private void d(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v2 v2Var = (v2) it.next();
            if (v2Var.y() == v2.b.READY) {
                this.w.add(v2Var);
            }
        }
    }

    @Override // com.applovin.impl.a0.a
    public void a(y yVar, String str) {
        z zVar;
        String a2;
        c a3;
        c cVar;
        String str2;
        ArrayList arrayList = new ArrayList();
        for (z zVar2 : this.i) {
            List list = (List) yVar.a().get(zVar2.b());
            if (list == null || !list.contains(zVar2)) {
                this.e.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.e.O().b("MediationDebuggerListAdapter", str + " is missing a required entry: " + zVar2.d());
                }
                arrayList.add(zVar2);
            }
        }
        if (arrayList.isEmpty()) {
            str2 = "All required entries found at " + str + ".";
            cVar = c.SUCCESS;
        } else {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    zVar = null;
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                zVar = (z) obj;
                if (zVar.g()) {
                    break;
                }
            }
            if (zVar != null) {
                a0.b bVar = a0.b.MISSING_APPLOVIN_ENTRIES;
                a2 = a(bVar, str, zVar.d());
                a3 = a(bVar);
            } else {
                a0.b bVar2 = a0.b.MISSING_NON_APPLOVIN_ENTRIES;
                a2 = a(bVar2, str, null);
                a3 = a(bVar2);
            }
            String str3 = a2;
            cVar = a3;
            str2 = str3;
        }
        this.y.add(a(str2, cVar));
        c();
    }

    @Override // com.applovin.impl.a0.a
    public void a(a0.b bVar, String str) {
        if (bVar == a0.b.APP_DETAILS_NOT_FOUND) {
            this.e.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.e.O().a("MediationDebuggerListAdapter", "Could not retrieve app details for this package name; app-ads.txt row will not show on the mediation debugger.");
                return;
            }
            return;
        }
        this.y.add(a(a(bVar, str, null), a(bVar)));
        c();
    }

    private void a(StringBuilder sb, String str) {
        String sb2 = sb.toString();
        if (sb2.length() + str.length() >= ((Integer) this.e.a(l4.r)).intValue()) {
            com.applovin.impl.sdk.o.g("MediationDebuggerListAdapter", sb2);
            this.n.append(sb2);
            sb.setLength(1);
        }
        sb.append(str);
    }

    private List a(String str, String str2) {
        ArrayList arrayList = new ArrayList(3);
        j2.b a2 = j2.a();
        arrayList.add(a2.d("View Ad Units (" + this.g.size() + ")").a(this.f3169a).a(true).a());
        arrayList.add(a(str));
        arrayList.add(b(str2));
        if (!this.h.isEmpty()) {
            j2.b a3 = j2.a();
            arrayList.add(a3.d("Selective Init Ad Units (" + this.h.size() + ")").a(this.f3169a).a(true).a());
        }
        arrayList.add(j2.a().d("Test Mode Enabled").c(String.valueOf(this.e.s0().c())).a());
        return arrayList;
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new o3((v2) it.next(), this.f3169a));
        }
        return arrayList;
    }

    private j2 a(String str) {
        j2.b a2 = j2.a();
        if (!this.e.s0().c()) {
            a2.a(this.f3169a);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtils.isValidString(str) ? "" : "Select ");
        sb.append("Live Network");
        j2.b d2 = a2.d(sb.toString());
        if (this.e.s0().c()) {
            str = "Enable";
        }
        return d2.c(str).c(-16776961).a("Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator.").a(true).a();
    }

    private j2 a(boolean z) {
        return j2.a().d("Java 8").a(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).b(i0.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.f3169a)).b("Upgrade to Java 8").a("For optimal performance, please enable Java 8 support. This will be required in a future SDK release. See: https://developers.applovin.com/en/android/overview/integration").a(!z).a();
    }

    private j2 a(String str, c cVar) {
        int i;
        int a2;
        if (cVar == c.SUCCESS) {
            i = R.drawable.applovin_ic_check_mark_bordered;
            a2 = i0.a(R.color.applovin_sdk_checkmarkColor, this.f3169a);
        } else if (cVar == c.WARNING) {
            i = R.drawable.applovin_ic_warning;
            a2 = i0.a(R.color.applovin_sdk_warningColor, this.f3169a);
        } else {
            i = R.drawable.applovin_ic_x_mark;
            a2 = i0.a(R.color.applovin_sdk_xmarkColor, this.f3169a);
        }
        return j2.a().d("app-ads.txt").a(i).b(a2).b("app-ads.txt").a(str).a(true).a();
    }

    private String a(a0.b bVar, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "app-ads.txt URL";
        }
        int i = a.f3118a[bVar.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "Unable to find app-ads.txt file or parse entries of the file at " + str + ".\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
                } else if (i != 4) {
                    if (i != 5) {
                        return "";
                    }
                    return "Text file at " + str + " is missing some of the suggested lines.\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
                } else {
                    return "Text file at " + str + " is missing the required AppLovin line:\n\n" + str2 + "\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
                }
            }
            return "Unable to find a valid developer URL from the Play Store listing.";
        }
        return "Could not retrieve app details from the Play Store for this package name. Check back once this app has been published on the Play Store.";
    }

    private c a(a0.b bVar) {
        int i = a.f3118a[bVar.ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            return c.ERROR;
        }
        if (i != 5) {
            return c.ERROR;
        }
        return c.WARNING;
    }

    private String a(List list, boolean z) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (z) {
            for (m2 m2Var : this.u) {
                if (list.equals(m2Var.b())) {
                    return m2Var.a();
                }
            }
            for (m2 m2Var2 : this.v) {
                if (list.equals(m2Var2.b())) {
                    return m2Var2.a();
                }
            }
        } else {
            for (v2 v2Var : this.w) {
                if (list.equals(v2Var.u())) {
                    return v2Var.g();
                }
            }
        }
        return Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(",", list);
    }
}
