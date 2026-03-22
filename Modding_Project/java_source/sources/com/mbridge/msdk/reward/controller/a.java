package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.cache.a;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.reward.adapter.b;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static String b0 = "";
    public static String c0;
    private static ConcurrentHashMap<String, Integer> d0 = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, String> e0 = new ConcurrentHashMap<>();
    public static ConcurrentHashMap<String, i> f0 = new ConcurrentHashMap<>();
    private Queue<Integer> I;
    private String J;
    private CopyOnWriteArrayList<CampaignEx> S;
    private List<CampaignEx> T;

    /* renamed from: a  reason: collision with root package name */
    private Context f9402a;
    private com.mbridge.msdk.reward.adapter.c b;
    private com.mbridge.msdk.videocommon.setting.c c;
    private com.mbridge.msdk.videocommon.setting.a d;
    private volatile InterVideoOutListener e;
    private volatile h f;
    private String g;
    private String h;
    private MBridgeIds i;
    g j;
    private String k;
    private volatile String l;
    private String m;
    private int q;
    private int r;
    private int s;
    private boolean x;
    private int n = 0;
    private int p = 2;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private boolean y = false;
    private String z = "";
    private String A = "";
    private ArrayList<Integer> B = new ArrayList<>(7);
    private boolean C = false;
    private final Object D = new Object();
    public boolean E = false;
    int F = 25;
    int G = 1;
    private List<CampaignEx> H = new ArrayList();
    private com.mbridge.msdk.foundation.db.g K = null;
    private volatile boolean L = true;
    private volatile boolean M = false;
    private volatile boolean N = false;
    private volatile boolean O = false;
    private volatile boolean P = false;
    private volatile boolean Q = false;
    private volatile boolean R = false;
    volatile boolean U = false;
    volatile boolean V = false;
    volatile boolean W = false;
    volatile boolean X = false;
    volatile boolean Y = false;
    private JSONArray Z = new JSONArray();
    private int a0 = 1;
    private Handler o = new com.mbridge.msdk.reward.controller.b(this);

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f9409a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ CopyOnWriteArrayList c;
        final /* synthetic */ boolean d;
        final /* synthetic */ int e;

        public c(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z, int i) {
            this.b = campaignEx;
            this.c = copyOnWriteArrayList;
            this.d = z;
            this.e = i;
            this.f9409a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String unitId = bVar == null ? "" : bVar.e().getUnitId();
            a aVar = a.this;
            aVar.c(unitId, aVar.T);
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (this.f9409a == null) {
                this.f9409a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f9409a.b(this.c);
            this.f9409a.a(bVar);
            if (!this.d && a.this.f != null) {
                if (a.this.X) {
                    return;
                }
                a.this.X = true;
                a.this.f.b(bVar, this.f9409a);
            } else if (this.e != 1 || a.this.X || a.this.f == null) {
            } else {
                a.this.X = true;
                a.this.f.b(bVar, this.f9409a);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.K == null) {
                    a.this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                com.mbridge.msdk.foundation.db.h a2 = com.mbridge.msdk.foundation.db.h.a(a.this.K);
                if (a2 != null) {
                    a2.b(a.this.h);
                }
            } catch (Throwable unused) {
                o0.b("RewardVideoController", "can't find DailyPlayCapDao");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.reward.adapter.c f9414a;
        private final int b;
        private final boolean c;
        private boolean d = false;
        private int e;
        private String f;
        private com.mbridge.msdk.foundation.same.report.metrics.c g;

        public f(com.mbridge.msdk.reward.adapter.c cVar, int i, boolean z, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar2) {
            this.f9414a = cVar;
            this.b = i;
            this.c = z;
            if (cVar != null) {
                cVar.c(false);
            }
            this.f = str;
            this.g = cVar2;
        }

        public void a() {
            this.d = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.d) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.f9414a;
            if (cVar != null) {
                cVar.c(true);
            }
            o0.b("RewardVideoController", "adSource=" + this.b + " CommonCancelTimeTask mIsDevCall：" + this.c);
            a.this.a(com.mbridge.msdk.foundation.error.a.a(880023, "v3 is timeout"), this.g);
        }

        public void a(int i) {
            this.e = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class g implements com.mbridge.msdk.reward.adapter.a {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.reward.adapter.c f9415a;
        private boolean b;
        private f c;

        public g(com.mbridge.msdk.reward.adapter.c cVar, boolean z) {
            this.f9415a = cVar;
            this.b = z;
        }

        public void a(f fVar) {
            this.c = fVar;
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.c;
            if (fVar != null) {
                fVar.a();
                a.this.o.removeCallbacks(this.c);
            }
            if (a.this.f != null) {
                a.this.f.a(a.this.l, a.this.h, cVar);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.c;
            if (fVar != null) {
                fVar.a();
                a.this.o.removeCallbacks(this.c);
            }
            a.this.a(list);
            if (a.this.f != null) {
                if (list != null && list.size() == 1) {
                    CampaignEx campaignEx = list.get(0);
                    if (!com.mbridge.msdk.foundation.same.c.a(a.this.f9402a, campaignEx) && campaignEx.getFilterAdsVideoCallState() == 0) {
                        if (a.this.a0 <= 1) {
                            com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880020, "load exception second");
                            if (cVar != null) {
                                cVar.a(a2);
                                cVar.b(true);
                            }
                            a.this.f.a(a2, cVar);
                            return;
                        }
                        a.m(a.this);
                        return;
                    }
                }
                a.this.f.c(a.this.l, a.this.h, cVar);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.c;
            if (fVar != null) {
                fVar.a();
                a.this.o.removeCallbacks(this.c);
            }
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f9415a;
            if (cVar2 != null) {
                cVar2.a((com.mbridge.msdk.reward.adapter.a) null);
                this.f9415a = null;
            }
            a.this.a(list);
            if (a.this.f != null) {
                a.this.f.a(bVar, cVar);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public final class h {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<InterVideoOutListener> f9416a;
        private volatile AtomicInteger b;
        private Handler c;
        private String d;
        private boolean e;

        public /* synthetic */ h(a aVar, InterVideoOutListener interVideoOutListener, Handler handler, String str, C0143a c0143a) {
            this(interVideoOutListener, handler, str);
        }

        public void c(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            InterVideoOutListener interVideoOutListener;
            Handler handler = this.c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            if (weakReference != null) {
                interVideoOutListener = weakReference.get();
            } else {
                interVideoOutListener = null;
            }
            if (this.b.get() != 2 && this.c != null) {
                a.m(a.this);
                this.b.set(2);
                if (!a.this.O) {
                    a.this.O = true;
                    if (cVar == null) {
                        cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    cVar.b(a.this.H);
                    a.this.a("2000048", cVar, interVideoOutListener);
                    if (interVideoOutListener != null) {
                        Message obtain = Message.obtain();
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                        bundle.putString("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                        obtain.obj = str2;
                        obtain.what = 9;
                        this.c.sendMessage(obtain);
                    }
                }
            }
        }

        public void d(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            InterVideoOutListener interVideoOutListener;
            Handler handler = this.c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            if (weakReference != null) {
                interVideoOutListener = weakReference.get();
            } else {
                interVideoOutListener = null;
            }
            if (this.b.get() != 2 && this.c != null) {
                if (this.b.get() == 1) {
                    this.b.set(3);
                }
                if (!a.this.O) {
                    a.this.O = true;
                    if (cVar == null) {
                        cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    cVar.a(true);
                    cVar.b(a.this.H);
                    a.this.a("2000048", cVar, interVideoOutListener);
                    if (interVideoOutListener != null) {
                        Message obtain = Message.obtain();
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                        bundle.putSerializable("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                        obtain.obj = str2;
                        obtain.what = 9;
                        this.c.sendMessage(obtain);
                    }
                    if (a.this.P) {
                        this.b.set(2);
                    }
                }
            }
        }

        private h(InterVideoOutListener interVideoOutListener, Handler handler, String str) {
            this.f9416a = new WeakReference<>(interVideoOutListener);
            this.b = new AtomicInteger(0);
            this.c = handler;
            this.d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message obtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, true);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                obtain.setData(bundle);
                obtain.obj = str2;
                obtain.what = 17;
                this.c.sendMessage(obtain);
                if (q0.a().a("l_s_i_l_v_s", false)) {
                    d(str, str2, cVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.b.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            this.b.set(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if ((this.b.get() != 1 && this.b.get() != 3) || this.c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message obtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, false);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                obtain.setData(bundle);
                obtain.obj = str2;
                obtain.what = 17;
                this.c.sendMessage(obtain);
                if (q0.a().a("l_s_i_l_v_s", false)) {
                    c(str, str2, cVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            a.this.a("2000047", cVar, weakReference != null ? weakReference.get() : null);
            if (this.c != null) {
                Message obtain = Message.obtain();
                obtain.obj = str;
                obtain.what = 18;
                if (cVar != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("metrics_data_lrid", cVar.o());
                    obtain.setData(bundle);
                }
                this.c.sendMessage(obtain);
            }
        }

        public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String str;
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2;
            CampaignEx campaignEx;
            if (bVar != null && cVar != null) {
                str = bVar.g();
                cVar.a(bVar);
            } else {
                str = "";
            }
            if (a.this.b == null || a.this.a0 != 1) {
                cVar2 = cVar;
            } else {
                a.this.b.a(a.this.j);
                CopyOnWriteArrayList<CampaignEx> f = a.this.b.f();
                CampaignEx campaignEx2 = (a.this.H == null || a.this.H.size() == 0) ? null : (CampaignEx) a.this.H.get(0);
                if (campaignEx2 == null) {
                    if (f == null || f.size() == 0) {
                        campaignEx = null;
                        if (a.this.u || !((campaignEx == null || TextUtils.isEmpty(campaignEx.getNLRid())) && (f == null || f.size() == 0))) {
                            cVar2 = cVar;
                        } else {
                            cVar2 = cVar;
                            if (a.this.b.a(campaignEx, true, bVar, 2, cVar2)) {
                                return;
                            }
                        }
                        a.this.b.a((com.mbridge.msdk.reward.adapter.a) null);
                    } else {
                        campaignEx2 = f.get(0);
                    }
                }
                campaignEx = campaignEx2;
                if (a.this.u) {
                }
                cVar2 = cVar;
                a.this.b.a((com.mbridge.msdk.reward.adapter.a) null);
            }
            Handler handler = this.c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.b.get() == 2 || this.c == null) {
                return;
            }
            a.this.P = true;
            if (!a.this.R || str.contains("resource load timeout")) {
                a.this.Q = true;
            }
            if (a.this.O) {
                this.b.set(2);
            }
            if (a.this.P && a.this.Q && !a.this.O) {
                if (a.this.a0 > 1) {
                    a.m(a.this);
                    a.this.b.a(a.this.j);
                    return;
                }
                this.b.set(2);
                a.this.a("2000047", cVar2, interVideoOutListener);
                if (interVideoOutListener != null) {
                    Message obtain = Message.obtain();
                    obtain.obj = str;
                    obtain.what = 16;
                    if (cVar2 != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar2.o());
                        obtain.setData(bundle);
                    }
                    this.c.sendMessage(obtain);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String str;
            WeakReference<InterVideoOutListener> weakReference = this.f9416a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.b.get() == 2 || this.c == null) {
                return;
            }
            a.this.Q = true;
            if (bVar != null) {
                str = bVar.g();
            } else {
                str = "";
            }
            if (str.contains("resource load timeout")) {
                a.this.P = true;
            }
            if (a.this.Q && a.this.P && !a.this.O) {
                this.b.set(2);
                if (interVideoOutListener != null) {
                    Message obtain = Message.obtain();
                    obtain.obj = str;
                    obtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                    }
                    this.c.sendMessage(obtain);
                }
                if (cVar == null) {
                    cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                cVar.a(true);
                a.this.a("2000047", cVar, interVideoOutListener);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.b.set(2);
            b(str, cVar);
        }

        public void a(boolean z) {
            this.e = z;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public final class i extends com.mbridge.msdk.video.bt.module.orglistener.b {
        private a c;
        private Handler d;
        private int e;

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.controller.a$i$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0150a implements Runnable {
            public RunnableC0150a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                if (i.this.c != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d b = com.mbridge.msdk.foundation.same.report.metrics.d.b();
                    if (a.this.t) {
                        i = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
                    } else {
                        i = 94;
                    }
                    i.this.c.a(false, b.a(0, i, a.this.h, true, 1));
                }
            }
        }

        public /* synthetic */ i(a aVar, a aVar2, Handler handler, C0143a c0143a) {
            this(aVar2, handler);
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void b(String str, String str2) {
            try {
                a aVar = this.c;
                if (aVar != null && aVar.e != null) {
                    try {
                        this.c.e.onVideoComplete(a.this.i);
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e.getMessage());
                        }
                    }
                    this.e = 5;
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e2.getMessage());
                }
            }
        }

        public void e() {
            a.this.B.clear();
            this.c = null;
        }

        private i(a aVar, Handler handler) {
            this.e = 0;
            this.c = aVar;
            this.d = handler;
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.E = false;
            try {
                com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(a.this.h, a.this.t);
                a aVar2 = this.c;
                aVar.a(cVar.o(), (aVar2 == null || aVar2.b == null) ? "" : this.c.b.H, 3, a.b0);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getMessage());
                }
            }
            try {
                a aVar3 = this.c;
                if (aVar3 != null) {
                    aVar3.C = true;
                    if (this.c.b != null) {
                        this.c.b.H = "";
                    }
                    this.c.q();
                    if (a.this.u) {
                        a.this.a();
                    }
                    a aVar4 = a.this;
                    aVar4.a("2000130", cVar, aVar4.e, "");
                    b();
                    if (this.c.e != null) {
                        this.c.e.onAdShow(a.this.i);
                        this.e = 2;
                    }
                }
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", th.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z, com.mbridge.msdk.videocommon.entity.c cVar2) {
            try {
                a aVar = this.c;
                if (aVar != null && aVar.e != null) {
                    if (cVar2 == null) {
                        cVar2 = com.mbridge.msdk.videocommon.entity.c.a(this.c.m);
                    }
                    if (a.this.u) {
                        a.this.a();
                        a.this.v();
                        com.mbridge.msdk.foundation.same.buffer.b.d(a.this.h, a.this.m());
                    }
                    this.c.e.onAdClose(a.this.i, new RewardInfo(z, cVar2.c(), String.valueOf(cVar2.a())));
                    this.e = 7;
                    this.c.C = false;
                    e();
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().b("2000152", cVar, null);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
            try {
                a aVar = a.this;
                aVar.E = false;
                if (this.c != null) {
                    if (aVar.u) {
                        a.this.a();
                    }
                    this.c.C = false;
                    a.this.a("2000131", cVar, this.c.e, str);
                    a();
                    if (this.c.e != null) {
                        try {
                            this.c.e.onShowFail(cVar, a.this.i, str);
                        } catch (Exception e) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e.getMessage());
                            }
                        }
                        this.e = 4;
                    }
                }
            } catch (Exception e2) {
                this.e = 0;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(boolean z, String str, String str2) {
            try {
                a aVar = this.c;
                if (aVar == null || aVar.e == null) {
                    return;
                }
                if (a.this.u) {
                    a.this.a();
                }
                this.c.C = false;
                try {
                    this.c.e.onVideoAdClicked(z, a.this.i);
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e.getMessage());
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(boolean z, int i) {
            try {
                a aVar = this.c;
                if (aVar == null || aVar.e == null) {
                    return;
                }
                try {
                    this.c.e.onAdCloseWithIVReward(a.this.i, new RewardInfo(z, i));
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e.getMessage());
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(String str, String str2) {
            try {
                a aVar = this.c;
                if (aVar == null || aVar.e == null) {
                    return;
                }
                try {
                    this.c.e.onEndcardShow(a.this.i);
                    com.mbridge.msdk.foundation.feedback.b b = com.mbridge.msdk.foundation.feedback.b.b();
                    b.a(str2 + "_2", 2);
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e.getMessage());
                    }
                }
                this.e = 6;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(int i, String str, String str2) {
            this.e = i;
            a aVar = this.c;
            if (aVar == null || aVar.u || this.c.t || this.c.c == null || !this.c.c.a(this.e) || this.c.f == null || this.c.f.a() == 1 || this.c.f.a() == 3 || a.this.B.contains(Integer.valueOf(this.e))) {
                return;
            }
            a.this.B.add(Integer.valueOf(this.e));
            int f = this.c.c.f() * 1000;
            if (this.e == 4) {
                f = 3000;
            }
            Handler handler = this.d;
            if (handler != null) {
                handler.removeMessages(1001001);
                this.d.sendEmptyMessageDelayed(1001001, f);
                return;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0150a(), f);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class j {
        public j() {
        }

        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.a0++;
            a aVar = a.this;
            aVar.b(aVar.x, str, cVar);
        }
    }

    public static /* synthetic */ int m(a aVar) {
        int i2 = aVar.a0;
        aVar.a0 = i2 - 1;
        return i2;
    }

    private void w() {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f9402a)).b(this.h);
    }

    private void x() {
        try {
            List<CampaignEx> c2 = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f9402a)).c(this.h);
            if (c2 == null || c2.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : c2) {
                if (!TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                    com.mbridge.msdk.videocommon.a.e(this.h + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl());
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        com.mbridge.msdk.videocommon.a.e(this.h + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                } else {
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                }
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e2.getMessage());
            }
        }
    }

    public void f(boolean z) {
        this.y = z;
    }

    public MBridgeIds g() {
        return this.i;
    }

    public List<CampaignEx> h() {
        return this.T;
    }

    public CopyOnWriteArrayList<CampaignEx> i() {
        return this.S;
    }

    public String j() {
        com.mbridge.msdk.reward.adapter.c cVar = this.b;
        if (cVar != null) {
            return cVar.g();
        }
        return "";
    }

    public h k() {
        return this.f;
    }

    public String l() {
        return this.l;
    }

    public String m() {
        com.mbridge.msdk.reward.adapter.c cVar = this.b;
        if (cVar != null) {
            return cVar.a(this.C);
        }
        return "";
    }

    public com.mbridge.msdk.reward.adapter.c n() {
        return this.b;
    }

    public InterVideoOutListener o() {
        return this.e;
    }

    public String p() {
        return this.h;
    }

    public void q() {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e());
    }

    public boolean r() {
        return this.u;
    }

    public boolean s() {
        return this.x;
    }

    public boolean t() {
        return this.t;
    }

    public boolean u() {
        return (this.e == null || this.f == null) ? false : true;
    }

    public void v() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (!this.C || (concurrentHashMap = e0) == null || concurrentHashMap.containsKey(m())) {
            return;
        }
        e0.remove(m());
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c b(boolean z, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        String a2;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        try {
            b(z);
            if (TextUtils.isEmpty(str)) {
                a2 = SameMD5.getMD5(t0.d());
            } else {
                a2 = a(str);
            }
            this.A = a2;
            cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(a2);
            if (cVar2 == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(a2, cVar);
                    cVar.d(true);
                    cVar2 = cVar;
                } catch (Exception e2) {
                    e = e2;
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e.getMessage());
                    }
                    return cVar;
                }
            }
            cVar2.h(a2);
            cVar2.m(this.h);
            if (eVar != null) {
                if (eVar.a("adtp")) {
                    cVar2.a(Integer.parseInt((String) eVar.b("adtp")));
                }
                if (eVar.a(CampaignEx.JSON_KEY_HB)) {
                    String str2 = (String) eVar.b(CampaignEx.JSON_KEY_HB);
                    cVar2.g(str2);
                    if (str2.equals("1")) {
                        cVar2.f(str);
                    }
                }
            }
            cVar2.e(z ? "2" : "1");
            if (z) {
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000123", cVar2);
            }
            return cVar2;
        } catch (Exception e3) {
            e = e3;
            cVar = cVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() <= 0 || this.O) {
                    return;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(list, str);
            } catch (Throwable th) {
                o0.b("RewardVideoController", th.getMessage());
            }
        }
    }

    private void f() {
        com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(this.f9402a, this.l, this.h);
        this.b = cVar;
        cVar.d(this.t);
        this.b.e(this.u);
        if (this.t) {
            this.b.a(this.q, this.r, this.s);
        }
        this.b.a(this.c);
    }

    public void d(boolean z) {
        this.t = z;
        if (z) {
            this.p = com.mbridge.msdk.foundation.same.a.X;
        } else {
            this.p = com.mbridge.msdk.foundation.same.a.W;
        }
    }

    public void e(boolean z) {
        this.u = z;
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f9410a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ CopyOnWriteArrayList c;
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c d;
        final /* synthetic */ boolean e;
        final /* synthetic */ int f;

        public d(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar, boolean z, int i) {
            this.b = campaignEx;
            this.c = copyOnWriteArrayList;
            this.d = cVar;
            this.e = z;
            this.f = i;
            this.f9410a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
            a.this.V = true;
            if (!a.this.U || a.this.W || a.this.o == null) {
                return;
            }
            a.this.W = true;
            a.this.o.post(new RunnableC0148a(str3, str, str2));
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String str3;
            if (bVar != null) {
                str3 = bVar.e().getUnitId();
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            } else {
                str3 = "";
            }
            a aVar = a.this;
            aVar.c(str3, aVar.T);
            if (this.f9410a == null) {
                this.f9410a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f9410a.a(bVar);
            this.f9410a.b(this.c);
            a.this.V = false;
            if (a.this.f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            a.this.f.b(bVar, this.f9410a);
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.controller.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0148a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9411a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;

            public RunnableC0148a(String str, String str2, String str3) {
                this.f9411a = str;
                this.b = str2;
                this.c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b = com.mbridge.msdk.reward.adapter.b.b();
                boolean z = a.this.y;
                Handler handler = a.this.o;
                boolean z2 = a.this.t;
                boolean z3 = a.this.u;
                String str = this.f9411a;
                String requestIdNotice = d.this.b.getRequestIdNotice();
                String str2 = this.b;
                String str3 = this.c;
                String cMPTEntryUrl = d.this.b.getCMPTEntryUrl();
                int i = a.this.p;
                d dVar = d.this;
                b.a(z, handler, z2, z3, str, requestIdNotice, str2, str3, cMPTEntryUrl, i, dVar.b, dVar.c, H5DownLoadManager.getInstance().getH5ResAddress(d.this.b.getCMPTEntryUrl()), this.c, a.this.c, new C0149a(), true);
            }

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.reward.controller.a$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class C0149a implements b.o {
                public C0149a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a) {
                    d dVar = d.this;
                    com.mbridge.msdk.reward.adapter.c cVar = dVar.d;
                    if (cVar != null && cVar.a(dVar.c, dVar.e, dVar.f)) {
                        if (a.this.f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccess");
                        d dVar2 = d.this;
                        a.this.a(dVar2.c);
                        d dVar3 = d.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = dVar3.f9410a;
                        if (cVar2 != null) {
                            cVar2.b(dVar3.c);
                        }
                        a.this.f.d(str2, str3, d.this.f9410a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, aVar.T);
                    if (a.this.f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    d dVar4 = d.this;
                    if (dVar4.f9410a == null) {
                        dVar4.f9410a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar5 = d.this;
                    dVar5.f9410a.b(dVar5.c);
                    d.this.f9410a.a(a2);
                    a.this.f.b(a2, d.this.f9410a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0148a runnableC0148a = RunnableC0148a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0148a.c, aVar.T);
                    if (a.this.f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    d dVar = d.this;
                    if (dVar.f9410a == null) {
                        dVar.f9410a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f9410a.b(dVar2.c);
                    d.this.f9410a.a(bVar);
                    a.this.f.b(bVar, d.this.f9410a);
                }
            }
        }
    }

    public void e() {
        m0.b();
    }

    private boolean d() {
        if (this.b == null) {
            f();
        }
        com.mbridge.msdk.reward.adapter.c cVar = this.b;
        if (cVar != null) {
            return cVar.b(true);
        }
        return false;
    }

    public void c(String str, String str2) {
        try {
            this.f9402a = com.mbridge.msdk.foundation.controller.c.m().d();
            this.h = str2;
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            this.l = str;
            this.i = new MBridgeIds(this.l, this.h);
            this.d = com.mbridge.msdk.videocommon.setting.b.b().c();
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new com.mbridge.msdk.reward.controller.c(this.f9402a, this.h));
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        } catch (Throwable th) {
            o0.b("RewardVideoController", th.getMessage(), th);
        }
    }

    public void a(int i2) {
        this.p = i2;
    }

    private void d(String str, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.m(this.h);
            cVar.a(this.t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(DbParams.KEY_CHANNEL_EVENT_NAME, str);
            eVar.a("reason", str2);
            cVar.a("m_temp_is_ready_check", eVar);
            com.mbridge.msdk.reward.report.metrics.a.a().a("m_temp_is_ready_check", cVar);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            Context context = this.f9402a;
            w0.b(context, "MBridge_ConfirmTitle" + this.h, str.trim());
        }
        if (!TextUtils.isEmpty(str2)) {
            Context context2 = this.f9402a;
            w0.b(context2, "MBridge_ConfirmContent" + this.h, str2.trim());
        }
        if (!TextUtils.isEmpty(str4)) {
            Context context3 = this.f9402a;
            w0.b(context3, "MBridge_CancelText" + this.h, str4.trim());
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        Context context4 = this.f9402a;
        w0.b(context4, "MBridge_ConfirmText" + this.h, str3.trim());
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements b.h {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f9404a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ boolean c;
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c d;
        final /* synthetic */ int e;

        public b(CampaignEx campaignEx, boolean z, com.mbridge.msdk.reward.adapter.c cVar, int i) {
            this.b = campaignEx;
            this.c = z;
            this.d = cVar;
            this.e = i;
            this.f9404a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            a.this.U = true;
            if (!this.c) {
                Iterator<CampaignEx> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CampaignEx next = it.next();
                    if (next != null && next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e()) && !next.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && a.this.o != null) {
                        a.this.o.post(new RunnableC0144a(next, copyOnWriteArrayList, str, str2, str3));
                    } else {
                        com.mbridge.msdk.reward.adapter.c cVar = this.d;
                        if (cVar != null && cVar.a(copyOnWriteArrayList, this.c, this.e)) {
                            if (a.this.f != null && !a.this.Y) {
                                a.this.Y = true;
                                o0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                                a.this.a(copyOnWriteArrayList);
                                com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f9404a;
                                if (cVar2 != null) {
                                    cVar2.b(copyOnWriteArrayList);
                                }
                                a.this.f.d(str, str2, this.f9404a);
                            }
                        } else {
                            a aVar = a.this;
                            aVar.c(str2, aVar.T);
                            if (a.this.f != null && !a.this.X) {
                                a.this.X = true;
                                com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                                if (this.f9404a == null) {
                                    this.f9404a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                                }
                                this.f9404a.b(a.this.S);
                                this.f9404a.a(a2);
                                a.this.f.b(a2, this.f9404a);
                            }
                        }
                    }
                }
            } else if (!a.this.V || a.this.W || a.this.o == null) {
            } else {
                a.this.W = true;
                a.this.o.post(new RunnableC0146b(str3, str, str2, copyOnWriteArrayList));
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.controller.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0144a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f9405a;
            final /* synthetic */ CopyOnWriteArrayList b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;
            final /* synthetic */ String e;

            public RunnableC0144a(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, String str2, String str3) {
                this.f9405a = campaignEx;
                this.b = copyOnWriteArrayList;
                this.c = str;
                this.d = str2;
                this.e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.y, a.this.o, a.this.t, a.this.u, null, this.f9405a.getRewardTemplateMode().e(), a.this.p, b.this.b, this.b, H5DownLoadManager.getInstance().getH5ResAddress(this.f9405a.getRewardTemplateMode().e()), this.c, this.d, this.e, this.f9405a.getRequestIdNotice(), a.this.c, new C0145a());
            }

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.reward.controller.a$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class C0145a implements b.o {
                public C0145a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a) {
                    RunnableC0144a runnableC0144a = RunnableC0144a.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.d;
                    if (cVar != null && cVar.a(runnableC0144a.b, bVar.c, bVar.e)) {
                        if (a.this.f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        RunnableC0144a runnableC0144a2 = RunnableC0144a.this;
                        a.this.a(runnableC0144a2.b);
                        a.this.f.d(str2, str3, b.this.f9404a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, aVar.T);
                    if (a.this.f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f9404a == null) {
                        bVar2.f9404a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0144a runnableC0144a3 = RunnableC0144a.this;
                    b.this.f9404a.b(runnableC0144a3.b);
                    b.this.f9404a.a(a2);
                    a.this.f.b(a2, b.this.f9404a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0144a runnableC0144a = RunnableC0144a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0144a.d, aVar.T);
                    if (a.this.f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    bVar.c("errorCode: 3301 errorMessage: temp preload failed");
                    b bVar2 = b.this;
                    if (bVar2.f9404a == null) {
                        bVar2.f9404a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b bVar3 = b.this;
                    bVar3.f9404a.b(a.this.S);
                    b.this.f9404a.a(bVar);
                    a.this.f.b(bVar, b.this.f9404a);
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.controller.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0146b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9407a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;
            final /* synthetic */ CopyOnWriteArrayList d;

            public RunnableC0146b(String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f9407a = str;
                this.b = str2;
                this.c = str3;
                this.d = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.y, a.this.o, a.this.t, a.this.u, this.f9407a, b.this.b.getRequestIdNotice(), this.b, this.c, b.this.b.getCMPTEntryUrl(), a.this.p, b.this.b, this.d, H5DownLoadManager.getInstance().getH5ResAddress(b.this.b.getCMPTEntryUrl()), this.c, a.this.c, new C0147a(), true);
            }

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.reward.controller.a$b$b$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class C0147a implements b.o {
                public C0147a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a) {
                    RunnableC0146b runnableC0146b = RunnableC0146b.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.d;
                    if (cVar != null && cVar.a(runnableC0146b.d, bVar.c, bVar.e)) {
                        if (a.this.f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        RunnableC0146b runnableC0146b2 = RunnableC0146b.this;
                        a.this.a(runnableC0146b2.d);
                        RunnableC0146b runnableC0146b3 = RunnableC0146b.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = b.this.f9404a;
                        if (cVar2 != null) {
                            cVar2.b(runnableC0146b3.d);
                        }
                        a.this.f.d(str2, str3, b.this.f9404a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, aVar.T);
                    if (a.this.f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3504 errorMessage: tpl temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f9404a == null) {
                        bVar2.f9404a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b.this.f9404a.a(a2);
                    RunnableC0146b runnableC0146b4 = RunnableC0146b.this;
                    b.this.f9404a.b(runnableC0146b4.d);
                    a.this.f.b(a2, b.this.f9404a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0146b runnableC0146b = RunnableC0146b.this;
                    a aVar = a.this;
                    aVar.c(runnableC0146b.c, aVar.T);
                    if (a.this.f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3302 errorMessage: tpl preload failed");
                    }
                    b bVar2 = b.this;
                    if (bVar2.f9404a == null) {
                        bVar2.f9404a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0146b runnableC0146b2 = RunnableC0146b.this;
                    b.this.f9404a.b(runnableC0146b2.d);
                    b.this.f9404a.a(bVar);
                    a.this.f.b(bVar, b.this.f9404a);
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            a.this.U = false;
            a aVar = a.this;
            aVar.c(aVar.h, a.this.T);
            if (a.this.f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            if (this.f9404a == null) {
                this.f9404a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f9404a.b(copyOnWriteArrayList);
            if (bVar != null) {
                bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
            }
            this.f9404a.a(bVar);
            a.this.f.b(bVar, this.f9404a);
        }
    }

    public boolean c(boolean z) {
        try {
            if (c()) {
                if (z) {
                    d("is_ready_start", "over cap check error");
                    com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("type", 10);
                    cVar.a("m_offer_ready", eVar);
                    a(false, cVar, (List<CampaignEx>) this.b.h());
                }
            } else if (this.u) {
                try {
                    return a(z);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e2.getMessage());
                    }
                }
            } else {
                return d();
            }
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", th.getMessage());
            }
        }
        return false;
    }

    public void a(int i2, int i3, int i4) {
        this.q = i2;
        this.r = i3;
        if (i3 == com.mbridge.msdk.foundation.same.a.K) {
            this.s = i4 < 0 ? 5 : i4;
        }
        if (i3 == com.mbridge.msdk.foundation.same.a.J) {
            this.s = i4 < 0 ? 80 : i4;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ivRewardEnable", 1);
            jSONObject.put("ivRewardMode", i2 == com.mbridge.msdk.foundation.same.a.H ? 0 : 1);
            jSONObject.put("ivRewardPlayValueMode", i3 == com.mbridge.msdk.foundation.same.a.J ? 0 : 1);
            jSONObject.put("ivRewardPlayValue", i4);
            com.mbridge.msdk.setting.h.b().i(this.h, jSONObject.toString());
        } catch (Exception unused) {
            o0.b("RewardVideoController", "setIVRewardEnable to SP was ERROR");
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.reward.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0143a implements com.mbridge.msdk.videocommon.net.c {
        public C0143a() {
        }

        @Override // com.mbridge.msdk.videocommon.net.c
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.videocommon.net.c
        public void onFailed(String str) {
        }
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f != null) {
            String b2 = com.mbridge.msdk.foundation.error.a.b(880001, "");
            com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880001, "");
            if (cVar != null) {
                cVar.a(a2);
                cVar.b(true);
            }
            this.f.a(b2, cVar);
        }
    }

    private boolean c() {
        try {
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
            com.mbridge.msdk.foundation.db.h a2 = com.mbridge.msdk.foundation.db.h.a(this.K);
            if (this.c == null) {
                this.c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.h, this.t);
            }
            int k = this.c.k();
            if (a2 != null) {
                return a2.a(this.h, k);
            }
            return false;
        } catch (Throwable unused) {
            o0.b("RewardVideoController", "cap check error");
            return false;
        }
    }

    public static void a(String str, int i2) {
        try {
            if (d0 == null || !y0.b(str)) {
                return;
            }
            d0.put(str, Integer.valueOf(i2));
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e2.getMessage());
            }
        }
    }

    private CopyOnWriteArrayList<CampaignEx> b(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int i2 = 1;
                    for (CampaignEx campaignEx : list) {
                        if (campaignEx != null) {
                            if (campaignEx.getVcn() > i2) {
                                i2 = campaignEx.getVcn();
                            }
                            if (campaignEx.getTokenRule() == 1) {
                                String requestId = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId)) {
                                    if (linkedHashMap.containsKey(requestId)) {
                                        List list2 = (List) linkedHashMap.get(requestId);
                                        if (list2 != null) {
                                            list2.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(campaignEx);
                                        linkedHashMap.put(requestId, arrayList);
                                    }
                                }
                            } else {
                                String requestId2 = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId2)) {
                                    if (linkedHashMap2.containsKey(requestId2)) {
                                        List list3 = (List) linkedHashMap2.get(requestId2);
                                        if (list3 != null) {
                                            list3.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList2 = new ArrayList();
                                        arrayList2.add(campaignEx);
                                        linkedHashMap2.put(requestId2, arrayList2);
                                    }
                                }
                            }
                        }
                    }
                    if (linkedHashMap2.size() + linkedHashMap.size() >= i2 && linkedHashMap.size() > 0 && linkedHashMap.entrySet() != null && linkedHashMap.entrySet().iterator() != null && linkedHashMap.entrySet().iterator().next() != null && ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue() != null) {
                        copyOnWriteArrayList.addAll((Collection) ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue());
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.h, str, i2);
                        return copyOnWriteArrayList;
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e2.getMessage());
                }
            }
        }
        return copyOnWriteArrayList;
    }

    public static void a(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (concurrentHashMap = e0) == null || concurrentHashMap.containsKey(str)) {
            return;
        }
        e0.put(str, str2);
    }

    public void a() {
        try {
            String str = "";
            MBridgeIds mBridgeIds = this.i;
            if (mBridgeIds != null) {
                if (!this.C) {
                    mBridgeIds.setBidToken("");
                    return;
                }
                String m = m();
                if (TextUtils.isEmpty(m)) {
                    return;
                }
                ConcurrentHashMap<String, String> concurrentHashMap = e0;
                if (concurrentHashMap != null && concurrentHashMap.containsKey(m) && !TextUtils.isEmpty(e0.get(m))) {
                    str = e0.get(m);
                }
                this.i.setBidToken(str);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public void a(InterVideoOutListener interVideoOutListener) {
        this.e = interVideoOutListener;
        this.f = new h(this, interVideoOutListener, this.o, this.h, null);
    }

    public void a(boolean z, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        a(z, "", eVar);
    }

    public void a(boolean z, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        a aVar;
        com.mbridge.msdk.foundation.same.report.metrics.c b2 = b(z, str, eVar);
        this.z = str;
        if (this.f == null) {
            aVar = this;
            aVar.f = new h(aVar, null, this.o, this.h, null);
        } else {
            aVar = this;
        }
        if (aVar.f != null && aVar.f.a() == 1) {
            a(z, b2);
            return;
        }
        aVar.a0 = 1;
        if (aVar.f != null && aVar.f.a() == 3) {
            aVar.L = false;
        } else {
            aVar.L = true;
            if (aVar.f != null) {
                aVar.f.a(1);
            }
        }
        aVar.x = z;
        aVar.o.removeMessages(1001001);
        aVar.O = false;
        aVar.N = false;
        aVar.P = false;
        aVar.Q = false;
        x();
        w();
        com.mbridge.msdk.reward.adapter.b.b().c();
        try {
            if (TextUtils.isEmpty(str)) {
                if (aVar.t) {
                    com.mbridge.msdk.timer.b.getInstance().addInterstitialList(aVar.l, aVar.h);
                } else {
                    com.mbridge.msdk.timer.b.getInstance().addRewardList(aVar.l, aVar.h);
                }
            }
            if (aVar.u && TextUtils.isEmpty(str)) {
                a(b2);
            } else if (com.mbridge.msdk.system.a.map == null) {
                b(b2);
            } else {
                com.mbridge.msdk.videocommon.setting.c c2 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), aVar.h);
                aVar.c = c2;
                if (c2 == null) {
                    aVar.J = com.mbridge.msdk.foundation.controller.c.m().b();
                    com.mbridge.msdk.videocommon.setting.b.b().a(aVar.J, com.mbridge.msdk.foundation.controller.c.m().c(), aVar.h, new C0143a());
                    aVar.c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), aVar.h, aVar.t);
                }
                if (!TextUtils.isEmpty(aVar.l)) {
                    aVar.c.f(aVar.l);
                }
                int n = aVar.c.n() * 1000;
                if (aVar.o != null) {
                    Message obtain = Message.obtain();
                    obtain.what = 1001002;
                    if (b2 != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", b2.o());
                        obtain.setData(bundle);
                    }
                    aVar.o.sendMessageDelayed(obtain, n);
                }
                aVar.I = aVar.c.z();
                try {
                    a(z, str, b2);
                } catch (Exception e2) {
                    if (aVar.f != null) {
                        com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880020, "load exception");
                        if (b2 != null) {
                            b2.a(a2);
                            b2.b(true);
                        }
                        aVar.f.a(a2, b2);
                    }
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e2.getMessage());
                    }
                }
            }
        } catch (Exception e3) {
            if (aVar.f != null) {
                com.mbridge.msdk.foundation.error.b a3 = com.mbridge.msdk.foundation.error.a.a(880001, "");
                if (b2 != null) {
                    b2.a(a3);
                    b2.b(true);
                }
                aVar.f.a(a3, b2);
            }
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e3.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            com.mbridge.msdk.reward.adapter.c r0 = r4.b     // Catch: java.lang.Exception -> Lf
            if (r0 == 0) goto L11
            java.lang.String r0 = r0.j()     // Catch: java.lang.Exception -> Lf
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> Lf
            if (r0 != 0) goto L28
            goto L11
        Lf:
            r0 = move-exception
            goto L37
        L11:
            com.mbridge.msdk.reward.adapter.c r0 = new com.mbridge.msdk.reward.adapter.c     // Catch: java.lang.Exception -> Lf
            android.content.Context r1 = r4.f9402a     // Catch: java.lang.Exception -> Lf
            java.lang.String r2 = r4.l     // Catch: java.lang.Exception -> Lf
            r0.<init>(r1, r2, r5)     // Catch: java.lang.Exception -> Lf
            r4.b = r0     // Catch: java.lang.Exception -> Lf
            boolean r1 = r4.t     // Catch: java.lang.Exception -> Lf
            r0.d(r1)     // Catch: java.lang.Exception -> Lf
            com.mbridge.msdk.reward.adapter.c r0 = r4.b     // Catch: java.lang.Exception -> Lf
            boolean r1 = r4.u     // Catch: java.lang.Exception -> Lf
            r0.e(r1)     // Catch: java.lang.Exception -> Lf
        L28:
            com.mbridge.msdk.reward.adapter.c r0 = r4.b     // Catch: java.lang.Exception -> Lf
            int r1 = r4.p     // Catch: java.lang.Exception -> Lf
            r0.a(r1)     // Catch: java.lang.Exception -> Lf
            com.mbridge.msdk.reward.adapter.c r0 = r4.b     // Catch: java.lang.Exception -> Lf
            com.mbridge.msdk.videocommon.setting.c r1 = r4.c     // Catch: java.lang.Exception -> Lf
            r0.a(r1)     // Catch: java.lang.Exception -> Lf
            goto L44
        L37:
            boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r1 == 0) goto L44
            java.lang.String r0 = r0.getMessage()
            java.lang.String r1 = "RewardVideoController"
            com.mbridge.msdk.foundation.tools.o0.b(r1, r0)
        L44:
            com.mbridge.msdk.videocommon.cache.a r0 = com.mbridge.msdk.videocommon.cache.a.a()
            boolean r1 = r4.u
            r2 = 1
            java.util.List r0 = r0.b(r5, r2, r1)
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()
            boolean r3 = r4.u
            java.util.List r1 = r1.a(r5, r2, r3)
            r4.T = r1
            if (r0 == 0) goto L98
            int r1 = r0.size()
            if (r1 <= 0) goto L98
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()
            r1.a(r5, r0, r6)
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r5 = r4.S
            if (r5 != 0) goto L76
            java.util.concurrent.CopyOnWriteArrayList r5 = new java.util.concurrent.CopyOnWriteArrayList
            r5.<init>()
            r4.S = r5
            goto L79
        L76:
            r5.clear()
        L79:
            java.util.Iterator r5 = r0.iterator()
        L7d:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L92
            java.lang.Object r0 = r5.next()
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            r0.setLocalRequestId(r6)
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r4.S
            r1.add(r0)
            goto L7d
        L92:
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r5 = r4.S
            r4.a(r5)
            return r2
        L98:
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r5 = r4.S
            if (r5 == 0) goto L9f
            r5.clear()
        L9f:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.b(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x003a, code lost:
        if (r8.h.equals(r0.j()) == false) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(boolean r9, java.lang.String r10, com.mbridge.msdk.foundation.same.report.metrics.c r11) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.b(boolean, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):void");
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f != null) {
            com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880035, "");
            if (cVar != null) {
                cVar.a(a2);
                cVar.b(true);
            }
            this.f.a("bidToken is empty", cVar);
        }
    }

    private boolean b() {
        if (this.b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> a2 = com.mbridge.msdk.videocommon.cache.a.a().a(this.h);
        if (a2 == null || a2.size() <= 0) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : a2) {
            if (cVar != null) {
                this.b.c(cVar.a());
                this.b.b(cVar.d());
                if (this.b.m()) {
                    return true;
                }
                com.mbridge.msdk.videocommon.cache.a.a().d(this.h, cVar.a());
            }
        }
        return false;
    }

    private void a(boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (!this.x) {
            if (z) {
                this.x = z;
            }
        } else if (z) {
            String b2 = com.mbridge.msdk.foundation.error.a.b(880016, "errorCode: 3501 errorMessage: current unit is loading");
            com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880016, "errorCode: 3501 errorMessage: current unit is loading");
            if (cVar != null) {
                cVar.a(a2);
                cVar.b(true);
            }
            this.f.b(b2, cVar);
        }
    }

    private void b(boolean z) {
        List<String> e2;
        if (z) {
            try {
                com.mbridge.msdk.foundation.db.e a2 = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f9402a));
                if (a2 != null && (e2 = a2.e(this.h)) != null && e2.size() > 0) {
                    for (String str : e2) {
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().c(str);
                    }
                }
                LinkedHashMap<String, com.mbridge.msdk.foundation.same.report.metrics.c> c2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().c();
                if (c2 == null || c2.size() <= 0) {
                    return;
                }
                Iterator<Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c>> it = c2.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c> next = it.next();
                    if (next != null && next.getValue().z()) {
                        it.remove();
                    }
                }
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    e3.printStackTrace();
                }
            }
        }
    }

    private void a(boolean z, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        String str2 = str;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = cVar;
        if (this.f != null) {
            if (!this.u) {
                this.R = b(this.h, cVar2.o());
                if (this.R) {
                    if (!c()) {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.S;
                        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                            return;
                        }
                        try {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            eVar.a("cache", 1);
                            cVar2.a("2000127", eVar);
                            cVar2.a("2000048", eVar);
                            cVar2.a(copyOnWriteArrayList);
                        } catch (Exception e2) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e2.getMessage());
                            }
                        }
                        this.f.b(this.l, this.h, cVar2);
                        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
                        this.f.a(this.u);
                        com.mbridge.msdk.reward.adapter.c cVar3 = this.b;
                        if (cVar3 != null && cVar3.a(copyOnWriteArrayList, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
                            a(copyOnWriteArrayList);
                            this.f.d(this.l, this.h, cVar2);
                        } else {
                            a(copyOnWriteArrayList, this.b);
                        }
                        if (this.L) {
                            com.mbridge.msdk.reward.adapter.c cVar4 = this.b;
                            if (cVar4 != null) {
                                cVar4.c(this.S);
                            }
                            a(this.I, z, str2, cVar2);
                            return;
                        }
                        return;
                    }
                    o0.a("RewardVideoController", "非BID，本地存在可用的缓存，超过上限");
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.S;
                    if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
                        Iterator<CampaignEx> it = this.S.iterator();
                        while (it.hasNext()) {
                            com.mbridge.msdk.videocommon.cache.a.a().a(it.next(), this.h);
                        }
                    }
                    com.mbridge.msdk.reward.adapter.c cVar5 = this.b;
                    if (cVar5 != null) {
                        cVar5.c(this.S);
                    }
                    if (z) {
                        if (this.f != null) {
                            String b2 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                            cVar2.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                            cVar2.b(true);
                            this.f.a(b2, cVar2);
                            return;
                        }
                        return;
                    }
                    this.R = false;
                    this.f.a(this.u);
                    a(this.I, z, str2, cVar2);
                    return;
                } else if (!c()) {
                    this.R = false;
                    com.mbridge.msdk.reward.adapter.c cVar6 = this.b;
                    if (cVar6 != null) {
                        cVar6.c(this.S);
                    }
                    this.f.a(this.u);
                    a(this.I, z, str2, cVar2);
                    return;
                } else if (z) {
                    if (this.f != null) {
                        String b3 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                        cVar2.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                        cVar2.b(true);
                        this.f.a(b3, cVar2);
                        return;
                    }
                    return;
                } else {
                    this.R = false;
                    com.mbridge.msdk.reward.adapter.c cVar7 = this.b;
                    if (cVar7 != null) {
                        cVar7.c(this.S);
                    }
                    this.f.a(this.u);
                    a(this.I, z, str2, cVar2);
                    return;
                }
            }
            List<CampaignEx> b4 = com.mbridge.msdk.videocommon.cache.a.a().b(this.h, 1, this.u, "");
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList3 = null;
            if (b4 != null && b4.size() > 0) {
                if (!c()) {
                    if (this.b == null) {
                        f();
                    }
                    CopyOnWriteArrayList<CampaignEx> a2 = a(str2, b4);
                    if (a2 != null && a2.size() > 0) {
                        a(a2, str2, cVar2);
                        return;
                    }
                    try {
                        com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(this.h, this.t);
                        com.mbridge.msdk.foundation.cache.c cVar8 = new com.mbridge.msdk.foundation.cache.c();
                        try {
                            if (aVar.a(str2)) {
                                cVar8 = aVar.a(str2, cVar2, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.b);
                                if (cVar8 != null && cVar8.g() == com.mbridge.msdk.foundation.cache.c.l && cVar8.c() != null && cVar8.c().size() > 0 && this.b != null) {
                                    CopyOnWriteArrayList<CampaignEx> c2 = cVar8.c();
                                    ArrayList arrayList = new ArrayList();
                                    Iterator<CampaignEx> it2 = b4.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        CampaignEx next = it2.next();
                                        if (next != null) {
                                            String requestId = next.getRequestId();
                                            if (!TextUtils.isEmpty(requestId)) {
                                                for (int i2 = 0; i2 < c2.size(); i2++) {
                                                    CampaignEx campaignEx2 = c2.get(i2);
                                                    if (campaignEx2 != null) {
                                                        if (requestId.equals(campaignEx2.getRequestId())) {
                                                            break;
                                                        } else if (i2 == c2.size() - 1) {
                                                            arrayList.add(next);
                                                        }
                                                    }
                                                }
                                                if (c2.size() == 0) {
                                                    arrayList.add(next);
                                                }
                                            }
                                        }
                                    }
                                    this.b.c(arrayList);
                                    this.b.a(cVar8.c(), false, true, true);
                                    copyOnWriteArrayList3 = new CopyOnWriteArrayList<>(cVar8.c());
                                }
                            } else {
                                copyOnWriteArrayList3 = b(str2, b4);
                                if (copyOnWriteArrayList3.size() > 0) {
                                    com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str2, copyOnWriteArrayList3);
                                }
                                cVar8.d("cb is closed");
                                cVar8.a(com.mbridge.msdk.foundation.cache.c.k);
                            }
                            try {
                                aVar.a(cVar, str2, cVar8, (List<a.b>) null, (JSONObject) null, 1);
                                cVar2 = cVar;
                                str2 = str2;
                                if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                                    a(copyOnWriteArrayList3, str2, cVar2);
                                    if (this.b != null && !aVar.a(str2)) {
                                        this.b.c(copyOnWriteArrayList3);
                                    }
                                }
                            } catch (Exception e3) {
                                e = e3;
                                cVar2 = cVar;
                                str2 = str2;
                                if (MBridgeConstans.DEBUG) {
                                    o0.b("RewardVideoController", e.getMessage());
                                }
                                this.R = false;
                                this.f.a(this.u);
                                a(this.I, z, str2, cVar2);
                                return;
                            }
                        } catch (Exception e4) {
                            e = e4;
                            cVar2 = cVar;
                        }
                    } catch (Exception e5) {
                        e = e5;
                    }
                    this.R = false;
                    this.f.a(this.u);
                    a(this.I, z, str2, cVar2);
                    return;
                }
                com.mbridge.msdk.videocommon.cache.a.a().b(this.h, str2);
                if (!z || this.f == null) {
                    return;
                }
                String b5 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                com.mbridge.msdk.foundation.error.b a3 = com.mbridge.msdk.foundation.error.a.a(880019, "");
                if (cVar2 != null) {
                    cVar2.a(a3);
                    cVar2.b(true);
                }
                this.f.a(b5, cVar2);
            } else if (!c()) {
                try {
                    com.mbridge.msdk.reward.candidate.a aVar2 = new com.mbridge.msdk.reward.candidate.a(this.h, this.t);
                    com.mbridge.msdk.foundation.cache.c cVar9 = new com.mbridge.msdk.foundation.cache.c();
                    try {
                        if (aVar2.a(str2)) {
                            if (this.b == null) {
                                com.mbridge.msdk.reward.adapter.c cVar10 = new com.mbridge.msdk.reward.adapter.c(this.f9402a, this.l, this.h);
                                this.b = cVar10;
                                cVar10.d(this.t);
                                this.b.e(this.u);
                                if (this.t) {
                                    this.b.a(this.q, this.r, this.s);
                                }
                                this.b.a(this.p);
                                this.b.a(this.c);
                            }
                            cVar9 = aVar2.a(str2, cVar2, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.b);
                            if (cVar9 != null && cVar9.g() == com.mbridge.msdk.foundation.cache.c.l && cVar9.c() != null && cVar9.c().size() > 0 && this.b != null) {
                                CopyOnWriteArrayList<CampaignEx> c3 = cVar9.c();
                                if (b4 != null) {
                                    ArrayList arrayList2 = new ArrayList();
                                    Iterator<CampaignEx> it3 = b4.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            break;
                                        }
                                        CampaignEx next2 = it3.next();
                                        if (next2 != null) {
                                            String requestId2 = next2.getRequestId();
                                            if (!TextUtils.isEmpty(requestId2)) {
                                                for (int i3 = 0; i3 < c3.size(); i3++) {
                                                    CampaignEx campaignEx3 = c3.get(i3);
                                                    if (campaignEx3 != null) {
                                                        if (requestId2.equals(campaignEx3.getRequestId())) {
                                                            break;
                                                        } else if (i3 == c3.size() - 1) {
                                                            arrayList2.add(next2);
                                                        }
                                                    }
                                                }
                                                if (c3.size() == 0) {
                                                    arrayList2.add(next2);
                                                }
                                            }
                                        }
                                    }
                                    this.b.c(arrayList2);
                                }
                                this.b.a(cVar9.c(), false, true, true);
                                copyOnWriteArrayList3 = new CopyOnWriteArrayList<>(cVar9.c());
                            }
                        } else {
                            copyOnWriteArrayList3 = b(str2, b4);
                            if (copyOnWriteArrayList3.size() > 0) {
                                com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str2, copyOnWriteArrayList3);
                            }
                            cVar9.d("cb is closed 2");
                            cVar9.a(com.mbridge.msdk.foundation.cache.c.k);
                        }
                        try {
                            aVar2.a(cVar, str2, cVar9, (List<a.b>) null, (JSONObject) null, 1);
                            cVar2 = cVar;
                            str2 = str2;
                            if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                                a(copyOnWriteArrayList3, str2, cVar2);
                                if (this.b != null && !aVar2.a(str2)) {
                                    this.b.c(copyOnWriteArrayList3);
                                }
                            }
                        } catch (Exception e6) {
                            e = e6;
                            cVar2 = cVar;
                            str2 = str2;
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e.getMessage());
                            }
                            this.R = false;
                            this.f.a(this.u);
                            a(this.I, z, str2, cVar2);
                        }
                    } catch (Exception e7) {
                        e = e7;
                        cVar2 = cVar;
                    }
                } catch (Exception e8) {
                    e = e8;
                }
                this.R = false;
                this.f.a(this.u);
                a(this.I, z, str2, cVar2);
            } else {
                com.mbridge.msdk.videocommon.cache.a.a().b(this.h, str2);
                if (!z || this.f == null) {
                    return;
                }
                String b6 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                com.mbridge.msdk.foundation.error.b a4 = com.mbridge.msdk.foundation.error.a.a(880019, "");
                if (cVar2 != null) {
                    cVar2.a(a4);
                    cVar2.b(true);
                }
                this.f.a(b6, cVar2);
            }
        }
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            cVar.a("2000127", eVar);
            cVar.a("2000048", eVar);
            cVar.a(copyOnWriteArrayList);
        } catch (Exception e2) {
            o0.b("RewardVideoController", e2.getMessage());
        }
        this.R = true;
        this.f.a(this.u);
        this.f.b(this.l, this.h, cVar);
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        a(campaignEx.getRequestId(), str);
        com.mbridge.msdk.reward.adapter.c cVar2 = this.b;
        if (cVar2 != null && cVar2.a(copyOnWriteArrayList, true ^ TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
            a(copyOnWriteArrayList);
            this.f.d(this.l, this.h, cVar);
            return;
        }
        a(copyOnWriteArrayList, this.b);
    }

    private CopyOnWriteArrayList<CampaignEx> a(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null && str.equals(campaignEx.getBidToken())) {
                    copyOnWriteArrayList.add(campaignEx);
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar) {
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        boolean isEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z = !isEmpty;
        int nscpt = campaignEx.getNscpt();
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        com.mbridge.msdk.reward.adapter.b.b().a(this.f9402a, z, nscpt, this.u, this.t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, this.l, this.h, campaignEx.getRequestId(), copyOnWriteArrayList, new b(campaignEx, z, cVar, nscpt), new c(campaignEx, copyOnWriteArrayList, z, nscpt));
        if (isEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f9402a, campaignEx, this.l, this.h, campaignEx.getRequestId(), new d(campaignEx, copyOnWriteArrayList, cVar, z, nscpt));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.Queue<java.lang.Integer> r12, boolean r13, java.lang.String r14, com.mbridge.msdk.foundation.same.report.metrics.c r15) {
        /*
            r11 = this;
            java.lang.String r1 = "RewardVideoController"
            java.lang.String r2 = "load mv api error:"
            r0 = 25
            r3 = 880020(0xd6d94, float:1.23317E-39)
            r4 = 1
            r11.F = r0     // Catch: java.lang.Exception -> L6f
            r11.G = r4     // Catch: java.lang.Exception -> L6f
            if (r12 == 0) goto L2a
            int r0 = r12.size()     // Catch: java.lang.Exception -> L25
            if (r0 <= 0) goto L2a
            java.lang.Object r12 = r12.poll()     // Catch: java.lang.Exception -> L25
            java.lang.Integer r12 = (java.lang.Integer) r12     // Catch: java.lang.Exception -> L25
            if (r12 == 0) goto L2a
            int r12 = r12.intValue()     // Catch: java.lang.Exception -> L25
            r11.F = r12     // Catch: java.lang.Exception -> L25
            goto L2a
        L25:
            r0 = move-exception
            r12 = r0
            r5 = r11
            r10 = r15
            goto L73
        L2a:
            int r6 = r11.G     // Catch: java.lang.Exception -> L39
            int r7 = r11.F     // Catch: java.lang.Exception -> L39
            r5 = r11
            r8 = r13
            r9 = r14
            r10 = r15
            r5.a(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L36
            return
        L36:
            r0 = move-exception
        L37:
            r12 = r0
            goto L3d
        L39:
            r0 = move-exception
            r5 = r11
            r10 = r15
            goto L37
        L3d:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5d
            r13.<init>()     // Catch: java.lang.Exception -> L5d
            r13.append(r2)     // Catch: java.lang.Exception -> L5d
            java.lang.String r14 = r12.getMessage()     // Catch: java.lang.Exception -> L5d
            r13.append(r14)     // Catch: java.lang.Exception -> L5d
            java.lang.String r13 = r13.toString()     // Catch: java.lang.Exception -> L5d
            com.mbridge.msdk.foundation.error.b r13 = com.mbridge.msdk.foundation.error.a.a(r3, r13)     // Catch: java.lang.Exception -> L5d
            if (r10 == 0) goto L60
            r10.a(r13)     // Catch: java.lang.Exception -> L5d
            r10.b(r4)     // Catch: java.lang.Exception -> L5d
            goto L60
        L5d:
            r0 = move-exception
        L5e:
            r12 = r0
            goto L73
        L60:
            r11.a(r13, r10)     // Catch: java.lang.Exception -> L5d
            boolean r13 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L5d
            if (r13 == 0) goto La0
            java.lang.String r12 = r12.getMessage()     // Catch: java.lang.Exception -> L5d
            com.mbridge.msdk.foundation.tools.o0.b(r1, r12)     // Catch: java.lang.Exception -> L5d
            goto La0
        L6f:
            r0 = move-exception
            r5 = r11
            r10 = r15
            goto L5e
        L73:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r2)
            java.lang.String r14 = r12.getMessage()
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            com.mbridge.msdk.foundation.error.b r13 = com.mbridge.msdk.foundation.error.a.a(r3, r13)
            if (r10 == 0) goto L92
            r10.a(r13)
            r10.b(r4)
        L92:
            r11.a(r13, r10)
            boolean r13 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r13 == 0) goto La0
            java.lang.String r12 = r12.getMessage()
            com.mbridge.msdk.foundation.tools.o0.b(r1, r12)
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(java.util.Queue, boolean, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f != null) {
            this.Q = true;
            this.f.a(bVar, cVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031 A[Catch: Exception -> 0x0011, TryCatch #0 {Exception -> 0x0011, blocks: (B:2:0x0000, B:4:0x0004, B:10:0x002d, B:12:0x0031, B:13:0x003c, B:9:0x0014), top: B:22:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r9, int r10, boolean r11, java.lang.String r12, com.mbridge.msdk.foundation.same.report.metrics.c r13) {
        /*
            r8 = this;
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            if (r0 == 0) goto L14
            java.lang.String r2 = r8.h     // Catch: java.lang.Exception -> L11
            java.lang.String r0 = r0.j()     // Catch: java.lang.Exception -> L11
            boolean r0 = r2.equals(r0)     // Catch: java.lang.Exception -> L11
            if (r0 != 0) goto L2d
            goto L14
        L11:
            r0 = move-exception
            goto L9b
        L14:
            com.mbridge.msdk.reward.adapter.c r0 = new com.mbridge.msdk.reward.adapter.c     // Catch: java.lang.Exception -> L11
            android.content.Context r2 = r8.f9402a     // Catch: java.lang.Exception -> L11
            java.lang.String r3 = r8.l     // Catch: java.lang.Exception -> L11
            java.lang.String r4 = r8.h     // Catch: java.lang.Exception -> L11
            r0.<init>(r2, r3, r4)     // Catch: java.lang.Exception -> L11
            r8.b = r0     // Catch: java.lang.Exception -> L11
            boolean r2 = r8.t     // Catch: java.lang.Exception -> L11
            r0.d(r2)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            boolean r2 = r8.u     // Catch: java.lang.Exception -> L11
            r0.e(r2)     // Catch: java.lang.Exception -> L11
        L2d:
            boolean r0 = r8.t     // Catch: java.lang.Exception -> L11
            if (r0 == 0) goto L3c
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            int r2 = r8.q     // Catch: java.lang.Exception -> L11
            int r3 = r8.r     // Catch: java.lang.Exception -> L11
            int r4 = r8.s     // Catch: java.lang.Exception -> L11
            r0.a(r2, r3, r4)     // Catch: java.lang.Exception -> L11
        L3c:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Exception -> L11
            r0.<init>()     // Catch: java.lang.Exception -> L11
            r8.H = r0     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            int r2 = r8.p     // Catch: java.lang.Exception -> L11
            r0.a(r2)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.videocommon.setting.c r2 = r8.c     // Catch: java.lang.Exception -> L11
            r0.a(r2)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$f r0 = new com.mbridge.msdk.reward.controller.a$f     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r2 = r8.b     // Catch: java.lang.Exception -> L11
            r1 = r8
            r3 = r9
            r4 = r11
            r5 = r12
            r6 = r13
            r0.<init>(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L11
            r7 = r0
            r7.a(r10)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$g r0 = new com.mbridge.msdk.reward.controller.a$g     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r1 = r8.b     // Catch: java.lang.Exception -> L11
            r0.<init>(r1, r11)     // Catch: java.lang.Exception -> L11
            r8.j = r0     // Catch: java.lang.Exception -> L11
            r0.a(r7)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$g r1 = r8.j     // Catch: java.lang.Exception -> L11
            r0.a(r1)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            java.lang.String r1 = ""
            r2 = 0
            r0.a(r2, r1)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$j r1 = new com.mbridge.msdk.reward.controller.a$j     // Catch: java.lang.Exception -> L11
            r1.<init>()     // Catch: java.lang.Exception -> L11
            r0.a(r1)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r8.b     // Catch: java.lang.Exception -> L11
            boolean r5 = r8.y     // Catch: java.lang.Exception -> L11
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r6 = r13
            r0.a(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L11
            android.os.Handler r0 = r8.o     // Catch: java.lang.Exception -> L11
            int r1 = r10 * 1000
            long r1 = (long) r1     // Catch: java.lang.Exception -> L11
            r0.postDelayed(r7, r1)     // Catch: java.lang.Exception -> L11
            return
        L9b:
            java.lang.String r1 = r0.getMessage()
            r2 = 880020(0xd6d94, float:1.23317E-39)
            com.mbridge.msdk.foundation.error.b r1 = com.mbridge.msdk.foundation.error.a.a(r2, r1)
            if (r13 == 0) goto Laf
            r13.a(r1)
            r2 = 1
            r13.b(r2)
        Laf:
            r8.a(r1, r13)
            boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r1 == 0) goto Lbf
            java.lang.String r0 = r0.getMessage()
            java.lang.String r1 = "RewardVideoController"
            com.mbridge.msdk.foundation.tools.o0.b(r1, r0)
        Lbf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(int, int, boolean, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):void");
    }

    private void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.videocommon.setting.c cVar2;
        com.mbridge.msdk.videocommon.setting.c cVar3;
        boolean l;
        boolean m;
        try {
            if (this.b == null) {
                f();
            }
            if (this.b != null) {
                o0.b("RewardVideoController", "controller 819");
                if (this.u) {
                    l = a(false);
                } else {
                    l = this.b.l();
                }
                if (l) {
                    o0.c("RewardVideoController", "invoke adapter show isReady");
                    i iVar = new i(this, this, this.o, null);
                    f0.put(this.h, iVar);
                    this.b.a(iVar, str, this.g, this.p, this.k, cVar);
                    this.E = false;
                    return;
                }
                if (this.u) {
                    m = b();
                } else {
                    m = this.b.m();
                }
                if (m) {
                    o0.c("RewardVideoController", "invoke adapter show isSpareOfferReady");
                    i iVar2 = new i(this, this, this.o, null);
                    f0.put(this.h, iVar2);
                    this.b.a(iVar2, str, this.g, this.p, this.k, cVar);
                    this.E = false;
                    return;
                }
            }
            this.E = false;
            a("2000131", cVar, this.e, "can't show because load is failed");
            if (this.e != null) {
                try {
                    this.e.onShowFail(cVar, this.i, "can't show because load is failed");
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e2.getMessage());
                    }
                }
            }
            if (this.t || this.u || (cVar3 = this.c) == null || !cVar3.a(4) || this.f == null || this.f.a() == 1 || this.f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.h, true, 1));
        } catch (Exception e3) {
            this.E = false;
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e3.getLocalizedMessage());
            }
            a("2000131", cVar, this.e, "show exception");
            if (this.e != null) {
                try {
                    this.e.onShowFail(cVar, this.i, "show exception");
                } catch (Exception unused) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e3.getMessage());
                    }
                }
            }
            if (this.t || this.u || (cVar2 = this.c) == null || !cVar2.a(4) || this.f == null || this.f.a() == 1 || this.f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.h, true, 1));
        }
    }

    private boolean a(boolean z) {
        if (this.b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> a2 = com.mbridge.msdk.videocommon.cache.a.a().a(this.h);
        String str = this.A;
        if (a2 == null || a2.size() <= 0) {
            if (z) {
                d("is_ready_ctir_false", "no effective campaign list");
                com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.h(str);
                cVar.f(this.z);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 8);
                cVar.a("m_offer_ready", eVar);
                a(false, cVar, (List<CampaignEx>) this.b.h());
            }
            return false;
        }
        String d2 = com.mbridge.msdk.foundation.same.buffer.b.d(this.h);
        boolean a3 = TextUtils.isEmpty(d2) ? false : a(a2, d2, z);
        if (z) {
            d("is_ready_ctir_" + a3, "");
        }
        if (!a3) {
            for (com.mbridge.msdk.foundation.entity.c cVar2 : a2) {
                if (cVar2 != null) {
                    this.b.c(cVar2.a());
                    this.b.b(cVar2.d());
                    if (this.b.b(z)) {
                        cVar2.d();
                        return true;
                    }
                }
            }
        } else if (z) {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar3 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar3.h(str);
            a(a3, cVar3, this.b.h());
        }
        return a3;
    }

    private boolean a(List<com.mbridge.msdk.foundation.entity.c> list, String str, boolean z) {
        if (list == null) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : list) {
            if (cVar != null && str.equals(cVar.b())) {
                this.b.c(cVar.a());
                this.b.b(cVar.d());
                if (this.b.l()) {
                    if (z) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        cVar2.h(cVar.d());
                        a(false, cVar2, (List<CampaignEx>) this.b.h());
                        return true;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0205 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r12, java.lang.String r13, java.lang.String r14, com.mbridge.msdk.foundation.same.report.metrics.e r15) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(java.lang.String, java.lang.String, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.e):void");
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c a(com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        CampaignEx campaignEx;
        try {
            CopyOnWriteArrayList<CampaignEx> b2 = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.h);
            String str = "";
            if (b2 != null && b2.size() > 0 && (campaignEx = b2.get(0)) != null) {
                str = campaignEx.getCurrentLocalRid();
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = TextUtils.isEmpty(str) ? null : com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(str);
            if (cVar2 != null) {
                cVar2.b(b2);
                cVar2.a("2000128", eVar);
                cVar2.h(str);
                cVar2.m(this.h);
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar2);
                return cVar2;
            }
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            try {
                cVar.m(this.h);
                eVar.a("metrics_data_reason", "未获取到待展示的campaign信息 本地new metricsData");
                cVar.a("2000128", eVar);
                if (TextUtils.isEmpty(str)) {
                    cVar.h(SameMD5.getMD5(t0.d()));
                } else {
                    cVar.h(str);
                    cVar.b(b2);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar);
                }
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar);
                return cVar;
            } catch (Exception e2) {
                e = e2;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getMessage());
                }
                return cVar;
            }
        } catch (Exception e3) {
            e = e3;
            cVar = null;
        }
    }

    public void a(List<CampaignEx> list) {
        if (list != null && list.size() > 0) {
            this.H = list;
        } else {
            this.H = new ArrayList();
        }
    }

    private String a(String str) {
        String str2 = "";
        try {
            if (TextUtils.isEmpty(str)) {
                str2 = SameMD5.getMD5(t0.d());
            }
            String[] split = str.split("_");
            if (split != null && split.length >= 3) {
                str2 = split[2];
            }
            return TextUtils.isEmpty(str2) ? SameMD5.getMD5(t0.d()) : str2;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
            return str2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(android.os.Message r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L1f
            android.os.Bundle r3 = r3.getData()     // Catch: java.lang.Exception -> L17
            if (r3 == 0) goto L1f
            com.mbridge.msdk.foundation.same.report.metrics.d r0 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Exception -> L17
            java.lang.String r1 = "metrics_data_lrid"
            java.lang.String r3 = r3.getString(r1)     // Catch: java.lang.Exception -> L17
            com.mbridge.msdk.foundation.same.report.metrics.c r3 = r0.a(r3)     // Catch: java.lang.Exception -> L17
            goto L20
        L17:
            r3 = move-exception
            boolean r0 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r0 == 0) goto L1f
            r3.printStackTrace()
        L1f:
            r3 = 0
        L20:
            if (r3 != 0) goto L27
            com.mbridge.msdk.foundation.same.report.metrics.c r3 = new com.mbridge.msdk.foundation.same.report.metrics.c
            r3.<init>()
        L27:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(android.os.Message):com.mbridge.msdk.foundation.same.report.metrics.c");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener) {
        if (this.x) {
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (interVideoOutListener != null) {
                    eVar.a("listener_state", 1);
                } else {
                    eVar.a("listener_state", 2);
                }
                cVar.a(str, eVar);
                com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener, String str2) {
        if (cVar == null) {
            try {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (!TextUtils.isEmpty(str2)) {
            eVar.a("reason", str2);
        }
        if (interVideoOutListener != null) {
            eVar.a("listener_state", 1);
        } else {
            eVar.a("listener_state", 2);
        }
        cVar.a(str, eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:4:0x0009, B:6:0x000f, B:8:0x0016, B:12:0x002f, B:14:0x0039, B:17:0x0040, B:21:0x0075, B:23:0x0088, B:25:0x0096), top: B:31:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r5, com.mbridge.msdk.foundation.same.report.metrics.c r6) {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.same.report.metrics.c r0 = new com.mbridge.msdk.foundation.same.report.metrics.c
            r0.<init>()
            java.lang.String r1 = ""
            if (r5 == 0) goto L38
            int r2 = r5.size()     // Catch: java.lang.Exception -> L2b
            if (r2 <= 0) goto L38
            r2 = 0
            java.lang.Object r3 = r5.get(r2)     // Catch: java.lang.Exception -> L2b
            if (r3 == 0) goto L2e
            java.lang.Object r1 = r5.get(r2)     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = (com.mbridge.msdk.foundation.entity.CampaignEx) r1     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = r1.getLocalRequestId()     // Catch: java.lang.Exception -> L2b
            java.lang.Object r2 = r5.get(r2)     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = (com.mbridge.msdk.foundation.entity.CampaignEx) r2     // Catch: java.lang.Exception -> L2b
            java.lang.String r2 = r2.getNLRid()     // Catch: java.lang.Exception -> L2b
            goto L2f
        L2b:
            r5 = move-exception
            goto La2
        L2e:
            r2 = r1
        L2f:
            r0.h(r1)     // Catch: java.lang.Exception -> L2b
            r0.b(r5)     // Catch: java.lang.Exception -> L2b
            r5 = r1
            r1 = r2
            goto L39
        L38:
            r5 = r1
        L39:
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L2b
            if (r1 == 0) goto L40
            return r6
        L40:
            com.mbridge.msdk.foundation.same.report.metrics.e r6 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Exception -> L2b
            r6.<init>()     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "cache"
            r2 = 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L2b
            r6.a(r1, r3)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "hb"
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L2b
            r6.a(r1, r2)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "auto_load"
            r2 = 2
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L2b
            r6.a(r1, r2)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "2000127"
            r0.a(r1, r6)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "2000048"
            r0.a(r1, r6)     // Catch: java.lang.Exception -> L2b
            boolean r6 = r4.t     // Catch: java.lang.Exception -> L2b
            if (r6 == 0) goto L73
            r6 = 287(0x11f, float:4.02E-43)
            goto L75
        L73:
            r6 = 94
        L75:
            r0.a(r6)     // Catch: java.lang.Exception -> L2b
            java.lang.String r6 = "1"
            r0.g(r6)     // Catch: java.lang.Exception -> L2b
            java.lang.String r6 = "2"
            r0.e(r6)     // Catch: java.lang.Exception -> L2b
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L2b
            if (r6 != 0) goto La9
            com.mbridge.msdk.foundation.same.report.metrics.d r6 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Exception -> L2b
            java.util.LinkedHashMap r6 = r6.c()     // Catch: java.lang.Exception -> L2b
            boolean r6 = r6.containsKey(r5)     // Catch: java.lang.Exception -> L2b
            if (r6 != 0) goto La9
            com.mbridge.msdk.foundation.same.report.metrics.d r6 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Exception -> L2b
            java.util.LinkedHashMap r6 = r6.c()     // Catch: java.lang.Exception -> L2b
            r6.put(r5, r0)     // Catch: java.lang.Exception -> L2b
            return r0
        La2:
            boolean r6 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r6 == 0) goto La9
            r5.printStackTrace()
        La9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(java.util.List, com.mbridge.msdk.foundation.same.report.metrics.c):com.mbridge.msdk.foundation.same.report.metrics.c");
    }

    private void a(boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar, List<CampaignEx> list) {
        if (cVar == null) {
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                cVar.h(campaignEx.getLocalRequestId());
                cVar.f(campaignEx.getBidToken());
            }
            cVar.b(list);
        }
        a(z, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    private void a(boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.m(this.h);
        cVar.a(this.t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
        eVar.a("result", Integer.valueOf(z ? 1 : 2));
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.u ? 1 : 0));
        cVar.a("m_offer_ready", eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a("m_offer_ready", cVar);
    }
}
