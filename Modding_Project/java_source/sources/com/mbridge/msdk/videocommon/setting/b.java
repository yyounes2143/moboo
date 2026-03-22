package com.mbridge.msdk.videocommon.setting;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class b {
    private static ConcurrentHashMap<String, c> c = new ConcurrentHashMap<>();
    public static com.mbridge.msdk.videocommon.setting.a d = null;
    private static volatile b e;

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f10024a = false;
    private CopyOnWriteArrayList<String> b = new CopyOnWriteArrayList<>();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10025a;
        final /* synthetic */ String b;

        public a(String str, String str2) {
            this.f10025a = str;
            this.b = str2;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f10025a, this.b, 2, str2);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f10025a, this.b, 1, "");
        }
    }

    private b() {
    }

    public static b b() {
        if (e == null) {
            synchronized (b.class) {
                try {
                    if (e == null) {
                        e = new b();
                    }
                } finally {
                }
            }
        }
        return e;
    }

    public void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.b.add(str);
        } catch (Exception unused) {
        }
    }

    public com.mbridge.msdk.videocommon.setting.a c() {
        com.mbridge.msdk.videocommon.setting.a aVar = d;
        if (aVar == null) {
            com.mbridge.msdk.foundation.buffer.sharedperference.a b = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();
            String a2 = b.a("reward_" + com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(a2)) {
                com.mbridge.msdk.videocommon.setting.a a3 = com.mbridge.msdk.videocommon.setting.a.a(a2);
                if (a(a3)) {
                    e(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
                    return a();
                }
                return a3;
            }
            e(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
            return a();
        }
        return aVar;
    }

    public String d(String str) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str);
    }

    public void e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.b.remove(str);
        } catch (Exception unused) {
        }
    }

    public void f(String str, String str2) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str, str2);
        d = com.mbridge.msdk.videocommon.setting.a.a(str2);
    }

    public void g(String str, String str2) {
        try {
            String a2 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str + "_" + str2);
            if (!TextUtils.isEmpty(a2)) {
                JSONObject jSONObject = new JSONObject(a2);
                jSONObject.put("current_time", System.currentTimeMillis());
                a(str, str2, jSONObject.toString());
            }
        } catch (Throwable th) {
            o0.b("RewardSettingManager", th.getMessage());
        }
    }

    public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.net.c cVar) {
        if (!TextUtils.isEmpty(str3) && !this.b.contains(str3)) {
            a(str3);
            new com.mbridge.msdk.videocommon.net.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, str3, cVar);
            return;
        }
        o0.a("test_reward_unit_setting", "unitID: " + str3 + " is requesting");
    }

    public c d(String str, String str2) {
        String str3 = "reward_" + str + "_" + str2;
        if (c.containsKey(str3)) {
            return c.get(str3);
        }
        c a2 = c.a(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str3));
        if (a2 != null) {
            c.put(str3, a2);
        }
        return a2;
    }

    public void e(String str, String str2) {
        if (this.f10024a) {
            return;
        }
        this.f10024a = true;
        new com.mbridge.msdk.videocommon.net.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2);
    }

    public void f(String str) {
        try {
            com.mbridge.msdk.foundation.buffer.sharedperference.a b = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();
            String a2 = b.a("reward_" + str);
            if (TextUtils.isEmpty(a2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(a2);
            jSONObject.put("current_time", System.currentTimeMillis());
            f(str, jSONObject.toString());
        } catch (Throwable th) {
            o0.b("RewardSettingManager", th.getMessage());
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String c2 = b().a(com.mbridge.msdk.foundation.controller.c.m().b(), str, false).c();
        if (TextUtils.isEmpty(c2) || !TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(c2))) {
            return;
        }
        a(c2, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.videocommon.setting.c a(java.lang.String r5, java.lang.String r6, boolean r7) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "reward_"
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = "_"
            r0.append(r1)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.videocommon.setting.c> r1 = com.mbridge.msdk.videocommon.setting.b.c
            boolean r1 = r1.containsKey(r0)
            r2 = 0
            if (r1 == 0) goto L3f
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.videocommon.setting.c> r7 = com.mbridge.msdk.videocommon.setting.b.c     // Catch: java.lang.Exception -> L2f
            java.lang.Object r7 = r7.get(r0)     // Catch: java.lang.Exception -> L2f
            com.mbridge.msdk.videocommon.setting.c r7 = (com.mbridge.msdk.videocommon.setting.c) r7     // Catch: java.lang.Exception -> L2f
            boolean r0 = r4.a(r7)     // Catch: java.lang.Exception -> L30
            goto L31
        L2f:
            r7 = r2
        L30:
            r0 = 0
        L31:
            if (r0 == 0) goto L3e
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            java.lang.String r0 = r0.c()
            r4.a(r5, r0, r6, r2)
        L3e:
            return r7
        L3f:
            com.mbridge.msdk.foundation.buffer.sharedperference.a r1 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b()
            java.lang.String r1 = r1.a(r0)
            com.mbridge.msdk.videocommon.setting.c r1 = com.mbridge.msdk.videocommon.setting.c.a(r1)
            boolean r3 = r4.a(r1)
            if (r3 == 0) goto L64
            if (r1 != 0) goto L63
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            java.lang.String r0 = r0.c()
            r4.a(r5, r0, r6, r2)
            com.mbridge.msdk.videocommon.setting.c r5 = r4.a(r7)
            return r5
        L63:
            return r1
        L64:
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.videocommon.setting.c> r5 = com.mbridge.msdk.videocommon.setting.b.c
            r5.put(r0, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.setting.b.a(java.lang.String, java.lang.String, boolean):com.mbridge.msdk.videocommon.setting.c");
    }

    public com.mbridge.msdk.videocommon.setting.a d() {
        String str = "reward_" + com.mbridge.msdk.foundation.controller.c.m().b();
        if (d == null) {
            String a2 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str);
            if (!TextUtils.isEmpty(a2)) {
                com.mbridge.msdk.videocommon.setting.a a3 = com.mbridge.msdk.videocommon.setting.a.a(a2);
                if (a3 != null) {
                    d = a3;
                }
                return a3;
            }
        }
        return d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.videocommon.setting.c c(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "reward"
            r0.append(r1)
            java.lang.String r1 = "_"
            r0.append(r1)
            r0.append(r5)
            r0.append(r1)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.videocommon.setting.c> r1 = com.mbridge.msdk.videocommon.setting.b.c
            boolean r1 = r1.containsKey(r0)
            r2 = 0
            if (r1 == 0) goto L42
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.videocommon.setting.c> r1 = com.mbridge.msdk.videocommon.setting.b.c     // Catch: java.lang.Exception -> L32
            java.lang.Object r0 = r1.get(r0)     // Catch: java.lang.Exception -> L32
            com.mbridge.msdk.videocommon.setting.c r0 = (com.mbridge.msdk.videocommon.setting.c) r0     // Catch: java.lang.Exception -> L32
            boolean r1 = r4.a(r0)     // Catch: java.lang.Exception -> L33
            goto L34
        L32:
            r0 = r2
        L33:
            r1 = 0
        L34:
            if (r1 == 0) goto L41
            com.mbridge.msdk.foundation.controller.c r1 = com.mbridge.msdk.foundation.controller.c.m()
            java.lang.String r1 = r1.c()
            r4.a(r5, r1, r6, r2)
        L41:
            return r0
        L42:
            com.mbridge.msdk.foundation.buffer.sharedperference.a r1 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b()
            java.lang.String r1 = r1.a(r0)
            com.mbridge.msdk.videocommon.setting.c r1 = com.mbridge.msdk.videocommon.setting.c.a(r1)
            boolean r3 = r4.a(r1)
            if (r3 == 0) goto L60
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            java.lang.String r0 = r0.c()
            r4.a(r5, r0, r6, r2)
            return r2
        L60:
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.videocommon.setting.c> r5 = com.mbridge.msdk.videocommon.setting.b.c
            r5.put(r0, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.setting.b.c(java.lang.String, java.lang.String):com.mbridge.msdk.videocommon.setting.c");
    }

    public void b(boolean z) {
        this.f10024a = z;
    }

    public String b(String str, String str2) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str + "_" + str2);
    }

    public boolean a(com.mbridge.msdk.videocommon.setting.a aVar) {
        if (aVar != null) {
            return aVar.b() + aVar.d() <= System.currentTimeMillis();
        }
        return true;
    }

    public static boolean c(String str) {
        JSONArray optJSONArray;
        try {
            if (!TextUtils.isEmpty(str) && (optJSONArray = new JSONObject(str).optJSONArray("unitSetting")) != null) {
                String optString = optJSONArray.optJSONObject(0).optString("unitId");
                if (optJSONArray.length() > 0) {
                    if (!TextUtils.isEmpty(optString)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final com.mbridge.msdk.videocommon.setting.a a() {
        com.mbridge.msdk.videocommon.setting.a aVar = new com.mbridge.msdk.videocommon.setting.a();
        HashMap hashMap = new HashMap(5);
        hashMap.put("1", 1000);
        hashMap.put(DbParams.GZIP_DATA_ENCRYPT, 1000);
        hashMap.put("8", 1000);
        HashMap hashMap2 = new HashMap(3);
        hashMap2.put("1", new com.mbridge.msdk.videocommon.entity.c("Virtual Item", 1));
        aVar.a(hashMap);
        aVar.b(hashMap2);
        aVar.c(43200L);
        aVar.e(5400L);
        aVar.d(3600L);
        aVar.b(3600L);
        aVar.f(5L);
        aVar.a(1);
        return aVar;
    }

    private final boolean a(c cVar) {
        com.mbridge.msdk.videocommon.setting.a c2 = c();
        if (c2 == null || cVar == null) {
            return true;
        }
        return cVar.j() + c2.h() <= System.currentTimeMillis();
    }

    public void a(String str, String str2, String str3) {
        String str4 = "reward_" + str + "_" + str2;
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str4, str3);
        c a2 = c.a(str3);
        c.put(str4, a2);
        if (com.mbridge.msdk.util.b.a() || TextUtils.isEmpty(a2.c())) {
            return;
        }
        a(a2.c(), str2);
    }

    private void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
            j.a(d2, str, str2, 2, "alert url is exception ,url:" + str);
            return;
        }
        H5DownLoadManager.getInstance().downloadH5Res(new com.mbridge.msdk.foundation.same.report.metrics.c(true), str, new a(str, str2));
    }

    public c a(boolean z) {
        c cVar = new c();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new com.mbridge.msdk.videocommon.entity.b(1, 30, null));
            cVar.a((List<com.mbridge.msdk.videocommon.entity.b>) arrayList);
            cVar.b(1);
            cVar.e(1);
            cVar.E(1);
            cVar.h(1);
            cVar.u(1);
            cVar.n(1);
            cVar.D(3);
            cVar.C(80);
            cVar.y(100);
            cVar.i(0);
            cVar.o(2);
            cVar.G(-1);
            cVar.p(70);
            cVar.H(2);
            if (z) {
                cVar.I(5);
            } else {
                cVar.I(-1);
            }
            cVar.m(0);
            cVar.A(0);
            cVar.k(1);
            cVar.B(1);
            cVar.f(3);
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.add(4);
            arrayList2.add(6);
            cVar.a(arrayList2);
            cVar.q(1);
            cVar.F(1);
            cVar.r(60);
            return cVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return cVar;
        }
    }
}
