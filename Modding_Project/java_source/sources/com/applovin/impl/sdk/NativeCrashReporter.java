package com.applovin.impl.sdk;

import com.applovin.impl.l4;
import com.applovin.impl.sdk.g;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.z6;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class NativeCrashReporter implements g.d {
    private static boolean b;
    private static boolean c;
    private static final NativeCrashReporter d = new NativeCrashReporter();

    /* renamed from: a  reason: collision with root package name */
    private final HashMap f3579a = new HashMap();

    private NativeCrashReporter() {
    }

    public static void a(k kVar) {
        if (kVar == null) {
            return;
        }
        if (!((Boolean) kVar.a(l4.g4)).booleanValue() && !z6.i(k.o())) {
            if (c) {
                try {
                    g l = kVar.l();
                    NativeCrashReporter nativeCrashReporter = d;
                    l.a(nativeCrashReporter);
                    nativeCrashReporter.disable();
                } catch (Throwable th) {
                    kVar.O();
                    if (o.a()) {
                        kVar.O().a("NativeCrashReporter", "Failed to disable native crash reporter", th);
                    }
                    kVar.E().a("NativeCrashReporter", "disableInstance", th);
                }
            }
        } else if (a()) {
            List c2 = kVar.c(l4.h4);
            int[] iArr = new int[c2.size()];
            for (int i = 0; i < c2.size(); i++) {
                try {
                    iArr[i] = Integer.parseInt((String) c2.get(i));
                } catch (NumberFormatException unused) {
                }
            }
            File file = new File(k.o().getCacheDir(), "al-reports");
            if (file.exists()) {
                a(file, kVar);
            } else if (!file.mkdir()) {
                kVar.O();
                if (o.a()) {
                    kVar.O().b("NativeCrashReporter", "Failed to create reports directory");
                    return;
                }
                return;
            }
            try {
                NativeCrashReporter nativeCrashReporter2 = d;
                nativeCrashReporter2.enable(file.getAbsolutePath(), iArr, ((Boolean) kVar.a(l4.i4)).booleanValue());
                if (((Boolean) kVar.a(l4.j4)).booleanValue()) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(g.c.LOADING);
                    hashSet.add(g.c.LOAD);
                    hashSet.add(g.c.SHOW);
                    hashSet.add(g.c.CLICK);
                    hashSet.add(g.c.SHOW_ERROR);
                    hashSet.add(g.c.DESTROY);
                    kVar.l().a(nativeCrashReporter2, hashSet);
                }
            } catch (Throwable th2) {
                kVar.O();
                if (o.a()) {
                    kVar.O().a("NativeCrashReporter", "Failed to enable native crash reporter", th2);
                }
                kVar.E().a("NativeCrashReporter", "enableInstance", th2);
            }
        }
    }

    private native void disable();

    private native void enable(String str, int[] iArr, boolean z);

    private native void updateAdInfo(String str);

    private static boolean a() {
        if (!b) {
            b = true;
            try {
                System.loadLibrary("applovin-native-crash-reporter");
                c = true;
            } catch (Throwable th) {
                o.b("NativeCrashReporter", "Failed to load native crash reporter library", th);
            }
        }
        return c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:5|(2:7|(8:9|10|11|(1:13)(4:31|(4:34|(2:36|37)(2:39|40)|38|32)|41|42)|14|15|(2:17|(2:19|20)(1:22))(1:23)|21))|49|(1:51)|14|15|(0)(0)|21) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ed, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ee, code lost:
        r17.O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f5, code lost:
        if (com.applovin.impl.sdk.o.a() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f7, code lost:
        r17.O().a("NativeCrashReporter", "Failed to delete native crash report: " + r6.getAbsolutePath(), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9 A[Catch: all -> 0x00ed, TryCatch #0 {all -> 0x00ed, blocks: (B:33:0x00c3, B:35:0x00c9, B:37:0x00d2), top: B:45:0x00c3 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0111 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.io.File r16, com.applovin.impl.sdk.k r17) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.NativeCrashReporter.a(java.io.File, com.applovin.impl.sdk.k):void");
    }

    @Override // com.applovin.impl.sdk.g.d
    public void a(g.b bVar) {
        String h = bVar.h();
        if (bVar.i() == g.c.DESTROY) {
            this.f3579a.remove(h);
        } else if (this.f3579a.containsKey(h)) {
            JsonUtils.putString((JSONObject) this.f3579a.get(h), "operation", bVar.i().toString());
        } else {
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, MintegralConstants.AD_UNIT_ID, bVar.a());
            JsonUtils.putString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, bVar.g());
            JsonUtils.putString(jSONObject, "network_name", bVar.c());
            JsonUtils.putString(jSONObject, "adapter_class", bVar.b());
            JsonUtils.putString(jSONObject, "adapter_version", bVar.d());
            JsonUtils.putString(jSONObject, "bcode", bVar.e());
            JsonUtils.putString(jSONObject, CampaignEx.JSON_KEY_CREATIVE_ID, bVar.f());
            JsonUtils.putString(jSONObject, "operation", bVar.i().toString());
            this.f3579a.put(h, jSONObject);
        }
        try {
            updateAdInfo(new JSONArray(this.f3579a.values()).toString());
        } catch (Throwable unused) {
        }
    }
}
