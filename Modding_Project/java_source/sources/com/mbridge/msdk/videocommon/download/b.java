package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class b {
    private static volatile b f;

    /* renamed from: a  reason: collision with root package name */
    private boolean f10005a = false;
    private ConcurrentHashMap<String, l> b = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> c;
    private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> d;
    private ConcurrentHashMap<String, CopyOnWriteArrayList<a>> e;

    private b() {
    }

    public static b getInstance() {
        if (f == null) {
            synchronized (b.class) {
                try {
                    if (f == null) {
                        f = new b();
                    }
                } finally {
                }
            }
        }
        return f;
    }

    public a a(String str, String str2) {
        l c = c(str);
        if (c != null) {
            return c.a(str2);
        }
        return null;
    }

    public CopyOnWriteArrayList<CampaignEx> b(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap = this.d;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.d.get(str);
    }

    public l c(String str) {
        ConcurrentHashMap<String, l> concurrentHashMap = this.b;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.b.get(str);
    }

    public l createUnitCache(Context context, String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, int i, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (TextUtils.isEmpty(str) || copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return null;
        }
        if (this.b.containsKey(str)) {
            l lVar = this.b.get(str);
            if (lVar == null) {
                lVar = new l(context, copyOnWriteArrayList, str, i);
                this.b.put(str, lVar);
            }
            if (i != 94 && i != 287) {
                lVar.a(aVar);
            } else {
                lVar.a(copyOnWriteArrayList.get(0).getRequestId() + "_" + copyOnWriteArrayList.get(0).getSecondRequestIndex(), aVar);
            }
            lVar.b(copyOnWriteArrayList);
            return lVar;
        }
        l lVar2 = new l(context, copyOnWriteArrayList, str, i);
        if (i != 94 && i != 287) {
            lVar2.a(aVar);
        } else {
            lVar2.a(copyOnWriteArrayList.get(0).getRequestId() + "_" + copyOnWriteArrayList.get(0).getSecondRequestIndex(), aVar);
        }
        this.b.put(str, lVar2);
        return lVar2;
    }

    public void load(String str) {
        l c = c(str);
        if (c != null) {
            c.d();
        }
    }

    public CopyOnWriteArrayList<a> a(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap = this.e;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.e.get(str);
    }

    public boolean b(int i, String str, boolean z) {
        try {
            l c = c(str);
            if (c != null) {
                return c.b(i, z) != null;
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public void c(String str, String str2) {
        l c = c(str);
        if (c != null) {
            try {
                c.b(str2);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("DownLoadManager", e.getMessage());
                }
            }
        }
    }

    public a a(int i, String str, boolean z) {
        l c = c(str);
        if (c != null) {
            return c.a(i, z);
        }
        return null;
    }

    public boolean a(int i, String str, boolean z, int i2, boolean z2, int i3, List<CampaignEx> list) {
        return a(i, str, z, i2, z2, i3, list, false, null);
    }

    public void b(boolean z) {
        this.f10005a = z;
        ConcurrentHashMap<String, l> concurrentHashMap = this.b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                l value = entry.getValue();
                if (value != null) {
                    value.e();
                }
            }
        }
    }

    public boolean a(int i, String str, List<CampaignEx> list) {
        String str2;
        l c = c(str);
        if (c == null) {
            str2 = str;
            c = createUnitCache(com.mbridge.msdk.foundation.controller.c.m().d(), str2, (CopyOnWriteArrayList) list, i, (com.mbridge.msdk.videocommon.listener.a) null);
        } else {
            str2 = str;
        }
        if (c != null) {
            return c.a(list, str2);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01a8, code lost:
        if (r12.d != null) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01aa, code lost:
        r12.d = new j$.util.concurrent.ConcurrentHashMap<>();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b1, code lost:
        if (r13 == null) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01b7, code lost:
        if (r13.size() <= 0) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b9, code lost:
        r0 = new java.util.concurrent.CopyOnWriteArrayList<>();
        r2 = new java.util.concurrent.CopyOnWriteArrayList<>();
        r3 = new java.util.concurrent.CopyOnWriteArrayList<>();
        r13 = r13.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d0, code lost:
        if (r13.hasNext() == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01d2, code lost:
        r4 = r13.next();
        r5 = new j$.util.concurrent.ConcurrentHashMap();
        r6 = r4.c();
        r5.put(r6.getId() + r6.getVideoUrlEncode() + r6.getBidToken(), r4);
        r0.add(r5);
        r2.add(r6);
        r3.add(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x020c, code lost:
        a(r14, r0, r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x012c, code lost:
        if (r3.size() >= r16) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0192, code lost:
        if (r12.c != null) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0194, code lost:
        r12.c = new j$.util.concurrent.ConcurrentHashMap<>();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x019d, code lost:
        if (r12.e != null) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x019f, code lost:
        r12.e = new j$.util.concurrent.ConcurrentHashMap<>();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(int r13, java.lang.String r14, boolean r15, int r16, boolean r17, int r18, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r19, boolean r20, com.mbridge.msdk.foundation.same.report.metrics.e r21) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.b.a(int, java.lang.String, boolean, int, boolean, int, java.util.List, boolean, com.mbridge.msdk.foundation.same.report.metrics.e):boolean");
    }

    public l createUnitCache(Context context, String str, CampaignEx campaignEx, int i, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (TextUtils.isEmpty(str) || campaignEx == null) {
            return null;
        }
        if (this.b.containsKey(str)) {
            l lVar = this.b.get(str);
            if (lVar == null) {
                lVar = new l(context, campaignEx, str, i);
                this.b.put(str, lVar);
            }
            if (i != 94 && i != 287) {
                lVar.a(aVar);
            } else {
                lVar.a(campaignEx.getRequestId() + "_" + campaignEx.getSecondRequestIndex(), aVar);
            }
            lVar.f(campaignEx);
            return lVar;
        }
        l lVar2 = new l(context, campaignEx, str, i);
        if (i != 94 && i != 287) {
            lVar2.a(aVar);
        } else {
            lVar2.a(campaignEx.getRequestId() + "_" + campaignEx.getSecondRequestIndex(), aVar);
        }
        this.b.put(str, lVar2);
        return lVar2;
    }

    public int b(String str, String str2) {
        CopyOnWriteArrayList<Map<String, a>> c;
        a value;
        CampaignEx c2;
        ConcurrentHashMap<String, l> concurrentHashMap = this.b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                l value2 = entry.getValue();
                if (value2 != null && (c = value2.c()) != null) {
                    int size = c.size();
                    for (int i = 0; i < size; i++) {
                        Map<String, a> map = c.get(i);
                        if (map != null) {
                            Iterator<Map.Entry<String, a>> it = map.entrySet().iterator();
                            if (it.hasNext() && (value = it.next().getValue()) != null && (c2 = value.c()) != null) {
                                String videoUrlEncode = c2.getVideoUrlEncode();
                                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(videoUrlEncode) && str2.equals(videoUrlEncode)) {
                                    return value.j();
                                }
                            }
                        }
                    }
                    continue;
                }
            }
        }
        return 0;
    }

    private void a(String str, CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2, CopyOnWriteArrayList<a> copyOnWriteArrayList3) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList4;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            CampaignEx campaignEx = copyOnWriteArrayList2.get(0);
            if (campaignEx.getSecondRequestIndex() == 1 && (concurrentHashMap = this.d) != null && (copyOnWriteArrayList4 = concurrentHashMap.get(str)) != null && copyOnWriteArrayList4.size() > 0 && copyOnWriteArrayList4.get(0).getLocalRequestId().equals(campaignEx.getLocalRequestId())) {
                return;
            }
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> concurrentHashMap2 = this.c;
        if (concurrentHashMap2 == null) {
            this.c = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap2.remove(str);
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap3 = this.e;
        if (concurrentHashMap3 == null) {
            this.e = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap3.remove(str);
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap4 = this.d;
        if (concurrentHashMap4 == null) {
            this.d = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap4.remove(str);
        }
        this.c.put(str, copyOnWriteArrayList);
        this.d.put(str, copyOnWriteArrayList2);
        this.e.put(str, copyOnWriteArrayList3);
    }

    public void a(boolean z) {
        if (z) {
            if (this.f10005a) {
                return;
            }
        } else {
            this.f10005a = false;
        }
        ConcurrentHashMap<String, l> concurrentHashMap = this.b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                entry.getValue().d();
            }
        }
    }

    public void a() {
        ConcurrentHashMap<String, l> concurrentHashMap = this.b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                a(entry.getValue(), entry.getKey());
            }
        }
    }

    private void a(l lVar, String str) {
        try {
            com.mbridge.msdk.videocommon.setting.c c = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), str);
            if (c == null) {
                return;
            }
            if (c.l() == 2) {
                lVar.e();
            } else {
                lVar.d();
            }
        } catch (Exception e) {
            o0.b("DownLoadManager", e.getMessage());
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                com.mbridge.msdk.setting.l e2 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
                if (e2 == null) {
                    e2 = com.mbridge.msdk.setting.l.j(str);
                }
                if (e2.q() == 2) {
                    lVar.e();
                } else {
                    lVar.d();
                }
            } catch (Exception e3) {
                o0.b("DownLoadManager", e3.getMessage());
            }
        }
    }
}
