package com.tencent.thumbplayer.tcmedia.c;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.f;
import com.tencent.thumbplayer.tcmedia.utils.i;
import j$.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class i implements f.a, i.b {

    /* renamed from: a  reason: collision with root package name */
    private int f10577a;
    private String b;
    private int c;
    private ConcurrentHashMap<Integer, b> d;

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static i f10579a = new i();
    }

    private i() {
        this.f10577a = 0;
        this.b = "";
        this.c = 0;
        if (this.d == null) {
            this.d = new ConcurrentHashMap<>();
        }
        com.tencent.thumbplayer.tcmedia.utils.f.a(this);
        com.tencent.thumbplayer.tcmedia.utils.i.a().a(this);
    }

    private String b(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("EnableReport", z);
            return jSONObject.toString();
        } catch (JSONException e) {
            TPLogUtil.e("TPProxyGlobalManager", e);
            return "";
        }
    }

    private String c(long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("MaxUseMemoryLevel1MB", j);
            jSONObject.put("MaxUseMemoryLevel2MB", j);
            jSONObject.put("MaxUseMemoryMB", j);
            return jSONObject.toString();
        } catch (JSONException e) {
            TPLogUtil.e("TPProxyGlobalManager", e);
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00bc A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:11:0x0027, B:13:0x0039, B:17:0x004a, B:19:0x005b, B:20:0x005e, B:27:0x0075, B:29:0x00a1, B:31:0x00ab, B:33:0x00b1, B:34:0x00b4, B:36:0x00bc, B:37:0x00c3, B:23:0x0065, B:26:0x0071), top: B:41:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.thumbplayer.tcmedia.c.b a(int r9) {
        /*
            r8 = this;
            java.lang.String r0 = "proxy_config"
            java.lang.String r1 = "TPProxyGlobalManager"
            r2 = 0
            if (r9 >= 0) goto L8
            return r2
        L8:
            j$.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.tcmedia.c.b> r3 = r8.d
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)
            boolean r3 = r3.containsKey(r4)
            if (r3 == 0) goto L21
            j$.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.tcmedia.c.b> r0 = r8.d
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.Object r9 = r0.get(r9)
            com.tencent.thumbplayer.tcmedia.c.b r9 = (com.tencent.thumbplayer.tcmedia.c.b) r9
            return r9
        L21:
            com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy r3 = com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyFactory.getTPDownloadProxy(r9)
            if (r3 == 0) goto Lec
            android.content.Context r4 = com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr.getAppContext()     // Catch: java.lang.Throwable -> L47
            android.content.Context r5 = com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr.getAppContext()     // Catch: java.lang.Throwable -> L47
            com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyInitParam r5 = a(r5)     // Catch: java.lang.Throwable -> L47
            int r4 = r3.init(r4, r5)     // Catch: java.lang.Throwable -> L47
            if (r4 >= 0) goto L4a
            java.lang.String r9 = "downloadProxy init failed with status:"
            java.lang.String r0 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L47
            java.lang.String r9 = r9.concat(r0)     // Catch: java.lang.Throwable -> L47
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.i(r1, r9)     // Catch: java.lang.Throwable -> L47
            return r2
        L47:
            r9 = move-exception
            goto Ldf
        L4a:
            com.tencent.thumbplayer.tcmedia.c.i$1 r4 = new com.tencent.thumbplayer.tcmedia.c.i$1     // Catch: java.lang.Throwable -> L47
            r4.<init>()     // Catch: java.lang.Throwable -> L47
            r3.setLogListener(r4)     // Catch: java.lang.Throwable -> L47
            int r4 = com.tencent.thumbplayer.tcmedia.utils.i.c()     // Catch: java.lang.Throwable -> L47
            r5 = 10
            r6 = 1
            if (r4 != r6) goto L62
            r3.pushEvent(r6)     // Catch: java.lang.Throwable -> L47
        L5e:
            r3.pushEvent(r5)     // Catch: java.lang.Throwable -> L47
            goto L75
        L62:
            r6 = 2
            if (r4 != r6) goto L6e
            r3.pushEvent(r6)     // Catch: java.lang.Throwable -> L47
            r4 = 9
            r3.pushEvent(r4)     // Catch: java.lang.Throwable -> L47
            goto L75
        L6e:
            r7 = 3
            if (r4 != r7) goto L75
            r3.pushEvent(r6)     // Catch: java.lang.Throwable -> L47
            goto L5e
        L75:
            int r4 = r8.f10577a     // Catch: java.lang.Throwable -> L47
            r3.pushEvent(r4)     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = "carrier_pesudo_code"
            java.lang.String r5 = r8.b     // Catch: java.lang.Throwable -> L47
            r3.setUserData(r4, r5)     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = "carrier_pesudo_state"
            int r5 = r8.c     // Catch: java.lang.Throwable -> L47
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L47
            r3.setUserData(r4, r5)     // Catch: java.lang.Throwable -> L47
            boolean r4 = com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig.isDataReportEnable()     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = r8.b(r4)     // Catch: java.lang.Throwable -> L47
            r3.setUserData(r0, r4)     // Catch: java.lang.Throwable -> L47
            long r4 = com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig.getProxyMaxUseMemoryMB()     // Catch: java.lang.Throwable -> L47
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 <= 0) goto Lb4
            long r4 = com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig.getProxyMaxUseMemoryMB()     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = r8.c(r4)     // Catch: java.lang.Throwable -> L47
            if (r4 == 0) goto Lb4
            int r5 = r4.length()     // Catch: java.lang.Throwable -> L47
            if (r5 <= 0) goto Lb4
            r3.setUserData(r0, r4)     // Catch: java.lang.Throwable -> L47
        Lb4:
            long r4 = com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig.getProxyMaxStorageSizeMB()     // Catch: java.lang.Throwable -> L47
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto Lc3
            long r4 = com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig.getProxyMaxStorageSizeMB()     // Catch: java.lang.Throwable -> L47
            r3.setMaxStorageSizeMB(r4)     // Catch: java.lang.Throwable -> L47
        Lc3:
            com.tencent.thumbplayer.tcmedia.c.j r0 = new com.tencent.thumbplayer.tcmedia.c.j     // Catch: java.lang.Throwable -> L47
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L47
            j$.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.tcmedia.c.b> r3 = r8.d     // Catch: java.lang.Throwable -> L47
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L47
            r3.put(r4, r0)     // Catch: java.lang.Throwable -> L47
            java.lang.String r3 = "getPlayerProxy, init proxy succeeded, serviceType:"
            java.lang.String r9 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L47
            java.lang.String r9 = r3.concat(r9)     // Catch: java.lang.Throwable -> L47
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.i(r1, r9)     // Catch: java.lang.Throwable -> L47
            return r0
        Ldf:
            java.lang.String r9 = java.lang.String.valueOf(r9)
            java.lang.String r0 = "init proxy failed:"
            java.lang.String r9 = r0.concat(r9)
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(r1, r9)
        Lec:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.c.i.a(int):com.tencent.thumbplayer.tcmedia.c.b");
    }

    public static i a() {
        return a.f10579a;
    }

    private void b(int i) {
        for (b bVar : this.d.values()) {
            bVar.a(i);
        }
    }

    private static TPDLProxyInitParam a(Context context) {
        return new TPDLProxyInitParam(TPPlayerConfig.getPlatform(), TPPlayerConfig.getAppVersionName(context), TPPlayerConfig.getGuid(), TPPlayerConfig.getProxyCacheDir(), TPPlayerConfig.getProxyDataDir(), TPPlayerConfig.getProxyConfigDir());
    }

    public void b(long j) {
        for (b bVar : this.d.values()) {
            bVar.a().setUserData(TPDownloadProxyEnum.USER_PROXY_CONFIG, c(j));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.utils.i.b
    public void a(int i, int i2, int i3, int i4) {
        int i5 = 10;
        int i6 = 1;
        if (i2 != 1) {
            i6 = 2;
            if (i2 == 2) {
                b(2);
                i5 = 9;
                b(i5);
            } else if (i2 != 3) {
                return;
            }
        }
        b(i6);
        b(i5);
    }

    @Override // com.tencent.thumbplayer.tcmedia.utils.f.a
    public void a(int i, int i2, int i3, Object obj) {
        TPLogUtil.i("TPProxyGlobalManager", "onEvent eventId: " + i + ", arg1: " + i2 + ", arg2: " + i3 + ", object" + obj);
        switch (i) {
            case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                this.f10577a = 13;
                b(13);
                return;
            case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                this.f10577a = 14;
                b(14);
                return;
            case 100003:
                a((String) obj, i2);
                return;
            default:
                return;
        }
    }

    public void a(long j) {
        for (b bVar : this.d.values()) {
            ITPDownloadProxy a2 = bVar.a();
            if (a2 != null && j > 0) {
                a2.setMaxStorageSizeMB(j);
            }
        }
    }

    private void a(String str, int i) {
        this.b = str;
        this.c = i;
        for (b bVar : this.d.values()) {
            bVar.a().setUserData(TPDownloadProxyEnum.USER_UPC, str);
            bVar.a().setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(i));
        }
    }

    public void a(boolean z) {
        for (b bVar : this.d.values()) {
            bVar.a().setUserData(TPDownloadProxyEnum.USER_PROXY_CONFIG, b(z));
        }
    }
}
