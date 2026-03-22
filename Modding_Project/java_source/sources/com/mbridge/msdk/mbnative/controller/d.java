package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.k;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.network.g;
import com.unity3d.services.core.fid.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d extends com.mbridge.msdk.mbnative.controller.b {
    private static final String r = "d";
    private static Map<String, Map<Long, Object>> s = new HashMap();
    private static Map<String, Boolean> t = new HashMap();
    private static Map<String, k> u = new HashMap();
    private static Map<String, Integer> v = new HashMap();
    private static Map<String, Integer> w = new HashMap();
    private static d x = null;
    private static int y = -1;
    private static int z = -2;
    private j b;
    private com.mbridge.msdk.click.a c;
    private l d;
    private String e;
    private Map<String, Object> i;
    private List<Integer> j;
    protected List<Integer> k;
    private List<Integer> l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    Queue<Integer> f = null;
    Queue<Long> g = null;
    private int h = 0;
    private com.mbridge.msdk.foundation.same.task.b q = new com.mbridge.msdk.foundation.same.task.b(com.mbridge.msdk.foundation.controller.c.m().d());

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private Runnable j;
        private com.mbridge.msdk.preload.listenter.a l;
        private List<String> h = null;
        private boolean i = false;
        private boolean k = true;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f9250a;

            public a(CampaignUnit campaignUnit) {
                this.f9250a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                int i;
                int i2 = 1;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z = true;
                } else {
                    z = false;
                }
                if (b.this.j != null) {
                    b bVar = b.this;
                    d.this.f9244a.removeCallbacks(bVar.j);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    d.this.a(this.f9250a);
                }
                if (d.s.containsKey("0_" + b.this.unitId)) {
                    d.s.remove("0_" + b.this.unitId);
                }
                if (b.this.g > 0) {
                    if (this.f9250a.ads.size() <= b.this.g) {
                        b.this.d = this.f9250a.ads.size();
                    } else {
                        b bVar2 = b.this;
                        bVar2.d = bVar2.g;
                    }
                } else if (b.this.g == -1) {
                    b.this.d = 0;
                } else if (b.this.g == -3) {
                    b.this.d = this.f9250a.ads.size();
                } else if (b.this.g == -2) {
                    if (this.f9250a.getTemplate() == 3) {
                        if (b.this.f != 0) {
                            b bVar3 = b.this;
                            bVar3.d = bVar3.f;
                        }
                    } else if (b.this.e != 0) {
                        b bVar4 = b.this;
                        bVar4.d = bVar4.e;
                    }
                    if (b.this.d <= 0) {
                        b.this.d = ((Integer) d.v.get(b.this.unitId)).intValue();
                    }
                }
                if (this.f9250a.ads.size() < b.this.d) {
                    b.this.d = this.f9250a.ads.size();
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = 0; i3 < this.f9250a.ads.size(); i3++) {
                    CampaignEx campaignEx = this.f9250a.ads.get(i3);
                    campaignEx.setCampaignUnitId(b.this.unitId);
                    boolean c = t0.c(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx.getPackageName());
                    d.this.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
                    if (arrayList.size() < b.this.d && campaignEx.getOfferType() != 99) {
                        if (t0.c(campaignEx)) {
                            if (c) {
                                i = 1;
                            } else {
                                i = 2;
                            }
                            campaignEx.setRtinsType(i);
                        }
                        if (com.mbridge.msdk.foundation.same.c.b(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx)) {
                            arrayList.add(campaignEx);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList2.add(campaignEx);
                            }
                        } else {
                            t0.a(b.this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.x);
                        }
                        b.this.a(campaignEx, null, null);
                    }
                    d dVar = d.this;
                    dVar.a(dVar.m, campaignEx);
                }
                b bVar5 = b.this;
                d.this.a(arrayList2, bVar5.unitId);
                if (this.f9250a.getAds().get(0) != null) {
                    i2 = this.f9250a.getAds().get(0).getType();
                }
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a2 = com.mbridge.msdk.mbnative.cache.c.a(i2);
                if (a2 != null) {
                    a2.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) b.this.unitId, (String) arrayList);
                }
                d.a(b.this.c, b.this.unitId);
                if (Looper.myLooper() != null && z) {
                    Looper.loop();
                }
                if (this.f9250a.getAds().get(0) != null) {
                    com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f9250a.getAds().get(0).getMaitve(), this.f9250a.getAds().get(0).getMaitve_src());
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.mbnative.controller.d$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0125b extends c.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f9251a;
            final /* synthetic */ Context b;

            public C0125b(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f9251a = campaignEx;
                this.b = context;
            }

            @Override // com.mbridge.msdk.foundation.same.c.a
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f9251a, this.b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9252a;
            final /* synthetic */ int b;

            public c(String str, int i) {
                this.f9252a = str;
                this.b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z = true;
                } else {
                    z = false;
                }
                if (!b.this.i) {
                    if (b.this.j != null) {
                        b bVar = b.this;
                        d.this.f9244a.removeCallbacks(bVar.j);
                    }
                    if (b.this.a() == 1 || b.this.k) {
                        b bVar2 = b.this;
                        d dVar = d.this;
                        String str = this.f9252a;
                        int a2 = bVar2.a();
                        b bVar3 = b.this;
                        dVar.a(str, a2, bVar3.unitId, bVar3.placementId, bVar3.l);
                    }
                } else if (b.this.k) {
                    b bVar4 = b.this;
                    d dVar2 = d.this;
                    String str2 = this.f9252a;
                    int a3 = bVar4.a();
                    b bVar5 = b.this;
                    dVar2.a(str2, a3, bVar5.unitId, bVar5.placementId, bVar5.l);
                }
                if (this.b == -1) {
                    d.b(b.this.c, b.this.unitId);
                }
                if (Looper.myLooper() != null && z) {
                    Looper.loop();
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.mbnative.controller.d$b$d  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0126d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f9253a;

            public RunnableC0126d(List list) {
                this.f9253a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z = true;
                } else {
                    z = false;
                }
                if (!b.this.i && b.this.j != null) {
                    b bVar = b.this;
                    d.this.f9244a.removeCallbacks(bVar.j);
                }
                List list = this.f9253a;
                if (list != null && list.size() > 0) {
                    for (Frame frame : this.f9253a) {
                        for (CampaignEx campaignEx : frame.getCampaigns()) {
                            d dVar = d.this;
                            dVar.a(dVar.m, campaignEx);
                        }
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put(Long.valueOf(System.currentTimeMillis()), this.f9253a);
                    Map map = d.s;
                    if (map.containsKey("1_" + b.this.unitId)) {
                        Map map2 = d.s;
                        map2.remove("1_" + b.this.unitId);
                    }
                    Map map3 = d.s;
                    map3.put("1_" + b.this.unitId, hashMap);
                }
                if (Looper.myLooper() != null && z) {
                    Looper.loop();
                }
            }
        }

        public b(int i) {
            this.c = i;
        }

        public void b(List<String> list) {
            this.h = list;
        }

        public void c(int i) {
            this.e = i;
        }

        public void d(int i) {
            this.d = i;
        }

        public void e(int i) {
            this.f = i;
        }

        public void b(int i) {
            this.g = i;
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.l = aVar;
        }

        public void b(boolean z) {
            this.k = z;
        }

        @Override // com.mbridge.msdk.foundation.same.task.d
        public void a(boolean z) {
            this.i = z;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<g> list, CampaignUnit campaignUnit) {
            d.this.n = true;
            d.this.a(true, this.l, (String) null);
            d.this.a(new Thread(new a(campaignUnit)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                Context d = com.mbridge.msdk.foundation.controller.c.m().d();
                com.mbridge.msdk.foundation.same.c.a(campaignEx, d, cVar, new C0125b(campaignEx, d, aVar));
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(int i, String str) {
            d.this.a(new Thread(new c(str, i)));
        }

        public void a(Runnable runnable) {
            this.j = runnable;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<Frame> list) {
            d.this.a(new Thread(new RunnableC0126d(list)));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f9254a;
        private com.mbridge.msdk.foundation.same.task.d b;
        private int c;
        private String d;
        private String e;
        private com.mbridge.msdk.preload.listenter.a f;
        private boolean g = false;

        public c(int i, com.mbridge.msdk.foundation.same.task.d dVar, int i2, String str, String str2) {
            this.f9254a = i;
            this.b = dVar;
            this.c = i2;
            this.d = str;
            this.e = str2;
        }

        public void a(boolean z) {
            this.g = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.b.a(true);
            int i = this.f9254a;
            if (i == 1) {
                d.this.n = true;
                if (!this.g && this.c != 1) {
                    return;
                }
                d.this.a("REQUEST_TIMEOUT", this.c, this.d, this.e, this.f);
            } else if (i == 2) {
                d.this.a("REQUEST_TIMEOUT", this.c, this.d, this.e, this.f);
            }
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f = aVar;
        }

        public void a(String str) {
            this.d = str;
        }
    }

    public d() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f9244a = new a();
    }

    public static Map<String, Integer> c() {
        return v;
    }

    public static Map<String, Integer> d() {
        return w;
    }

    public static Map<String, k> e() {
        return u;
    }

    public static Map<String, Map<Long, Object>> f() {
        return s;
    }

    public static Map<String, Boolean> g() {
        return t;
    }

    public static void b(int i, String str) {
        if (u.containsKey(str)) {
            k kVar = u.get(str);
            if (i == 1) {
                kVar.a(0);
            } else if (i == 2) {
                kVar.b(0);
            }
            u.put(str, kVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x01fa, code lost:
        if (android.text.TextUtils.isEmpty(r3) != false) goto L167;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02e5 A[Catch: Exception -> 0x0070, TryCatch #7 {Exception -> 0x0070, blocks: (B:3:0x0024, B:6:0x0030, B:8:0x0054, B:13:0x0073, B:16:0x007b, B:18:0x0081, B:19:0x008d, B:21:0x0091, B:23:0x00a4, B:25:0x00aa, B:26:0x00b6, B:28:0x00bc, B:29:0x00c4, B:31:0x00cc, B:33:0x00da, B:35:0x0108, B:37:0x010e, B:39:0x0122, B:40:0x012a, B:42:0x013c, B:46:0x0145, B:57:0x0176, B:59:0x0188, B:61:0x018e, B:63:0x0198, B:65:0x01ae, B:67:0x01b4, B:69:0x01bc, B:70:0x01c9, B:72:0x01d8, B:73:0x01de, B:75:0x01e6, B:77:0x01ee, B:82:0x0202, B:84:0x021e, B:86:0x0224, B:87:0x0231, B:89:0x0237, B:90:0x0243, B:92:0x0247, B:94:0x024d, B:95:0x025a, B:97:0x0260, B:98:0x0277, B:119:0x02da, B:121:0x02e5, B:123:0x02ee, B:149:0x03d0, B:56:0x016f, B:22:0x00a1, B:47:0x014f, B:49:0x0155, B:51:0x0164, B:52:0x0166, B:54:0x016c, B:124:0x02f9, B:126:0x030f, B:128:0x0328, B:130:0x0330, B:132:0x0336, B:133:0x0338, B:135:0x033e, B:136:0x0344, B:138:0x034a, B:140:0x035a, B:141:0x035d, B:142:0x035f, B:144:0x0365), top: B:165:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x030f A[Catch: all -> 0x03c5, TryCatch #7 {Exception -> 0x0070, blocks: (B:3:0x0024, B:6:0x0030, B:8:0x0054, B:13:0x0073, B:16:0x007b, B:18:0x0081, B:19:0x008d, B:21:0x0091, B:23:0x00a4, B:25:0x00aa, B:26:0x00b6, B:28:0x00bc, B:29:0x00c4, B:31:0x00cc, B:33:0x00da, B:35:0x0108, B:37:0x010e, B:39:0x0122, B:40:0x012a, B:42:0x013c, B:46:0x0145, B:57:0x0176, B:59:0x0188, B:61:0x018e, B:63:0x0198, B:65:0x01ae, B:67:0x01b4, B:69:0x01bc, B:70:0x01c9, B:72:0x01d8, B:73:0x01de, B:75:0x01e6, B:77:0x01ee, B:82:0x0202, B:84:0x021e, B:86:0x0224, B:87:0x0231, B:89:0x0237, B:90:0x0243, B:92:0x0247, B:94:0x024d, B:95:0x025a, B:97:0x0260, B:98:0x0277, B:119:0x02da, B:121:0x02e5, B:123:0x02ee, B:149:0x03d0, B:56:0x016f, B:22:0x00a1, B:47:0x014f, B:49:0x0155, B:51:0x0164, B:52:0x0166, B:54:0x016c, B:124:0x02f9, B:126:0x030f, B:128:0x0328, B:130:0x0330, B:132:0x0336, B:133:0x0338, B:135:0x033e, B:136:0x0344, B:138:0x034a, B:140:0x035a, B:141:0x035d, B:142:0x035f, B:144:0x0365), top: B:165:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.util.Map<java.lang.String, java.lang.Object> r27, int r28) {
        /*
            Method dump skipped, instructions count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbnative.controller.d.a(java.util.Map, int):void");
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i);
                    if (2 == jSONObject.optInt("id", 0)) {
                        return jSONObject.optInt("ad_num");
                    }
                }
            }
        } catch (Exception e) {
            o0.b(r, com.mbridge.msdk.mbnative.common.a.a(e));
        }
        return 0;
    }

    public List<Campaign> a(String str, int i) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a2;
        l e = h.b().e("", str);
        this.d = e;
        if (e == null) {
            this.d = l.i(str);
        }
        List<Integer> b2 = this.d.b();
        this.j = b2;
        if (b2 == null || b2.size() <= 0 || !this.j.contains(1) || (a2 = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return a2.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) str, i);
    }

    public void a(int i, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar) {
        Queue<Integer> queue = this.f;
        if (queue == null || queue.size() <= 0) {
            return;
        }
        try {
            int intValue = this.f.poll().intValue();
            long j = MBridgeConstans.REQUEST_TIME_OUT;
            Queue<Long> queue2 = this.g;
            if (queue2 != null && queue2.size() > 0) {
                j = this.g.poll().longValue();
            }
            o0.c(r, "preload start queue adsource = " + intValue);
            a(intValue, j, str, str2, this.i, i, lVar, aVar);
        } catch (Throwable unused) {
            o0.b(r, "queue poll exception");
        }
    }

    public void a(int i, long j, String str, String str2, Map<String, Object> map, int i2, l lVar, com.mbridge.msdk.preload.listenter.a aVar) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a2;
        List<Campaign> a3;
        if (i != 1 && (a2 = com.mbridge.msdk.mbnative.cache.c.a(i)) != null && (a3 = a2.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) str, this.p)) != null && a3.size() > 0) {
            a(true, aVar, (String) null);
        } else if (i == 1) {
            a(i, j, i2, lVar, str, str2, true, aVar);
        } else if (i != 2) {
            a(i, j, i2, lVar, str, str2, aVar, false);
        } else {
            a(2, j, i2, lVar, str, str2, aVar, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x0296 A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02a5 A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02cb A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0310 A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x035f A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x036c A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x039e A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03f7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0428 A[Catch: Exception -> 0x0092, TryCatch #2 {Exception -> 0x0092, blocks: (B:3:0x0016, B:6:0x005f, B:8:0x0065, B:10:0x006d, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:19:0x0095, B:21:0x009f, B:22:0x00a9, B:24:0x00b3, B:26:0x00bd, B:28:0x00c3, B:29:0x00cc, B:31:0x00e5, B:32:0x00ec, B:34:0x00f2, B:35:0x00f7, B:37:0x011e, B:38:0x0123, B:45:0x013f, B:48:0x0147, B:50:0x014f, B:52:0x0155, B:54:0x015a, B:56:0x015e, B:61:0x016b, B:63:0x0173, B:65:0x0179, B:70:0x0185, B:71:0x0197, B:73:0x019b, B:75:0x01b6, B:77:0x01be, B:79:0x01cd, B:80:0x01e5, B:84:0x01f6, B:86:0x01fc, B:88:0x0210, B:90:0x0216, B:95:0x021f, B:97:0x0225, B:102:0x0235, B:109:0x0257, B:117:0x026d, B:119:0x0296, B:120:0x029d, B:122:0x02a5, B:124:0x02b7, B:125:0x02c0, B:127:0x02cb, B:133:0x02db, B:137:0x02eb, B:142:0x02f8, B:146:0x0324, B:148:0x035f, B:149:0x0364, B:151:0x036c, B:153:0x0376, B:154:0x0396, B:156:0x039e, B:158:0x03a8, B:159:0x03c8, B:163:0x03fc, B:165:0x0428, B:169:0x045c, B:168:0x0445, B:162:0x03f9, B:145:0x0310, B:134:0x02e0, B:135:0x02e5, B:108:0x024a, B:111:0x025e, B:170:0x0462), top: B:178:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x043c  */
    @Override // com.mbridge.msdk.mbnative.controller.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r26, long r27, int r29, com.mbridge.msdk.setting.l r30, java.lang.String r31, java.lang.String r32, com.mbridge.msdk.preload.listenter.a r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbnative.controller.d.a(int, long, int, com.mbridge.msdk.setting.l, java.lang.String, java.lang.String, com.mbridge.msdk.preload.listenter.a, boolean):void");
    }

    public static void a(int i, String str) {
        k kVar;
        if (u.containsKey(str)) {
            kVar = u.get(str);
        } else {
            kVar = new k();
        }
        int intValue = v.get(str).intValue();
        int intValue2 = d().containsKey(str) ? d().get(str).intValue() : 1;
        if (i == 1) {
            int a2 = intValue + kVar.a();
            kVar.a(a2 <= intValue2 ? a2 : 0);
        } else if (i == 2) {
            int b2 = intValue + kVar.b();
            kVar.b(b2 <= intValue2 ? b2 : 0);
        }
        u.put(str, kVar);
    }

    public void a(String str, int i, String str2, String str3, com.mbridge.msdk.preload.listenter.a aVar) {
        try {
            Queue<Integer> queue = this.f;
            if (queue != null) {
                if (queue.size() > 0) {
                }
                a(false, aVar, str);
            }
            if (this.f != null) {
                a(i, this.d, str2, str3, aVar);
                return;
            }
            a(false, aVar, str);
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (this.b == null) {
            this.b = new j();
        }
        this.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, str3);
    }

    public void a(boolean z2, com.mbridge.msdk.preload.listenter.a aVar, String str) {
        if (z2) {
            if (aVar == null || aVar.a()) {
                return;
            }
            aVar.a(true);
            aVar.onPreloadSucceed();
        } else if (aVar == null || aVar.a()) {
        } else {
            aVar.a(true);
            aVar.onPreloadFaild(str);
        }
    }

    public void a(boolean z2, Campaign campaign) {
        if (campaign == null) {
            return;
        }
        if (z2 && campaign.getIconDrawable() == null) {
            campaign.loadIconUrlAsyncWithBlock(null);
        }
        if (z2 && campaign.getBigDrawable() == null) {
            campaign.loadImageUrlAsyncWithBlock(null);
        }
    }

    public void a(Thread thread) {
        if (!MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD) {
            thread.run();
        } else {
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<CampaignEx> list, String str) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    try {
                        int i = MBMediaView.p0;
                        Object invoke = com.mbridge.msdk.videocommon.download.b.class.getMethod(Constants.GET_INSTANCE, null).invoke(null, null);
                        if (invoke != null) {
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(invoke, com.mbridge.msdk.foundation.controller.c.m().d(), str, new CopyOnWriteArrayList(list), 1, null);
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("load", String.class).invoke(invoke, str);
                        }
                    } catch (Exception unused) {
                        o0.b(r, "please import the videocommon aar");
                    }
                }
            } catch (Exception e) {
                o0.b(r, com.mbridge.msdk.mbnative.common.a.a(e));
            }
        }
    }
}
