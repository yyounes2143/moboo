package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class l {
    private com.mbridge.msdk.videocommon.listener.a c;
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> e;
    private Context h;
    private String j;
    private com.mbridge.msdk.videocommon.setting.c k;
    private int m;
    private k p;
    private boolean q;

    /* renamed from: a  reason: collision with root package name */
    private List<CampaignEx> f10015a = new ArrayList();
    private boolean b = true;
    private String d = "";
    private c f = new a();
    private CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> g = new CopyOnWriteArrayList<>();
    private long i = 3600;
    private int l = 1;
    com.mbridge.msdk.setting.l n = null;
    com.mbridge.msdk.setting.l o = null;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements c {
        public a() {
        }

        @Override // com.mbridge.msdk.videocommon.download.c
        public void onProgress(long j, int i) {
            if (i == 5 || i == 4) {
                l.this.b = true;
                l.this.d();
            }
            if (i == 2) {
                l.this.b = true;
            }
        }
    }

    public l(Context context, List<CampaignEx> list, String str, int i) {
        this.m = 1;
        try {
            boolean b2 = j.a().b(i);
            this.q = b2;
            if (b2) {
                this.j = str;
                this.m = i;
                this.p = new k(list, str, i);
                return;
            }
        } catch (Exception unused) {
            this.p = null;
            this.q = false;
        }
        this.h = com.mbridge.msdk.foundation.controller.c.m().d();
        List<CampaignEx> list2 = this.f10015a;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        this.j = str;
        this.m = i;
        a(this.f10015a);
    }

    private boolean a(CampaignEx.c cVar) {
        return true;
    }

    public CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> c() {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            return kVar.e();
        }
        return this.g;
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x01d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x01e2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0042 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00df A[Catch: all -> 0x0022, TryCatch #1 {all -> 0x0022, blocks: (B:11:0x0016, B:13:0x001f, B:16:0x0025, B:17:0x002b, B:19:0x0031, B:22:0x003a, B:23:0x0042, B:25:0x0048, B:28:0x0058, B:31:0x005f, B:33:0x0065, B:34:0x0067, B:37:0x0073, B:38:0x0083, B:40:0x0094, B:42:0x0098, B:43:0x00a0, B:44:0x00a4, B:50:0x00b9, B:52:0x00bd, B:53:0x00d1, B:55:0x00d5, B:57:0x00db, B:59:0x00df, B:61:0x00e3, B:62:0x00f7, B:64:0x00fb, B:76:0x0129, B:78:0x012e, B:80:0x0134, B:84:0x016b, B:85:0x016f, B:87:0x0174, B:91:0x017c, B:94:0x0181, B:96:0x0185, B:97:0x018e, B:99:0x0192, B:103:0x019c, B:104:0x01a0, B:106:0x01c2, B:109:0x01c7, B:111:0x01cb, B:115:0x01d9, B:119:0x01e2, B:121:0x01ed, B:123:0x01f1, B:126:0x01f5, B:129:0x01fb, B:131:0x0206, B:135:0x020e, B:136:0x0213, B:142:0x0220, B:141:0x021d, B:65:0x0100, B:67:0x0104, B:71:0x0119, B:72:0x011f, B:74:0x0123, B:143:0x0225), top: B:150:0x0016, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012e A[Catch: all -> 0x0022, TryCatch #1 {all -> 0x0022, blocks: (B:11:0x0016, B:13:0x001f, B:16:0x0025, B:17:0x002b, B:19:0x0031, B:22:0x003a, B:23:0x0042, B:25:0x0048, B:28:0x0058, B:31:0x005f, B:33:0x0065, B:34:0x0067, B:37:0x0073, B:38:0x0083, B:40:0x0094, B:42:0x0098, B:43:0x00a0, B:44:0x00a4, B:50:0x00b9, B:52:0x00bd, B:53:0x00d1, B:55:0x00d5, B:57:0x00db, B:59:0x00df, B:61:0x00e3, B:62:0x00f7, B:64:0x00fb, B:76:0x0129, B:78:0x012e, B:80:0x0134, B:84:0x016b, B:85:0x016f, B:87:0x0174, B:91:0x017c, B:94:0x0181, B:96:0x0185, B:97:0x018e, B:99:0x0192, B:103:0x019c, B:104:0x01a0, B:106:0x01c2, B:109:0x01c7, B:111:0x01cb, B:115:0x01d9, B:119:0x01e2, B:121:0x01ed, B:123:0x01f1, B:126:0x01f5, B:129:0x01fb, B:131:0x0206, B:135:0x020e, B:136:0x0213, B:142:0x0220, B:141:0x021d, B:65:0x0100, B:67:0x0104, B:71:0x0119, B:72:0x011f, B:74:0x0123, B:143:0x0225), top: B:150:0x0016, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d() {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.l.d():void");
    }

    public void e() {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.k();
            return;
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.g;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = this.g.iterator();
                    while (it.hasNext()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                        if (next != null) {
                            for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : next.entrySet()) {
                                com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                                if (value != null && value.j() == 1) {
                                    value.c("playing and stop download");
                                    value.b();
                                    this.g.remove(next);
                                    return;
                                }
                            }
                            continue;
                        }
                    }
                }
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("UnitCacheCtroller", th.getMessage());
                }
            }
        }
    }

    public void f(CampaignEx campaignEx) {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.h(campaignEx);
            return;
        }
        List<CampaignEx> list = this.f10015a;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        a(this.f10015a);
    }

    public void b(List<CampaignEx> list) {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.a(list);
            return;
        }
        List<CampaignEx> list2 = this.f10015a;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        a(this.f10015a);
    }

    private int c(CampaignEx campaignEx) {
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.o == null) {
                    this.o = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.j);
                }
                return this.o.C();
            } else if (campaignEx.getAdType() == 42) {
                return a((CampaignEx) null);
            } else {
                if (this.k == null) {
                    this.k = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.j, false);
                }
                return this.k.w();
            }
        } catch (Throwable th) {
            o0.b("UnitCacheCtroller", th.getMessage(), th);
            return 100;
        }
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.a(aVar);
        } else {
            this.c = aVar;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f10017a;

        public b(CampaignEx campaignEx) {
            this.f10017a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            if (l.this.c != null) {
                l.this.c.a(str);
            }
            if (l.this.e == null || l.this.e.size() <= 0 || this.f10017a == null) {
                return;
            }
            ConcurrentHashMap concurrentHashMap = l.this.e;
            com.mbridge.msdk.videocommon.listener.a aVar = (com.mbridge.msdk.videocommon.listener.a) concurrentHashMap.get(this.f10017a.getRequestId() + "_" + this.f10017a.getSecondRequestIndex());
            if (aVar != null) {
                aVar.a(str);
                ConcurrentHashMap concurrentHashMap2 = l.this.e;
                concurrentHashMap2.remove(this.f10017a.getRequestId() + "_" + this.f10017a.getSecondRequestIndex());
            }
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            if (l.this.c != null) {
                l.this.c.a(str, str2);
            }
            CampaignEx campaignEx = this.f10017a;
            if (campaignEx == null || campaignEx.getRsIgnoreCheckRule() == null || this.f10017a.getRsIgnoreCheckRule().size() <= 0 || !this.f10017a.getRsIgnoreCheckRule().contains(0)) {
                if (l.this.e == null || l.this.e.size() <= 0 || this.f10017a == null) {
                    return;
                }
                ConcurrentHashMap concurrentHashMap = l.this.e;
                com.mbridge.msdk.videocommon.listener.a aVar = (com.mbridge.msdk.videocommon.listener.a) concurrentHashMap.get(this.f10017a.getRequestId() + "_" + this.f10017a.getSecondRequestIndex());
                if (aVar != null) {
                    aVar.a(str, str2);
                    ConcurrentHashMap concurrentHashMap2 = l.this.e;
                    concurrentHashMap2.remove(this.f10017a.getRequestId() + "_" + this.f10017a.getSecondRequestIndex());
                    return;
                }
                return;
            }
            o0.c("UnitCacheCtroller", "Is not check video download status");
        }
    }

    public void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.a(str, aVar);
            return;
        }
        if (this.e == null) {
            this.e = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.e.put(str, aVar);
    }

    public void b() {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.a();
        } else if (!q0.a().a("u_n_c_e_d", true) && (copyOnWriteArrayList = this.g) != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    long currentTimeMillis = System.currentTimeMillis();
                    int i = 0;
                    while (i < this.g.size()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> map = this.g.get(i);
                        for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : map.entrySet()) {
                            com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                            if (value != null) {
                                if (currentTimeMillis - value.i() > this.i * 1000 && value.j() == 1) {
                                    value.c("download timeout");
                                    value.c(this.l);
                                    value.b();
                                    this.g.remove(map);
                                    i--;
                                }
                                if (value.j() != 1 && value.j() != 5 && value.j() != 0) {
                                    value.b();
                                    this.g.remove(map);
                                    i--;
                                }
                            }
                        }
                        i++;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void a(List<CampaignEx> list) {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        if (list == null || list.size() == 0) {
            return;
        }
        if (list.get(0) != null) {
            this.d = list.get(0).getCurrentLocalRid();
        }
        a();
        b();
        int i = this.m;
        if (i != 1) {
            if (i != 287) {
                if (i == 298) {
                    com.mbridge.msdk.setting.l a2 = com.mbridge.msdk.setting.h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.j);
                    this.o = a2;
                    if (a2 == null) {
                        this.o = com.mbridge.msdk.setting.h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.j);
                    }
                    com.mbridge.msdk.setting.l lVar = this.o;
                    if (lVar != null) {
                        this.i = lVar.p();
                        this.l = this.o.q();
                    }
                } else if (i != 94) {
                    if (i == 95) {
                        try {
                            if (!TextUtils.isEmpty(this.j)) {
                                com.mbridge.msdk.setting.l e = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.j);
                                if (e == null) {
                                    e = com.mbridge.msdk.setting.l.j(this.j);
                                }
                                if (e != null) {
                                    this.i = e.p();
                                    this.l = e.q();
                                }
                            }
                        } catch (Exception unused) {
                            o0.b("UnitCacheCtroller", "make sure your had put feeds jar into your project");
                            return;
                        }
                    }
                }
            }
            try {
                com.mbridge.msdk.videocommon.setting.a c = com.mbridge.msdk.videocommon.setting.b.b().c();
                if (c == null) {
                    com.mbridge.msdk.videocommon.setting.b.b().a();
                }
                if (c != null) {
                    this.i = c.c();
                }
                if (!TextUtils.isEmpty(this.j)) {
                    this.k = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.j);
                }
                com.mbridge.msdk.videocommon.setting.c cVar = this.k;
                if (cVar != null) {
                    this.l = cVar.l();
                }
            } catch (Exception unused2) {
                o0.b("UnitCacheCtroller", "make sure your had put reward jar into your project");
                return;
            }
        } else {
            try {
                if (!TextUtils.isEmpty(this.j)) {
                    com.mbridge.msdk.setting.l e2 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.j);
                    this.n = e2;
                    if (e2 == null) {
                        this.n = com.mbridge.msdk.setting.l.i(this.j);
                    }
                    com.mbridge.msdk.setting.l lVar2 = this.n;
                    if (lVar2 != null) {
                        this.i = lVar2.p();
                        this.l = this.n.q();
                    }
                }
            } catch (Exception unused3) {
                o0.b("UnitCacheCtroller", "make sure your had put native video jar into your project");
                return;
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            CampaignEx campaignEx = list.get(i2);
            if (campaignEx != null) {
                int i3 = this.m;
                String str = (i3 != 94 && i3 != 287) ? campaignEx.getId() + campaignEx.getVideoUrlEncode() + campaignEx.getBidToken() : campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
                if ((d(campaignEx) || !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) && (copyOnWriteArrayList = this.g) != null) {
                    synchronized (copyOnWriteArrayList) {
                        int i4 = 0;
                        while (true) {
                            try {
                                if (i4 < this.g.size()) {
                                    Map<String, com.mbridge.msdk.videocommon.download.a> map = this.g.get(i4);
                                    if (map == null || !map.containsKey(str)) {
                                        i4++;
                                    } else {
                                        com.mbridge.msdk.videocommon.download.a aVar = map.get(str);
                                        if (aVar != null) {
                                            aVar.e(campaignEx);
                                            aVar.c(this.l);
                                            aVar.b(false);
                                            map.remove(str);
                                            map.put(str, aVar);
                                            this.g.set(i4, map);
                                        }
                                        e(campaignEx);
                                    }
                                } else {
                                    com.mbridge.msdk.videocommon.download.a aVar2 = new com.mbridge.msdk.videocommon.download.a(this.h, campaignEx, this.j, this.l);
                                    aVar2.c(this.l);
                                    aVar2.a(this.m);
                                    HashMap hashMap = new HashMap();
                                    hashMap.put(str, aVar2);
                                    this.g.add(hashMap);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        List<CampaignEx> list2 = this.f10015a;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        this.f10015a.clear();
    }

    private void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", 1);
                eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(b(campaignEx)));
                if (b(campaignEx) == 100) {
                    eVar.a("resumed_breakpoint", "2");
                } else {
                    eVar.a("resumed_breakpoint", "1");
                }
                eVar.a("resource_type", 4);
                eVar.a("scenes", "1");
                eVar.a("url", campaignEx.getVideoUrlEncode());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
            }
        }
    }

    public l(Context context, CampaignEx campaignEx, String str, int i) {
        this.m = 1;
        try {
            boolean b2 = j.a().b(i);
            this.q = b2;
            if (b2) {
                this.j = str;
                this.m = i;
                this.p = new k(campaignEx, str, i);
                return;
            }
        } catch (Exception unused) {
            this.p = null;
            this.q = false;
        }
        this.h = com.mbridge.msdk.foundation.controller.c.m().d();
        List<CampaignEx> list = this.f10015a;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        this.j = str;
        this.m = i;
        a(this.f10015a);
    }

    private int b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return c(campaignEx);
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x022a A[Catch: all -> 0x020c, Exception -> 0x020f, TRY_ENTER, TryCatch #0 {Exception -> 0x020f, blocks: (B:153:0x0248, B:124:0x01dc, B:126:0x01e6, B:136:0x0213, B:138:0x0219, B:140:0x021f, B:144:0x022a, B:152:0x0240, B:155:0x024d, B:158:0x0258, B:160:0x025c, B:162:0x0266, B:164:0x026c, B:168:0x0274, B:171:0x027e, B:173:0x0288, B:175:0x028e, B:183:0x02b9), top: B:193:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0219 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0086 A[Catch: all -> 0x0033, Exception -> 0x0037, TryCatch #1 {all -> 0x0033, blocks: (B:11:0x0019, B:15:0x0025, B:17:0x0031, B:32:0x0079, B:33:0x007e, B:35:0x0086, B:36:0x0096, B:38:0x009c, B:40:0x00aa, B:45:0x00ba, B:46:0x00c4, B:48:0x00ca, B:57:0x00f0, B:60:0x00f8, B:63:0x00ff, B:65:0x010f, B:66:0x0117, B:94:0x0171, B:96:0x0183, B:98:0x018d, B:102:0x0194, B:104:0x019a, B:106:0x01a7, B:108:0x01af, B:110:0x01b1, B:112:0x01b7, B:114:0x01bd, B:116:0x01bf, B:119:0x01c2, B:121:0x01cf, B:70:0x0125, B:72:0x012b, B:74:0x0135, B:77:0x0141, B:79:0x0147, B:81:0x014d, B:82:0x0151, B:84:0x0157, B:86:0x015d, B:88:0x015f, B:90:0x0169, B:92:0x016f, B:23:0x003d, B:25:0x0049, B:31:0x005f, B:29:0x0053), top: B:194:0x0019 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.videocommon.download.a b(int r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.l.b(int, boolean):com.mbridge.msdk.videocommon.download.a");
    }

    private boolean d(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                return campaignEx.getPlayable_ads_without_video() == 2;
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    private void a() {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.g;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    int i = 0;
                    while (i < this.g.size()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> map = this.g.get(i);
                        for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : map.entrySet()) {
                            com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                            if (value != null && value.c() != null && value.o()) {
                                value.t();
                                this.g.remove(map);
                                i--;
                            }
                        }
                        i++;
                    }
                }
            } catch (Throwable unused) {
                o0.b("UnitCacheCtroller", "cleanDisplayTask ERROR");
            }
        }
    }

    public List<com.mbridge.msdk.videocommon.download.a> a(String str, int i, boolean z, List<CampaignEx> list, boolean z2, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        long j;
        String str2;
        String str3;
        int i2;
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            return kVar.a(list, z2);
        }
        List<CampaignEx> list2 = list;
        ArrayList arrayList = new ArrayList();
        String str4 = "";
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.g;
        if (copyOnWriteArrayList != null) {
            synchronized (copyOnWriteArrayList) {
                try {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        int i3 = 0;
                        while (i3 < this.g.size()) {
                            Map<String, com.mbridge.msdk.videocommon.download.a> map = this.g.get(i3);
                            for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : map.entrySet()) {
                                try {
                                    com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                                    if (value != null && value.c() != null) {
                                        CampaignEx c = value.c();
                                        boolean z3 = false;
                                        for (CampaignEx campaignEx : list2) {
                                            if (c != null && campaignEx != null && !TextUtils.isEmpty(c.getRequestId()) && !TextUtils.isEmpty(campaignEx.getRequestId()) && c.getId().equals(campaignEx.getId()) && c.getRequestId().equals(campaignEx.getRequestId())) {
                                                if (!TextUtils.isEmpty(campaignEx.getNLRid())) {
                                                    c.setNLRid(campaignEx.getNLRid());
                                                }
                                                z3 = true;
                                            }
                                        }
                                        if (!z3) {
                                            str4 = "campaign is not available";
                                            j = currentTimeMillis;
                                        } else if ((!z || c.isBidCampaign()) && (z || !c.isBidCampaign())) {
                                            String str5 = c.getendcard_url();
                                            String videoUrlEncode = c.getVideoUrlEncode();
                                            String str6 = "";
                                            if (c.getRewardTemplateMode() != null) {
                                                str6 = c.getRewardTemplateMode().e();
                                            }
                                            String str7 = str6;
                                            String str8 = str4;
                                            try {
                                                CampaignEx.c rewardTemplateMode = c.getRewardTemplateMode();
                                                j = currentTimeMillis;
                                                if (i == 94 || i == 287) {
                                                    if (!TextUtils.isEmpty(str7) && !str7.contains(CampaignEx.KEY_IS_CMPT_ENTRY) && !a(i, c, str7)) {
                                                        str3 = "template is null or download is not ready";
                                                    } else {
                                                        if (b(str5, c)) {
                                                            if (value.o()) {
                                                                value.t();
                                                                str3 = "task is displayed";
                                                            } else {
                                                                if (y0.a(videoUrlEncode)) {
                                                                    if (a(rewardTemplateMode)) {
                                                                        arrayList.add(value);
                                                                        str4 = str8;
                                                                    } else {
                                                                        str2 = "image list is downloading or fail";
                                                                    }
                                                                } else if (a(value, b(c), z2) && a(rewardTemplateMode)) {
                                                                    arrayList.add(value);
                                                                    str4 = str8;
                                                                } else {
                                                                    str2 = "video and image list is downloading or fail";
                                                                }
                                                                currentTimeMillis = j;
                                                            }
                                                        } else {
                                                            str2 = "endcard is downloading or fail";
                                                        }
                                                        str8 = str2;
                                                    }
                                                    str4 = str3;
                                                }
                                                boolean isEmpty = TextUtils.isEmpty(value.f());
                                                int j2 = value.j();
                                                if (j2 == 5) {
                                                    if (value.o()) {
                                                        value.t();
                                                        this.g.remove(map);
                                                        i3--;
                                                        str3 = "task is displayed";
                                                    } else {
                                                        if (!isEmpty) {
                                                            value.a(0, 0);
                                                            if (i == 95) {
                                                                arrayList.add(value);
                                                            } else {
                                                                str3 = "resource path is not effective";
                                                            }
                                                        } else if (!a(str5, c) || !a(rewardTemplateMode)) {
                                                            return null;
                                                        } else {
                                                            arrayList.add(value);
                                                        }
                                                        str4 = str8;
                                                    }
                                                    str4 = str3;
                                                } else {
                                                    int i4 = i3;
                                                    if (q0.a().a("u_n_c_e_d", true)) {
                                                        i3 = i4;
                                                    } else {
                                                        long i5 = value.i();
                                                        if (value.j() != 1 || j - i5 <= this.i * 1000) {
                                                            i3 = i4;
                                                        } else {
                                                            value.c("download timeout");
                                                            value.b();
                                                            this.g.remove(map);
                                                            i3 = i4 - 1;
                                                            if (i != 1 && i != 94) {
                                                                str8 = "video download time over dlct";
                                                            }
                                                            list2 = list;
                                                            str4 = "video download time over dlct";
                                                            currentTimeMillis = j;
                                                        }
                                                        i2 = (j2 == 4 || j2 == 2) ? 1 : 1;
                                                        this.g.remove(map);
                                                        value.b();
                                                        i3--;
                                                        str3 = "video download stop or pause";
                                                        str4 = str3;
                                                    }
                                                    if (j2 == i2) {
                                                        if (value.o()) {
                                                            str3 = "video was displayed";
                                                            str4 = str3;
                                                        } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                            if (a(value, b(c), z2) && a(str5, c) && a(rewardTemplateMode)) {
                                                                arrayList.add(value);
                                                                str4 = str8;
                                                            } else {
                                                                str8 = "video or endcard or image list is downloading or fail";
                                                            }
                                                        }
                                                    }
                                                    if (i != 94 && i != 287) {
                                                        list2 = list;
                                                        str4 = str8;
                                                        currentTimeMillis = j;
                                                    }
                                                    if (a(value, b(c), z2) && a(str5, c) && a(rewardTemplateMode)) {
                                                        arrayList.add(value);
                                                        str4 = str8;
                                                    } else {
                                                        str3 = "video or endcard or image list is downloading or fail";
                                                        str4 = str3;
                                                    }
                                                }
                                            } catch (Exception e) {
                                                e = e;
                                                str4 = str8;
                                                e.printStackTrace();
                                                if (arrayList.size() == 0) {
                                                    eVar.a("is_ready_fail_reason", str4);
                                                }
                                                return arrayList;
                                            }
                                        } else {
                                            list2 = list;
                                        }
                                    } else {
                                        j = currentTimeMillis;
                                        str4 = "task or task's campaign is NULL";
                                        i3 = i3;
                                    }
                                    list2 = list;
                                    currentTimeMillis = j;
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            }
                            i3++;
                            list2 = list;
                        }
                    } finally {
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        }
        try {
            if (arrayList.size() == 0 && eVar != null) {
                eVar.a("is_ready_fail_reason", str4);
            }
        } catch (Throwable th) {
            o0.b("UnitCacheCtroller", th.getMessage());
        }
        return arrayList;
    }

    private boolean b(String str, CampaignEx campaignEx) {
        if (campaignEx.isMraid() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (campaignEx.getLoadTimeoutState() != 1 || d(campaignEx)) {
            if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
                return y0.b(H5DownLoadManager.getInstance().getH5ResAddress(str)) || y0.b(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str));
            }
            o0.c("UnitCacheCtroller", "Is not check endCard download status : " + str);
            return true;
        }
        return true;
    }

    public void b(String str) {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            kVar.c(str);
            return;
        }
        try {
            synchronized (this.g) {
                if (!TextUtils.isEmpty(str) && (copyOnWriteArrayList = this.g) != null && copyOnWriteArrayList.size() > 0) {
                    Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = this.g.iterator();
                    while (it.hasNext()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                        if (next != null) {
                            for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : next.entrySet()) {
                                if (entry != null && TextUtils.equals(entry.getKey(), str)) {
                                    this.g.remove(next);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b("UnitCacheCtroller", e.getMessage());
            }
        }
    }

    public boolean a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            CampaignEx campaignEx = list.get(i);
            if (campaignEx == null || !a(new com.mbridge.msdk.videocommon.download.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str, this.l), b(campaignEx), false) || !a(campaignEx.getendcard_url(), campaignEx)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i) {
        long h = aVar.h();
        long e = aVar.e();
        if (TextUtils.isEmpty(aVar.d())) {
            o0.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        if (i == 0) {
            if (aVar.c() != null && !TextUtils.isEmpty(aVar.c().getVideoUrlEncode())) {
                return true;
            }
        } else if (e > 0 && h * 100 >= e * i) {
            if (i != 100 || aVar.j() == 5) {
                return true;
            }
            aVar.b();
            return false;
        }
        return false;
    }

    public static boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i, boolean z) {
        long h = aVar.h();
        long e = aVar.e();
        if (TextUtils.isEmpty(aVar.d())) {
            o0.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        CampaignEx c = aVar.c();
        if (c != null) {
            if (c.getRsIgnoreCheckRule() != null && c.getRsIgnoreCheckRule().size() > 0 && c.getRsIgnoreCheckRule().contains(0)) {
                o0.c("UnitCacheCtroller", "Is not check video download status");
                return true;
            } else if (c.getIsTimeoutCheckVideoStatus() == 1 && c.getVideoCheckType() == 1) {
                return true;
            } else {
                if (z && c.getVideoCheckType() == 1) {
                    if (i == 0) {
                        return true;
                    }
                    if ((e != 0 || h != 0) && h >= (i / 100) * e) {
                        c.setIsTimeoutCheckVideoStatus(1);
                        return true;
                    }
                }
            }
        }
        return a(aVar, i);
    }

    private boolean a(String str, CampaignEx campaignEx) {
        try {
            if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
                return (campaignEx.isDynamicView() && !t0.l(str)) || y0.a(str) || b(str, campaignEx);
            }
            o0.c("UnitCacheCtroller", "Is not check endCard download status : " + str);
            return true;
        } catch (Throwable th) {
            o0.b("UnitCacheCtroller", th.getMessage(), th);
            return false;
        }
    }

    private boolean a(int i, CampaignEx campaignEx, String str) {
        if (campaignEx.isDynamicView()) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
            o0.c("UnitCacheCtroller", "Is not check template download status");
            return true;
        }
        if (!TextUtils.isEmpty(str) && campaignEx.getLoadTimeoutState() == 0) {
            o0.a("UnitCacheCtroller", "check template 下载情况：" + H5DownLoadManager.getInstance().getH5ResAddress(str));
            if (H5DownLoadManager.getInstance().getH5ResAddress(str) == null) {
                return false;
            }
        }
        return true;
    }

    public com.mbridge.msdk.videocommon.download.a a(int i, boolean z) {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            return kVar.d();
        }
        try {
            return b(i, z);
        } catch (Throwable th) {
            o0.b("UnitCacheCtroller", th.getMessage(), th);
            return null;
        }
    }

    public com.mbridge.msdk.videocommon.download.a a(String str) {
        k kVar;
        if (this.q && (kVar = this.p) != null) {
            return kVar.a(str);
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.g;
        if (copyOnWriteArrayList != null) {
            synchronized (copyOnWriteArrayList) {
                try {
                    Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = this.g.iterator();
                    while (it.hasNext()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                        if (next != null && next.containsKey(str)) {
                            return next.get(str);
                        }
                    }
                    return null;
                } finally {
                }
            }
        }
        return null;
    }

    private boolean a(CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList) {
        try {
            Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                if (next != null) {
                    for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : next.entrySet()) {
                        if (entry.getValue().j() == 1) {
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
                return false;
            }
            return false;
        }
    }

    private int a(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.setting.l lVar = this.n;
            if (lVar != null) {
                return lVar.C();
            }
            return 100;
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b("UnitCacheCtroller", e.getMessage());
                return 100;
            }
            return 100;
        }
    }
}
