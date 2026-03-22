package com.mbridge.msdk.reward.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.cache.a;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.adapter.b;
import com.mbridge.msdk.reward.controller.a;
import com.mbridge.msdk.reward.player.MBRewardVideoActivity;
import com.mbridge.msdk.videocommon.a;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {
    private String C;
    private h D;
    public String K;
    private List<CampaignEx> V;
    private CopyOnWriteArrayList<CampaignEx> W;
    private List<CampaignEx> X;

    /* renamed from: a  reason: collision with root package name */
    private Context f9381a;
    private String b;
    private String c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private String h;
    private com.mbridge.msdk.video.bt.module.orglistener.h i;
    private volatile com.mbridge.msdk.reward.adapter.a j;
    private volatile a.j k;
    private com.mbridge.msdk.videocommon.setting.c l;
    private boolean r;
    private boolean s;
    private String u;
    private int v;
    private int w;
    private int x;
    private CampaignUnit y;
    private CopyOnWriteArrayList<CampaignEx> z;
    private boolean m = false;
    private boolean n = false;
    public Object o = new Object();
    private CopyOnWriteArrayList<CampaignEx> p = new CopyOnWriteArrayList<>();
    private int q = 2;
    private String t = "";
    private boolean A = false;
    private long B = 0;
    private boolean E = false;
    private boolean F = false;
    public String G = "";
    public String H = "";
    public String I = "";
    public int J = 0;
    private Handler L = new a(Looper.getMainLooper());
    private boolean M = false;
    private long N = 0;
    volatile boolean O = false;
    volatile boolean P = false;
    volatile boolean Q = false;
    volatile boolean R = false;
    volatile boolean S = false;
    public volatile boolean T = false;
    private String U = "";

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Removed duplicated region for block: B:155:0x03a8 A[Catch: all -> 0x005b, Exception -> 0x02fa, TryCatch #1 {Exception -> 0x02fa, blocks: (B:119:0x02de, B:121:0x02e8, B:123:0x02f0, B:126:0x02fd, B:128:0x030b, B:153:0x03a2, B:155:0x03a8, B:157:0x03b7, B:158:0x03bb, B:159:0x03bf, B:130:0x0318, B:132:0x0322, B:134:0x032a, B:135:0x0333, B:137:0x0341, B:138:0x034c, B:140:0x0354, B:141:0x035d, B:143:0x0365, B:151:0x0379, B:152:0x038d), top: B:194:0x02de }] */
        /* JADX WARN: Removed duplicated region for block: B:163:0x03d7 A[Catch: all -> 0x005b, Exception -> 0x005e, TryCatch #0 {Exception -> 0x005e, blocks: (B:3:0x000e, B:11:0x0023, B:13:0x0046, B:15:0x0051, B:20:0x0061, B:22:0x0069, B:24:0x006f, B:26:0x0083, B:28:0x008b, B:30:0x0093, B:32:0x009f, B:34:0x00c8, B:36:0x00ef, B:38:0x0103, B:40:0x0120, B:41:0x0132, B:43:0x013a, B:45:0x0146, B:48:0x0156, B:50:0x015e, B:52:0x016a, B:53:0x0176, B:55:0x017c, B:58:0x0184, B:60:0x018e, B:62:0x019d, B:63:0x01a0, B:65:0x01b7, B:67:0x01c3, B:68:0x01ce, B:70:0x01d4, B:112:0x02b1, B:114:0x02b5, B:115:0x02be, B:117:0x02c6, B:161:0x03cf, B:163:0x03d7, B:164:0x03e0, B:166:0x0413, B:167:0x041f, B:168:0x0430, B:170:0x0438, B:171:0x0443, B:173:0x044c, B:174:0x045d, B:176:0x0464, B:178:0x046e, B:180:0x0476, B:182:0x0486, B:184:0x048e, B:186:0x0494, B:188:0x04a0), top: B:193:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:166:0x0413 A[Catch: all -> 0x005b, Exception -> 0x005e, TryCatch #0 {Exception -> 0x005e, blocks: (B:3:0x000e, B:11:0x0023, B:13:0x0046, B:15:0x0051, B:20:0x0061, B:22:0x0069, B:24:0x006f, B:26:0x0083, B:28:0x008b, B:30:0x0093, B:32:0x009f, B:34:0x00c8, B:36:0x00ef, B:38:0x0103, B:40:0x0120, B:41:0x0132, B:43:0x013a, B:45:0x0146, B:48:0x0156, B:50:0x015e, B:52:0x016a, B:53:0x0176, B:55:0x017c, B:58:0x0184, B:60:0x018e, B:62:0x019d, B:63:0x01a0, B:65:0x01b7, B:67:0x01c3, B:68:0x01ce, B:70:0x01d4, B:112:0x02b1, B:114:0x02b5, B:115:0x02be, B:117:0x02c6, B:161:0x03cf, B:163:0x03d7, B:164:0x03e0, B:166:0x0413, B:167:0x041f, B:168:0x0430, B:170:0x0438, B:171:0x0443, B:173:0x044c, B:174:0x045d, B:176:0x0464, B:178:0x046e, B:180:0x0476, B:182:0x0486, B:184:0x048e, B:186:0x0494, B:188:0x04a0), top: B:193:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0231  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r18) {
            /*
                Method dump skipped, instructions count: 1234
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a.handleMessage(android.os.Message):void");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b extends com.mbridge.msdk.reward.request.a {
        final /* synthetic */ com.mbridge.msdk.foundation.same.report.metrics.c e;

        public b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.e = cVar;
        }

        @Override // com.mbridge.msdk.reward.request.a
        public void a(CampaignUnit campaignUnit) {
            CampaignEx campaignEx;
            try {
                c.this.c(campaignUnit);
                c.this.a(campaignUnit);
                if (campaignUnit != null) {
                    c.this.G = campaignUnit.getRequestId();
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
                if (c.this.z != null && c.this.z.size() > 0 && (campaignEx = (CampaignEx) c.this.z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                    c.this.z.clear();
                }
                if (c.this.V != null) {
                    c.this.V.clear();
                }
                c.this.O = false;
                c.this.P = false;
                synchronized (c.this.o) {
                    try {
                        if (c.this.Q) {
                            c.this.Q = false;
                        }
                        c.this.S = false;
                        c.this.R = false;
                        c.this.b("exception after load success", this.e);
                        c.this.n();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.reward.request.a
        public void b(int i, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            CampaignEx campaignEx;
            if (i == -1) {
                c.this.B = System.currentTimeMillis();
            }
            if (c.this.z != null && c.this.z.size() > 0 && (campaignEx = (CampaignEx) c.this.z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                c.this.z.clear();
            }
            if (c.this.V != null) {
                c.this.V.clear();
            }
            c.this.O = false;
            c.this.P = false;
            synchronized (c.this.o) {
                try {
                    if (c.this.Q) {
                        c.this.Q = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c.this.a(cVar, i);
            c.this.S = false;
            c.this.R = false;
            if (!c.this.M) {
                c.this.a(i, str, cVar);
            }
            c.this.n();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f9389a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ boolean c;
        final /* synthetic */ CopyOnWriteArrayList d;
        final /* synthetic */ int e;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9390a;
            final /* synthetic */ com.mbridge.msdk.foundation.error.b b;

            public a(String str, com.mbridge.msdk.foundation.error.b bVar) {
                this.f9390a = str;
                this.b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.b, c.this.V, c.this.s, this.f9390a);
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (!c.this.S && c.this.j != null) {
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVar = this.b;
                    if (bVar != null) {
                        bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
                    }
                    d dVar = d.this;
                    if (dVar.f9389a == null) {
                        dVar.f9389a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f9389a.b(dVar2.d);
                    d.this.f9389a.a(this.b);
                    c.this.j.a(c.this.V, this.b, d.this.f9389a);
                    o0.a("RewardMVVideoAdapter", "播放模板下载失败，非大模板 onVideoLoadFail");
                }
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9391a;
            final /* synthetic */ com.mbridge.msdk.foundation.error.b b;

            public b(String str, com.mbridge.msdk.foundation.error.b bVar) {
                this.f9391a = str;
                this.b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.b, c.this.V, c.this.s, this.f9391a);
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (!c.this.S && c.this.j != null) {
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVar = this.b;
                    if (bVar != null) {
                        bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
                    }
                    d dVar = d.this;
                    if (dVar.f9389a == null) {
                        dVar.f9389a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f9389a.b(dVar2.d);
                    d.this.f9389a.a(this.b);
                    c.this.j.a(c.this.V, this.b, d.this.f9389a);
                    o0.a("RewardMVVideoAdapter", "播放模板下载失败，大模板，nscpt 1 onVideoLoadFail");
                }
            }
        }

        public d(CampaignEx campaignEx, boolean z, CopyOnWriteArrayList copyOnWriteArrayList, int i) {
            this.b = campaignEx;
            this.c = z;
            this.d = copyOnWriteArrayList;
            this.e = i;
            this.f9389a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            o0.a("RewardMVVideoAdapter", "template 下载失败： ");
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (!this.c && c.this.j != null && c.this.L != null) {
                o0.a("RewardMVVideoAdapter", "播放模板下载失败，非大模板");
                if (this.b.getRsIgnoreCheckRule() == null || this.b.getRsIgnoreCheckRule().size() <= 0 || !this.b.getRsIgnoreCheckRule().contains(1)) {
                    c.this.L.post(new a(str2, bVar));
                } else {
                    o0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                }
            } else if (this.e == 1) {
                if (this.b.getRsIgnoreCheckRule() != null && this.b.getRsIgnoreCheckRule().size() > 0) {
                    if (this.b.getRsIgnoreCheckRule().contains(3)) {
                        o0.c("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                        return;
                    } else if (this.b.getCMPTEntryUrl().equals(this.b.getendcard_url()) && this.b.getRsIgnoreCheckRule().contains(2)) {
                        o0.c("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                        return;
                    }
                }
                if (c.this.j == null || c.this.L == null) {
                    return;
                }
                c.this.L.post(new b(str2, bVar));
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f extends c.a {
        public f() {
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignUnit f9396a;

        public g(CampaignUnit campaignUnit) {
            this.f9396a = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.a(com.mbridge.msdk.foundation.db.g.a(c.this.f9381a)).a();
            CampaignUnit campaignUnit = this.f9396a;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.f9396a.getAds().size() > 0) {
                c.this.d(this.f9396a.getAds());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f9397a;
        private com.mbridge.msdk.foundation.same.report.metrics.c b;

        public h(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f9397a = str;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!c.this.E) {
                    c.this.F = true;
                    if (c.this.L != null) {
                        Message obtainMessage = c.this.L.obtainMessage();
                        obtainMessage.obj = this.f9397a;
                        obtainMessage.what = 2;
                        if (this.b != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString("metrics_data_lrid", this.b.o());
                            obtainMessage.setData(bundle);
                        }
                        c.this.L.sendMessage(obtainMessage);
                    }
                }
            } catch (Exception e) {
                o0.b("RewardMVVideoAdapter", e.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f9398a;
        private com.mbridge.msdk.foundation.same.report.metrics.c b;

        public i(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f9398a = str;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    c cVar = c.this;
                    cVar.u = com.mbridge.msdk.b.a(cVar.b, c.this.f9381a);
                }
                c cVar2 = c.this;
                cVar2.h = t0.a(cVar2.f9381a, c.this.b);
                if (!c.this.F) {
                    if (c.this.D != null && c.this.L != null) {
                        c.this.L.removeCallbacks(c.this.D);
                    }
                    c.this.E = true;
                    if (c.this.L != null) {
                        Message obtainMessage = c.this.L.obtainMessage();
                        obtainMessage.obj = this.f9398a;
                        obtainMessage.what = 1;
                        if (this.b != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString("metrics_data_lrid", this.b.o());
                            obtainMessage.setData(bundle);
                        }
                        c.this.L.sendMessage(obtainMessage);
                    }
                    if (!TextUtils.isEmpty(c.this.h)) {
                        o0.b("RewardMVVideoAdapter", "excludeId : " + c.this.h);
                    }
                }
            } catch (Exception e) {
                o0.b("RewardMVVideoAdapter", e.getMessage());
            }
        }
    }

    public c(Context context, String str, String str2) {
        try {
            this.f9381a = context.getApplicationContext();
            this.b = str2;
            this.c = str;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private String i() {
        try {
            return y0.b(com.mbridge.msdk.reward.controller.a.c0) ? com.mbridge.msdk.reward.controller.a.c0 : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private String k() {
        int B;
        com.mbridge.msdk.setting.g b2 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(this.C)) {
            B = b2.p0();
        } else {
            B = b2.B();
        }
        return com.mbridge.msdk.foundation.same.net.utils.d.h().a(this.C, B);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            if (y0.b(this.b)) {
                com.mbridge.msdk.reward.controller.a.a(this.b, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c(String str) {
        this.t = str;
    }

    public void d(boolean z) {
        this.r = z;
    }

    public void e(boolean z) {
        this.s = z;
    }

    public void f(boolean z) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList;
        if (z || (copyOnWriteArrayList = this.z) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.b, this.z);
    }

    public boolean g(boolean z) {
        if (z) {
            List<CampaignEx> list = this.X;
            if (list == null || list.size() <= 0) {
                return false;
            }
            for (CampaignEx campaignEx : this.X) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(1);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                        resDownloadCheckManager.setTemplatePreLoadDone(this.b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), true);
                    }
                }
            }
            com.mbridge.msdk.videocommon.cache.a.a().a(this.b, this.X, "load_timeout", 1);
            return true;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.z;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return false;
        }
        Iterator<CampaignEx> it = this.z.iterator();
        while (it.hasNext()) {
            CampaignEx next = it.next();
            if (next != null) {
                next.setLoadTimeoutState(1);
                if (next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e())) {
                    ResDownloadCheckManager resDownloadCheckManager2 = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager2.setTemplatePreLoadDone(this.b + "_" + next.getRequestId() + "_" + next.getRewardTemplateMode().e(), true);
                }
            }
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.b, this.z, "load_timeout", 1);
        return true;
    }

    public void h(boolean z) {
        if (z) {
            List<CampaignEx> list = this.X;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : this.X) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(0);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                        resDownloadCheckManager.setTemplatePreLoadDone(this.b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), false);
                    }
                }
            }
            com.mbridge.msdk.videocommon.cache.a.a().a(this.b, this.X, "load_timeout", 0);
            return;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.z;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        Iterator<CampaignEx> it = this.z.iterator();
        while (it.hasNext()) {
            CampaignEx next = it.next();
            if (next != null) {
                next.setLoadTimeoutState(0);
                if (next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e())) {
                    ResDownloadCheckManager resDownloadCheckManager2 = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager2.setTemplatePreLoadDone(this.b + "_" + next.getRequestId() + "_" + next.getRewardTemplateMode().e(), false);
                }
            }
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.b, this.z, "load_timeout", 0);
    }

    public String j() {
        return this.b;
    }

    public boolean l() {
        return b(false);
    }

    public boolean m() {
        List<CampaignEx> c = com.mbridge.msdk.videocommon.cache.a.a().c(this.b, 1, this.s, this.t);
        if (c != null && c.size() > 0) {
            CampaignEx campaignEx = c.get(0);
            int a2 = com.mbridge.msdk.videocommon.cache.a.a().a(this.b, 1, this.s, this.t);
            if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || c.size() >= a2) {
                return a(c, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt());
            }
            return false;
        }
        o0.a("test_isReay_db", "database has not can use data");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<CampaignEx> list) {
        if (this.f9381a == null || list == null || list.size() == 0) {
            return;
        }
        j a2 = j.a(com.mbridge.msdk.foundation.db.g.a(this.f9381a));
        for (int i2 = 0; i2 < list.size(); i2++) {
            CampaignEx campaignEx = list.get(i2);
            if (campaignEx != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    if (t0.c(this.f9381a, campaignEx.getPackageName())) {
                        com.mbridge.msdk.b.a(campaignEx);
                    } else {
                        a(a2, campaignEx);
                    }
                } else {
                    a(a2, campaignEx);
                }
            }
        }
    }

    private String e() {
        return com.mbridge.msdk.b.a();
    }

    public void c(boolean z) {
        this.M = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c metricsData = campaignUnit.getMetricsData();
            if (metricsData != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 1);
                eVar.a("timeout", Integer.valueOf(this.f));
                eVar.a("hst", k());
                metricsData.b(campaignUnit.getAds());
                metricsData.a("2000126", eVar);
                campaignUnit.setLocalRequestId(metricsData.o());
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000126", metricsData);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardMVVideoAdapter", e2.getMessage());
            }
        }
    }

    public CopyOnWriteArrayList<CampaignEx> f() {
        return this.W;
    }

    public void b(String str) {
        this.I = str;
    }

    public boolean b(boolean z) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        CopyOnWriteArrayList<CampaignEx> b2 = com.mbridge.msdk.videocommon.cache.a.a().b(this.b, 1, this.s, this.t);
        if (b2 != null && b2.size() > 0) {
            CampaignEx campaignEx = b2.get(0);
            cVar.h(campaignEx.getCurrentLocalRid());
            int a2 = com.mbridge.msdk.videocommon.cache.a.a().a(this.b, 1, this.s, this.t);
            if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || b2.size() >= a2) {
                boolean a3 = a(b2, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt(), z);
                if (z) {
                    a(a3, cVar, b2);
                }
                return a3;
            }
            if (z) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(DbParams.KEY_CHANNEL_EVENT_NAME, "is_ready_cltr");
                eVar.a("reason", "nscpt error");
                eVar.a("type", 8);
                a(cVar, eVar, b2);
            }
            return false;
        }
        o0.a("RewardVideoController", "database has not can use data");
        if (z) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a(DbParams.KEY_CHANNEL_EVENT_NAME, "is_ready_cse");
            eVar2.a("reason", "no effective campaign list");
            eVar2.a("type", 8);
            a(cVar, eVar2, b2);
        }
        return false;
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f9392a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ CopyOnWriteArrayList c;
        final /* synthetic */ boolean d;
        final /* synthetic */ int e;

        public e(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z, int i) {
            this.b = campaignEx;
            this.c = copyOnWriteArrayList;
            this.d = z;
            this.e = i;
            this.f9392a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
            o0.a("RewardMVVideoAdapter", "大模板业务，大模板下载成功");
            c.this.P = true;
            if (!c.this.O || c.this.Q || c.this.L == null) {
                return;
            }
            synchronized (c.this.o) {
                try {
                    if (c.this.Q) {
                        return;
                    }
                    c.this.Q = true;
                    c.this.L.post(new a(str3, str, str2));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            o0.a("RewardMVVideoAdapter", "大模板业务，大模板下载失败");
            if (this.b.getRsIgnoreCheckRule() != null && this.b.getRsIgnoreCheckRule().size() > 0) {
                if (this.b.getRsIgnoreCheckRule().contains(3)) {
                    o0.c("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                    return;
                } else if (this.b.getCMPTEntryUrl().equals(this.b.getendcard_url()) && this.b.getRsIgnoreCheckRule().contains(2)) {
                    o0.c("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                    return;
                }
            }
            c cVar = c.this;
            cVar.a(cVar.b, c.this.V, c.this.s, str2);
            c.this.P = false;
            if (c.this.L != null) {
                c.this.L.removeMessages(5);
            }
            if (c.this.j == null || c.this.S) {
                return;
            }
            c.this.S = false;
            if (bVar != null) {
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            }
            if (this.f9392a == null) {
                this.f9392a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f9392a.b(this.c);
            this.f9392a.a(bVar);
            c.this.j.a(c.this.V, bVar, this.f9392a);
            o0.a("RewardMVVideoAdapter", "大模板业务，大模板下载失败 onVideoLoadFail");
        }

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9393a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;

            public a(String str, String str2, String str3) {
                this.f9393a = str;
                this.b = str2;
                this.c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b = com.mbridge.msdk.reward.adapter.b.b();
                boolean z = c.this.A;
                Handler handler = c.this.L;
                boolean z2 = c.this.r;
                boolean z3 = c.this.s;
                String str = this.f9393a;
                String requestIdNotice = e.this.b.getRequestIdNotice();
                String str2 = this.b;
                String str3 = this.c;
                String cMPTEntryUrl = e.this.b.getCMPTEntryUrl();
                int i = c.this.q;
                e eVar = e.this;
                b.a(z, handler, z2, z3, str, requestIdNotice, str2, str3, cMPTEntryUrl, i, eVar.b, eVar.c, H5DownLoadManager.getInstance().getH5ResAddress(e.this.b.getCMPTEntryUrl()), this.c, c.this.l, new C0142a(), false);
            }

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.reward.adapter.c$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class C0142a implements b.o {
                public C0142a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a) {
                    o0.a("HBOPTIMIZE", "模板加载成功 requestId " + str4);
                    e eVar = e.this;
                    if (c.this.a(eVar.c, eVar.d, eVar.e)) {
                        c cVar = c.this;
                        cVar.a(cVar.b, c.this.V, c.this.X, c.this.s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        e eVar2 = e.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = eVar2.f9392a;
                        if (cVar2 != null) {
                            cVar2.b(eVar2.c);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar = c.this.j;
                        e eVar3 = e.this;
                        aVar.a(eVar3.c, eVar3.f9392a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, cVar3.V, c.this.s, a.this.f9393a);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880008, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    e eVar4 = e.this;
                    if (eVar4.f9392a == null) {
                        eVar4.f9392a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    e eVar5 = e.this;
                    eVar5.f9392a.b(eVar5.c);
                    e.this.f9392a.a(a2);
                    c.this.j.a(c.this.V, a2, e.this.f9392a);
                    o0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载成功 isReady false  onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar) {
                    o0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载失败");
                    o0.b("HBOPTIMIZE", "模板加载失败 requestId " + str2);
                    a aVar = a.this;
                    c cVar = c.this;
                    cVar.a(aVar.c, cVar.V, c.this.s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    e eVar = e.this;
                    if (eVar.f9392a == null) {
                        eVar.f9392a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    e eVar2 = e.this;
                    eVar2.f9392a.b(eVar2.c);
                    e.this.f9392a.a(bVar);
                    c.this.j.a(c.this.V, bVar, e.this.f9392a);
                    o0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载失败 onVideoLoadFail");
                }
            }
        }
    }

    private void d() {
        try {
            Map<String, Long> map = com.mbridge.msdk.foundation.same.buffer.b.l;
            if (map == null || map.size() <= 0) {
                return;
            }
            com.mbridge.msdk.foundation.same.buffer.b.l.clear();
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public String a(boolean z) {
        CopyOnWriteArrayList<CampaignEx> b2;
        CampaignEx campaignEx;
        if (z) {
            if (TextUtils.isEmpty(this.H) && (b2 = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.b)) != null && b2.size() > 0 && (campaignEx = b2.get(0)) != null) {
                this.H = campaignEx.getRequestId();
            }
            return this.H;
        }
        return this.G;
    }

    public String g() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.z;
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            return com.mbridge.msdk.foundation.same.c.b(this.z);
        }
        return com.mbridge.msdk.foundation.same.c.b(this.X);
    }

    public CopyOnWriteArrayList<CampaignEx> h() {
        return this.z;
    }

    private void c() {
        try {
            com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(this.f9381a)).a(this.b);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public void a(int i2) {
        this.q = i2;
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.reward.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0139c implements b.h {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f9383a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ boolean c;
        final /* synthetic */ CopyOnWriteArrayList d;
        final /* synthetic */ int e;

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.adapter.c$c$c  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0141c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f9388a;
            final /* synthetic */ com.mbridge.msdk.foundation.error.b b;

            public RunnableC0141c(CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
                this.f9388a = copyOnWriteArrayList;
                this.b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.b, this.f9388a, c.this.s, "");
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (!c.this.S && c.this.j != null) {
                    c.this.S = false;
                    C0139c c0139c = C0139c.this;
                    if (c0139c.f9383a == null) {
                        c0139c.f9383a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0139c c0139c2 = C0139c.this;
                    c0139c2.f9383a.b(c0139c2.d);
                    com.mbridge.msdk.foundation.error.b bVar = this.b;
                    if (bVar != null) {
                        bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
                    }
                    C0139c.this.f9383a.a(this.b);
                    c.this.j.a(this.f9388a, this.b, C0139c.this.f9383a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载失败：onVideoLoadFail");
                }
            }
        }

        public C0139c(CampaignEx campaignEx, boolean z, CopyOnWriteArrayList copyOnWriteArrayList, int i) {
            this.b = campaignEx;
            this.c = z;
            this.d = copyOnWriteArrayList;
            this.e = i;
            this.f9383a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            c.this.O = true;
            if (!this.c) {
                Iterator<CampaignEx> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CampaignEx next = it.next();
                    if (next != null && next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e()) && !next.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && c.this.L != null) {
                        c.this.L.post(new a(next, str, str2, str3, copyOnWriteArrayList));
                    } else {
                        String str4 = str;
                        String str5 = str2;
                        String str6 = str3;
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = copyOnWriteArrayList;
                        if (c.this.a(this.d, this.c, this.e)) {
                            c cVar = c.this;
                            cVar.a(cVar.b, copyOnWriteArrayList2, c.this.X, c.this.s);
                            if (c.this.L != null) {
                                c.this.L.removeMessages(5);
                            }
                            if (c.this.j != null && !c.this.R) {
                                c.this.R = true;
                                com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f9383a;
                                if (cVar2 != null) {
                                    cVar2.b(this.d);
                                }
                                c.this.j.a(this.d, this.f9383a);
                            }
                        } else {
                            c cVar3 = c.this;
                            cVar3.a(str5, cVar3.V, c.this.s, str6);
                            if (c.this.L != null) {
                                c.this.L.removeMessages(5);
                            }
                            if (c.this.j != null && !c.this.S) {
                                c.this.S = false;
                                com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                                if (this.f9383a == null) {
                                    this.f9383a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                                }
                                this.f9383a.b(this.d);
                                this.f9383a.a(a2);
                                c.this.j.a(this.d, a2, this.f9383a);
                                o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 非大模板，不存在播放模板,isReay false onVideoLoadFail");
                            }
                        }
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                        copyOnWriteArrayList = copyOnWriteArrayList2;
                    }
                }
            } else if (!c.this.P || c.this.Q || c.this.L == null) {
            } else {
                synchronized (c.this.o) {
                    try {
                        if (c.this.Q) {
                            return;
                        }
                        c.this.Q = true;
                        c.this.L.post(new b(str3, str2, copyOnWriteArrayList));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.adapter.c$c$a */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f9384a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;
            final /* synthetic */ CopyOnWriteArrayList e;

            public a(CampaignEx campaignEx, String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f9384a = campaignEx;
                this.b = str;
                this.c = str2;
                this.d = str3;
                this.e = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b = com.mbridge.msdk.reward.adapter.b.b();
                boolean z = c.this.A;
                Handler handler = c.this.L;
                boolean z2 = c.this.r;
                boolean z3 = c.this.s;
                String e = this.f9384a.getRewardTemplateMode().e();
                int i = c.this.q;
                C0139c c0139c = C0139c.this;
                b.a(z, handler, z2, z3, null, e, i, c0139c.b, c0139c.d, H5DownLoadManager.getInstance().getH5ResAddress(this.f9384a.getRewardTemplateMode().e()), this.b, this.c, this.d, this.f9384a.getRequestIdNotice(), c.this.l, new C0140a());
            }

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.reward.adapter.c$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public class C0140a implements b.o {
                public C0140a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a) {
                    C0139c c0139c = C0139c.this;
                    if (c.this.a(c0139c.d, c0139c.c, c0139c.e)) {
                        c cVar = c.this;
                        String str6 = cVar.b;
                        a aVar = a.this;
                        cVar.a(str6, aVar.e, c.this.X, c.this.s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        C0139c c0139c2 = C0139c.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = c0139c2.f9383a;
                        if (cVar2 != null) {
                            cVar2.b(c0139c2.d);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar2 = c.this.j;
                        C0139c c0139c3 = C0139c.this;
                        aVar2.a(c0139c3.d, c0139c3.f9383a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, cVar3.V, c.this.s, str4);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    C0139c c0139c4 = C0139c.this;
                    if (c0139c4.f9383a == null) {
                        c0139c4.f9383a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0139c c0139c5 = C0139c.this;
                    c0139c5.f9383a.b(c0139c5.d);
                    C0139c.this.f9383a.a(a2);
                    com.mbridge.msdk.reward.adapter.a aVar3 = c.this.j;
                    C0139c c0139c6 = C0139c.this;
                    aVar3.a(c0139c6.d, a2, c0139c6.f9383a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 非大模板，播放模板预加载成功,isReay false onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar) {
                    if (bVar != null) {
                        bVar.a("his_reason", "preload template failed is tpl :" + C0139c.this.c);
                    }
                    if (C0139c.this.b.getRsIgnoreCheckRule() != null && C0139c.this.b.getRsIgnoreCheckRule().size() > 0 && C0139c.this.b.getRsIgnoreCheckRule().contains(1)) {
                        o0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                    a aVar = a.this;
                    c cVar = c.this;
                    cVar.a(aVar.c, cVar.V, c.this.s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    C0139c c0139c = C0139c.this;
                    if (c0139c.f9383a == null) {
                        c0139c.f9383a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0139c c0139c2 = C0139c.this;
                    c0139c2.f9383a.b(c0139c2.d);
                    C0139c.this.f9383a.a(bVar);
                    c.this.j.a(c.this.V, bVar, C0139c.this.f9383a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载失败： 非大模板，播放模板预加载失败 onVideoLoadFail");
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.adapter.c$c$b */
        /* loaded from: classes5.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9386a;
            final /* synthetic */ String b;
            final /* synthetic */ CopyOnWriteArrayList c;

            public b(String str, String str2, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f9386a = str;
                this.b = str2;
                this.c = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b = com.mbridge.msdk.reward.adapter.b.b();
                boolean z = c.this.A;
                Handler handler = c.this.L;
                boolean z2 = c.this.r;
                boolean z3 = c.this.s;
                String str = this.f9386a;
                String requestIdNotice = C0139c.this.b.getRequestIdNotice();
                String str2 = c.this.c;
                String str3 = this.b;
                String cMPTEntryUrl = C0139c.this.b.getCMPTEntryUrl();
                int i = c.this.q;
                C0139c c0139c = C0139c.this;
                b.a(z, handler, z2, z3, str, requestIdNotice, str2, str3, cMPTEntryUrl, i, c0139c.b, c0139c.d, H5DownLoadManager.getInstance().getH5ResAddress(C0139c.this.b.getCMPTEntryUrl()), this.b, c.this.l, new a(), false);
            }

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.reward.adapter.c$c$b$a */
            /* loaded from: classes5.dex */
            public class a implements b.o {
                public a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a) {
                    C0139c c0139c = C0139c.this;
                    if (c.this.a(c0139c.d, c0139c.c, c0139c.e)) {
                        c cVar = c.this;
                        String str6 = cVar.b;
                        b bVar = b.this;
                        cVar.a(str6, bVar.c, c.this.X, c.this.s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        C0139c c0139c2 = C0139c.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = c0139c2.f9383a;
                        if (cVar2 != null) {
                            cVar2.b(c0139c2.d);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar = c.this.j;
                        C0139c c0139c3 = C0139c.this;
                        aVar.a(c0139c3.d, c0139c3.f9383a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, cVar3.V, c.this.s, str4);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    C0139c c0139c4 = C0139c.this;
                    if (c0139c4.f9383a == null) {
                        c0139c4.f9383a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0139c c0139c5 = C0139c.this;
                    c0139c5.f9383a.b(c0139c5.d);
                    C0139c.this.f9383a.a(a2);
                    c.this.j.a(c.this.V, a2, C0139c.this.f9383a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 大模板预加载成功,isReady false onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar) {
                    if (bVar != null) {
                        bVar.a("his_reason", "errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    if (C0139c.this.b.getRsIgnoreCheckRule() != null && C0139c.this.b.getRsIgnoreCheckRule().size() > 0 && C0139c.this.b.getRsIgnoreCheckRule().contains(3)) {
                        o0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                    b bVar2 = b.this;
                    c cVar = c.this;
                    cVar.a(bVar2.b, cVar.V, c.this.s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    C0139c c0139c = C0139c.this;
                    if (c0139c.f9383a == null) {
                        c0139c.f9383a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0139c c0139c2 = C0139c.this;
                    c0139c2.f9383a.b(c0139c2.d);
                    C0139c.this.f9383a.a(bVar);
                    c.this.j.a(c.this.V, bVar, C0139c.this.f9383a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 大模板预加载失败 onVideoLoadFail");
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            c.this.O = false;
            if (c.this.j == null || c.this.L == null) {
                return;
            }
            c.this.L.post(new RunnableC0141c(copyOnWriteArrayList, bVar));
        }
    }

    public void a(int i2, String str) {
        this.J = i2;
        this.K = str;
    }

    public void c(List<CampaignEx> list) {
        this.X = list;
    }

    public boolean a(CampaignEx campaignEx, boolean z, com.mbridge.msdk.foundation.error.b bVar, int i2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        c cVar2;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar3;
        com.mbridge.msdk.foundation.cache.c cVar4;
        com.mbridge.msdk.foundation.cache.c cVar5 = new com.mbridge.msdk.foundation.cache.c();
        com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(this.b, this.r);
        boolean z2 = false;
        if (aVar.a(this.C)) {
            return false;
        }
        if (!this.T) {
            this.T = true;
            cVar5 = aVar.a(this.C, cVar, campaignEx, bVar, i2, this);
            cVar3 = cVar;
            cVar2 = this;
            if (cVar5 != null && cVar5.g() > com.mbridge.msdk.foundation.cache.c.i) {
                if (cVar5.c() != null && cVar5.c().size() > 0) {
                    a(cVar5.c(), true, true, true);
                } else if (cVar5.g() == com.mbridge.msdk.foundation.cache.c.k && bVar != null) {
                    bVar.a(com.mbridge.msdk.foundation.error.a.b(880038));
                    bVar.d(cVar5.e());
                }
            }
            cVar4 = cVar5;
            aVar.a(cVar3, cVar2.C, cVar4, (List<a.b>) null, (JSONObject) null, 3);
            return z2;
        }
        cVar2 = this;
        cVar3 = cVar;
        cVar5.d("isCandidate:false");
        cVar5.a(com.mbridge.msdk.foundation.cache.c.k);
        cVar4 = cVar5;
        z2 = true;
        aVar.a(cVar3, cVar2.C, cVar4, (List<a.b>) null, (JSONObject) null, 3);
        return z2;
    }

    public void b(String str, boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        String str2;
        boolean z2;
        try {
            if (this.f9381a == null) {
                com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null");
                if (cVar != null) {
                    cVar.a(a2);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null", cVar);
            } else if (y0.a(this.b)) {
                com.mbridge.msdk.foundation.error.b a3 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null");
                if (cVar != null) {
                    cVar.a(a3);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null", cVar);
            } else if (this.l == null) {
                com.mbridge.msdk.foundation.error.b a4 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null");
                if (cVar != null) {
                    cVar.a(a4);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null", cVar);
            } else if (TextUtils.isEmpty(str) && System.currentTimeMillis() - this.B < this.l.p() * 1000) {
                com.mbridge.msdk.foundation.error.b a5 = com.mbridge.msdk.foundation.error.a.a(880018, "errorCode: 3507 errorMessage: data load failed, errorMsg is EXCEPTION_RETURN_EMPTY");
                if (cVar != null) {
                    cVar.a(a5);
                    cVar.b(true);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is EXCEPTION_RETURN_EMPTY", cVar);
            } else {
                if (cVar == null) {
                    str2 = "";
                } else {
                    str2 = cVar.o();
                }
                com.mbridge.msdk.foundation.same.net.wrapper.e a6 = new com.mbridge.msdk.reward.adapter.e(this.c, this.b, this.r, this.l, str2).a(this.g, this.h, this.d, i(), e(), this.u, str, z, this.v);
                if (a6 == null) {
                    com.mbridge.msdk.foundation.error.b a7 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Load param is null");
                    if (cVar != null) {
                        cVar.a(a7);
                    }
                    b("errorCode: 3507 errorMessage: data load failed, errorMsg is Load param is null", cVar);
                    return;
                }
                if (this.J != 0) {
                    a6.a("r_index", this.J + "");
                }
                if (!TextUtils.isEmpty(this.K)) {
                    a6.a("invalid_ad_ids", this.K);
                }
                this.N = System.currentTimeMillis();
                com.mbridge.msdk.reward.request.b bVar = new com.mbridge.msdk.reward.request.b(this.f9381a);
                b bVar2 = new b(cVar);
                bVar2.a(str);
                bVar2.setUnitId(this.b);
                bVar2.setPlacementId(this.c);
                bVar2.setAdType(this.r ? 287 : 94);
                bVar2.a(cVar);
                try {
                    z2 = com.mbridge.msdk.videocommon.download.j.a().a(this.r ? 287 : 94);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardMVVideoAdapter", "isRewardVideoRefactorForCampaignRequest exception " + e2.getMessage());
                    }
                    z2 = false;
                }
                boolean z3 = z2;
                try {
                    if (com.mbridge.msdk.foundation.same.net.utils.c.b().a(a6) == null) {
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("hst", k());
                        if (this.J != 0) {
                            eVar.a("r_index", this.J + "");
                        }
                        cVar.a("2000125", eVar);
                        com.mbridge.msdk.reward.report.metrics.a.a().a("2000125", cVar);
                    }
                } catch (Exception e3) {
                    if (MBridgeConstans.DEBUG) {
                        e3.printStackTrace();
                    }
                }
                if (z3) {
                    bVar.getCampaign(1, str, a6, bVar2, com.mbridge.msdk.foundation.same.c.a(this.f * 1000, 30000L));
                } else {
                    bVar.choiceV3OrV5BySetting(1, a6, bVar2, str, com.mbridge.msdk.foundation.same.c.a(this.f * 1000, 30000L));
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            b("Load exception", cVar);
            n();
        }
    }

    public void a(com.mbridge.msdk.videocommon.setting.c cVar) {
        try {
            this.l = cVar;
            if (cVar == null || cVar.o() * 1000 == com.mbridge.msdk.foundation.same.a.L) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.L = this.l.o() * 1000;
        } catch (Throwable th) {
            o0.b("RewardMVVideoAdapter", th.getMessage(), th);
        }
    }

    public boolean a(List<CampaignEx> list, boolean z, int i2, boolean z2) {
        return a(list, z, i2, false, z2);
    }

    public boolean a(List<CampaignEx> list, boolean z, int i2) {
        return a(list, z, i2, false, false);
    }

    public boolean a(List<CampaignEx> list, boolean z) {
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null && com.mbridge.msdk.videocommon.download.b.getInstance().a(94, this.b, list)) {
                if (z) {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            o0.c("RewardMVVideoAdapter", "Is not check big template download status");
                            return true;
                        } else if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            o0.c("RewardMVVideoAdapter", "Is not check big template ENDCARD download status");
                            return true;
                        }
                    }
                    ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                    if (resDownloadCheckManager.checkPreLoadState(this.b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                        o0.a("RewardVideoController", "大模板业务，开始检查大模板预加载情况，大模板预加载成功");
                        return true;
                    }
                } else if (campaignEx.isDynamicView()) {
                    return true;
                } else {
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        o0.c("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    } else if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager resDownloadCheckManager2 = ResDownloadCheckManager.getInstance();
                        if (resDownloadCheckManager2.checkPreLoadState(this.b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e())) {
                            o0.a("RewardVideoController", "非大模板业务，存在播放模板，播放模板预加载成功");
                            return true;
                        }
                    } else {
                        o0.a("RewardVideoController", "非大模板 没有 template");
                        return true;
                    }
                }
            }
        } else {
            o0.a("RewardVideoController", "数据为空");
        }
        return false;
    }

    public boolean a(List<CampaignEx> list, boolean z, int i2, boolean z2, boolean z3) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            cVar.h(campaignEx.getCurrentLocalRid());
            boolean a2 = com.mbridge.msdk.videocommon.download.b.getInstance().a(94, this.b, this.s, list.size(), z, i2, list, z2, eVar);
            eVar.a(DbParams.KEY_CHANNEL_EVENT_NAME, "is_ready_crwtpl_" + a2);
            if (a2) {
                if (z) {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            o0.c("RewardMVVideoAdapter", "Is not check big template download status");
                            return true;
                        } else if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            o0.c("RewardMVVideoAdapter", "Is not check big template of ENDCARD download status");
                            return true;
                        }
                    }
                    if (ResDownloadCheckManager.getInstance().checkPreLoadState(this.b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                        return true;
                    }
                    if (z3) {
                        eVar.a(DbParams.KEY_CHANNEL_EVENT_NAME, "is_ready_crwtpl_" + a2);
                        eVar.a("reason", "h5 big template checkPreLoadState error");
                        eVar.a("type", 5);
                        a(cVar, eVar, list);
                    }
                } else if (campaignEx.isDynamicView()) {
                    return true;
                } else {
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        o0.c("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    } else if (campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        return true;
                    } else {
                        String str = this.b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e();
                        if (z3) {
                            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str, true);
                        }
                        if (ResDownloadCheckManager.getInstance().checkPreLoadState(str)) {
                            return true;
                        }
                        if (z3) {
                            eVar.a(DbParams.KEY_CHANNEL_EVENT_NAME, "is_ready_crwtpl_" + a2);
                            eVar.a("reason", "h5 template checkPreLoadState error");
                            eVar.a("type", 5);
                            a(cVar, eVar, list);
                        }
                    }
                }
            }
        } else {
            eVar.a(DbParams.KEY_CHANNEL_EVENT_NAME, "is_ready_crwtpl_empty");
            eVar.a("reason", "campaign list is empty error");
            eVar.a("type", 8);
        }
        a(cVar, eVar, list);
        return false;
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            Message obtain = Message.obtain();
            obtain.what = 18;
            if (cVar != null) {
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            this.L.sendMessage(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            if (TextUtils.isEmpty(str)) {
                str = "load fail exception";
            }
            Message obtain = Message.obtain();
            obtain.what = 4;
            obtain.obj = str;
            if (cVar != null) {
                cVar.b(true);
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            if (str.contains("exception")) {
                this.L.sendMessageAtFrontOfQueue(obtain);
            } else {
                this.L.sendMessage(obtain);
            }
        }
    }

    public void a(com.mbridge.msdk.video.bt.module.orglistener.h hVar, String str, String str2, int i2, String str3, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            this.i = hVar;
            if (this.f9381a != null && !y0.a(this.b)) {
                Intent intent = new Intent(this.f9381a, MBRewardVideoActivity.class);
                intent.putExtra(MBRewardVideoActivity.INTENT_UNITID, this.b);
                intent.putExtra(MBridgeConstans.PLACEMENT_ID, this.c);
                intent.putExtra(MBRewardVideoActivity.INTENT_REWARD, str);
                intent.putExtra(MBRewardVideoActivity.INTENT_MUTE, i2);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISIV, this.r);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBID, this.s);
                intent.putExtra(MBRewardVideoActivity.INTENT_EXTRADATA, str3);
                CopyOnWriteArrayList<CampaignEx> b2 = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.b);
                boolean z = false;
                if (b2 != null && b2.size() > 0) {
                    CampaignEx campaignEx = b2.get(0);
                    if (b2.size() == 1 && !com.mbridge.msdk.foundation.same.c.a(this.f9381a, campaignEx) && campaignEx.getFilterAdsShowCallState() == 1) {
                        com.mbridge.msdk.videocommon.cache.a.a().b(this.b, campaignEx);
                        com.mbridge.msdk.video.bt.module.orglistener.h hVar2 = this.i;
                        if (hVar2 != null) {
                            hVar2.a(cVar, "show_campaign_filtered");
                            return;
                        }
                    }
                    if (campaignEx != null) {
                        this.H = campaignEx.getRequestId();
                    }
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                        z = true;
                    }
                    a();
                } else {
                    com.mbridge.msdk.video.bt.module.orglistener.h hVar3 = this.i;
                    if (hVar3 != null) {
                        hVar3.a(cVar, "load failed");
                        return;
                    }
                }
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBIG_OFFER, z);
                if (this.r) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_MODETYPE, this.v);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUETYPE, this.w);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUE, this.x);
                }
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_USERID, str2);
                }
                RewardUnitCacheManager.getInstance().add(this.c, this.b, this.l);
                if (com.mbridge.msdk.foundation.controller.c.m() != null && com.mbridge.msdk.foundation.controller.c.m().f() != null) {
                    ((Activity) com.mbridge.msdk.foundation.controller.c.m().f()).startActivity(intent);
                    return;
                }
                intent.addFlags(268435456);
                this.f9381a.startActivity(intent);
                return;
            }
            com.mbridge.msdk.video.bt.module.orglistener.h hVar4 = this.i;
            if (hVar4 != null) {
                hVar4.a(cVar, "context or unitid is null");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.mbridge.msdk.video.bt.module.orglistener.h hVar5 = this.i;
            if (hVar5 != null) {
                hVar5.a(cVar, "show failed, exception is " + e2.getMessage());
            }
        }
    }

    private void b() {
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            try {
                com.mbridge.msdk.setting.g d2 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d2 == null) {
                    d2 = com.mbridge.msdk.setting.h.b().a();
                }
                com.mbridge.msdk.videocommon.cache.a.a().a(d2.a0() * 1000, this.b);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x0226, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG == false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0235, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG == false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0237, code lost:
        com.mbridge.msdk.foundation.tools.o0.b("RewardMVVideoAdapter", r15.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01bb, code lost:
        if (com.mbridge.msdk.foundation.tools.y0.a(r15.getVideoUrlEncode()) != false) goto L118;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mbridge.msdk.reward.adapter.d b(com.mbridge.msdk.foundation.entity.CampaignUnit r15) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.b(com.mbridge.msdk.foundation.entity.CampaignUnit):com.mbridge.msdk.reward.adapter.d");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0079 A[Catch: Exception -> 0x0043, TryCatch #0 {Exception -> 0x0043, blocks: (B:10:0x0028, B:12:0x002e, B:27:0x0073, B:29:0x0079, B:31:0x0081, B:15:0x0045, B:17:0x004b, B:18:0x004f, B:20:0x0055, B:22:0x005d, B:24:0x0067), top: B:35:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r0 = r0.d()
            com.mbridge.msdk.foundation.db.b r0 = com.mbridge.msdk.foundation.db.b.a(r0)
            java.lang.String r1 = r4.b
            java.lang.String r2 = r4.H
            java.util.List r0 = r0.a(r1, r2)
            if (r0 == 0) goto La8
            int r1 = r0.size()
            java.lang.String r2 = r4.b
            java.lang.String r2 = com.mbridge.msdk.foundation.same.buffer.b.d(r2)
            if (r1 != 0) goto L24
            goto La8
        L24:
            r3 = 1
            if (r1 != r3) goto L45
            r1 = 0
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Exception -> L43
            if (r3 == 0) goto L70
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Exception -> L43
            com.mbridge.msdk.foundation.entity.d r3 = (com.mbridge.msdk.foundation.entity.d) r3     // Catch: java.lang.Exception -> L43
            java.lang.String r3 = r3.d()     // Catch: java.lang.Exception -> L43
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L43
            com.mbridge.msdk.foundation.entity.d r0 = (com.mbridge.msdk.foundation.entity.d) r0     // Catch: java.lang.Exception -> L43
            java.lang.String r0 = r0.b()     // Catch: java.lang.Exception -> L43
            goto L73
        L43:
            r0 = move-exception
            goto L9f
        L45:
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L43
            if (r1 != 0) goto L70
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L43
        L4f:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L43
            if (r1 == 0) goto L70
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L43
            com.mbridge.msdk.foundation.entity.d r1 = (com.mbridge.msdk.foundation.entity.d) r1     // Catch: java.lang.Exception -> L43
            if (r1 == 0) goto L4f
            java.lang.String r3 = r1.a()     // Catch: java.lang.Exception -> L43
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Exception -> L43
            if (r3 == 0) goto L4f
            java.lang.String r3 = r1.d()     // Catch: java.lang.Exception -> L43
            java.lang.String r0 = r1.b()     // Catch: java.lang.Exception -> L43
            goto L73
        L70:
            java.lang.String r0 = ""
            r3 = r0
        L73:
            boolean r1 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L43
            if (r1 != 0) goto La8
            java.lang.String r1 = r4.H     // Catch: java.lang.Exception -> L43
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Exception -> L43
            if (r1 == 0) goto La8
            com.mbridge.msdk.foundation.controller.c r1 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L43
            android.content.Context r1 = r1.d()     // Catch: java.lang.Exception -> L43
            com.mbridge.msdk.foundation.db.b r1 = com.mbridge.msdk.foundation.db.b.a(r1)     // Catch: java.lang.Exception -> L43
            java.lang.String r3 = r4.b     // Catch: java.lang.Exception -> L43
            r1.b(r2, r3)     // Catch: java.lang.Exception -> L43
            java.lang.String r1 = r4.b     // Catch: java.lang.Exception -> L43
            java.lang.String r2 = r4.H     // Catch: java.lang.Exception -> L43
            com.mbridge.msdk.foundation.same.buffer.b.a(r1, r2, r0)     // Catch: java.lang.Exception -> L43
            java.lang.String r0 = r4.b     // Catch: java.lang.Exception -> L43
            com.mbridge.msdk.foundation.same.buffer.b.e(r0)     // Catch: java.lang.Exception -> L43
            return
        L9f:
            java.lang.String r0 = r0.getMessage()
            java.lang.String r1 = "RewardMVVideoAdapter"
            com.mbridge.msdk.foundation.tools.o0.a(r1, r0)
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a():void");
    }

    public void a(int i2, int i3, boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        a(i2, i3, z, "", this.A, cVar);
    }

    public void a(int i2, int i3, boolean z, String str, boolean z2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        CampaignEx campaignEx;
        this.e = i2;
        this.f = i3;
        this.g = z;
        this.C = str;
        this.A = z2;
        boolean z3 = false;
        this.T = false;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.z;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0 && (campaignEx = this.z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
            this.z.clear();
        }
        List<CampaignEx> list = this.V;
        if (list != null) {
            list.clear();
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.W;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
        this.O = false;
        this.P = false;
        synchronized (this.o) {
            try {
                if (this.Q) {
                    this.Q = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.S = false;
        this.R = false;
        try {
            z3 = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(this.f9381a);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardMVVideoAdapter", e2.getMessage());
            }
        }
        if (!z3) {
            com.mbridge.msdk.foundation.error.b a2 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is WebView is not available");
            if (cVar != null) {
                cVar.a(a2);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is WebView is not available", cVar);
        } else if (this.f9381a == null) {
            com.mbridge.msdk.foundation.error.b a3 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null");
            if (cVar != null) {
                cVar.a(a3);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null", cVar);
        } else if (y0.a(this.b)) {
            com.mbridge.msdk.foundation.error.b a4 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null");
            if (cVar != null) {
                cVar.a(a4);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null", cVar);
        } else if (this.l == null) {
            com.mbridge.msdk.foundation.error.b a5 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null");
            if (cVar != null) {
                cVar.a(a5);
            }
            b("RewardUnitSetting is null", cVar);
        } else {
            d();
            c();
            o0.c("RewardMVVideoAdapter", "load 开始清除过期数据");
            b();
            a(str, z2, cVar);
        }
    }

    private void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    this.d += list.size();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.l;
        if (cVar == null || this.d > cVar.r()) {
            this.d = 0;
        }
        if (y0.b(this.b)) {
            com.mbridge.msdk.reward.controller.a.a(this.b, this.d);
        }
    }

    private boolean b(CampaignEx campaignEx) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0062 A[Catch: Exception -> 0x0027, TRY_ENTER, TryCatch #0 {Exception -> 0x0027, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x0021, B:18:0x002f, B:20:0x004d, B:22:0x0055, B:24:0x0059, B:27:0x0062, B:29:0x007b, B:28:0x0070, B:30:0x0091, B:17:0x002a), top: B:36:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x0021, B:18:0x002f, B:20:0x004d, B:22:0x0055, B:24:0x0059, B:27:0x0062, B:29:0x007b, B:28:0x0070, B:30:0x0091, B:17:0x002a), top: B:36:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c r6, int r7) {
        /*
            r5 = this;
            java.lang.String r0 = "2000126"
            if (r6 == 0) goto Lb6
            boolean r1 = r6.A()     // Catch: java.lang.Exception -> L27
            if (r1 != 0) goto Lb6
            com.mbridge.msdk.foundation.same.report.metrics.e r1 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Exception -> L27
            r1.<init>()     // Catch: java.lang.Exception -> L27
            r2 = 3
            java.lang.String r3 = "result"
            if (r7 == r2) goto L2a
            r2 = 880023(0xd6d97, float:1.233175E-39)
            if (r7 == r2) goto L2a
            r2 = 880041(0xd6da9, float:1.2332E-39)
            if (r7 == r2) goto L2a
            switch(r7) {
                case 10: goto L2a;
                case 11: goto L2a;
                case 12: goto L2a;
                default: goto L21;
            }
        L21:
            java.lang.String r7 = "1"
            r1.a(r3, r7)     // Catch: java.lang.Exception -> L27
            goto L2f
        L27:
            r6 = move-exception
            goto Laf
        L2a:
            java.lang.String r7 = "2"
            r1.a(r3, r7)     // Catch: java.lang.Exception -> L27
        L2f:
            java.lang.String r7 = "timeout"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L27
            r2.<init>()     // Catch: java.lang.Exception -> L27
            int r3 = r5.f     // Catch: java.lang.Exception -> L27
            r2.append(r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r3 = ""
            r2.append(r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L27
            r1.a(r7, r2)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.error.b r7 = r6.p()     // Catch: java.lang.Exception -> L27
            if (r7 == 0) goto L91
            java.lang.String r2 = "campaign_request_error"
            java.lang.Object r2 = r7.a(r2)     // Catch: java.lang.Exception -> L27
            if (r2 == 0) goto L91
            boolean r3 = r2 instanceof com.mbridge.msdk.foundation.same.net.exception.a     // Catch: java.lang.Exception -> L27
            if (r3 == 0) goto L91
            r3 = r2
            com.mbridge.msdk.foundation.same.net.exception.a r3 = (com.mbridge.msdk.foundation.same.net.exception.a) r3     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.same.net.toolbox.a r3 = r3.c     // Catch: java.lang.Exception -> L27
            java.lang.String r4 = "code"
            if (r3 == 0) goto L70
            com.mbridge.msdk.foundation.same.net.exception.a r2 = (com.mbridge.msdk.foundation.same.net.exception.a) r2     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.same.net.toolbox.a r2 = r2.c     // Catch: java.lang.Exception -> L27
            int r2 = r2.d     // Catch: java.lang.Exception -> L27
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L27
            r1.a(r4, r2)     // Catch: java.lang.Exception -> L27
            goto L7b
        L70:
            int r2 = r7.b()     // Catch: java.lang.Exception -> L27
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L27
            r1.a(r4, r2)     // Catch: java.lang.Exception -> L27
        L7b:
            java.lang.String r2 = "reason"
            java.lang.String r3 = r7.g()     // Catch: java.lang.Exception -> L27
            r1.a(r2, r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r2 = "err_desc"
            java.lang.String r7 = r7.d()     // Catch: java.lang.Exception -> L27
            r1.a(r2, r7)     // Catch: java.lang.Exception -> L27
            r7 = 0
            r6.a(r7)     // Catch: java.lang.Exception -> L27
        L91:
            java.lang.String r7 = "hst"
            java.lang.String r2 = r5.k()     // Catch: java.lang.Exception -> L27
            r1.a(r7, r2)     // Catch: java.lang.Exception -> L27
            java.lang.String r7 = "126_exclude"
            r2 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L27
            r1.a(r7, r2)     // Catch: java.lang.Exception -> L27
            r6.a(r0, r1)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.reward.report.metrics.a r7 = com.mbridge.msdk.reward.report.metrics.a.a()     // Catch: java.lang.Exception -> L27
            r7.a(r0, r6)     // Catch: java.lang.Exception -> L27
            return
        Laf:
            boolean r7 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r7 == 0) goto Lb6
            r6.printStackTrace()
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(com.mbridge.msdk.foundation.same.report.metrics.c, int):void");
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            Message obtain = Message.obtain();
            obtain.what = 3;
            if (cVar != null) {
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            this.L.sendMessage(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            if (TextUtils.isEmpty(str)) {
                str = "load fail exception";
            }
            Message obtain = Message.obtain();
            obtain.what = 4;
            obtain.obj = str;
            obtain.arg1 = i2;
            if (cVar != null) {
                cVar.b(true);
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            if (str.contains("exception")) {
                this.L.sendMessageAtFrontOfQueue(obtain);
            } else {
                this.L.sendMessage(obtain);
            }
        }
    }

    private void a(j jVar, CampaignEx campaignEx) {
        if (jVar == null || jVar.a(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
        gVar.a(campaignEx.getId());
        gVar.b(campaignEx.getFca());
        gVar.c(campaignEx.getFcb());
        gVar.a(0);
        gVar.d(0);
        gVar.a(System.currentTimeMillis());
        jVar.b(gVar);
    }

    private void a(String str, String str2, List<CampaignEx> list) {
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            com.mbridge.msdk.videocommon.cache.a.a().a(str, str2, list);
        }
    }

    public void a(com.mbridge.msdk.reward.adapter.a aVar) {
        this.j = aVar;
    }

    public void a(a.j jVar) {
        this.k = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.reward.adapter.d a(CampaignUnit campaignUnit) {
        boolean z;
        this.y = campaignUnit;
        com.mbridge.msdk.reward.adapter.d b2 = b(campaignUnit);
        new com.mbridge.msdk.reward.candidate.a(this.b, this.r).a(b2.b(), this.C, this, this.b);
        CopyOnWriteArrayList<CampaignEx> b3 = b2.b();
        if (b2.e()) {
            if (b2.d() == 0) {
                b3.clear();
            } else if (b2.a()) {
                b(campaignUnit.getMetricsData());
            }
            if (b2.c() == 0) {
                z = false;
                a(b3, true, false, z);
                return b2;
            }
        }
        z = true;
        a(b3, true, false, z);
        return b2;
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, boolean z, boolean z2, boolean z3) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        try {
            if (z2) {
                this.V = copyOnWriteArrayList;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
                this.W = copyOnWriteArrayList2;
                cVar = a((List<CampaignEx>) copyOnWriteArrayList2);
            } else {
                cVar = this.y.getMetricsData();
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardMVVideoAdapter", e2.getMessage());
            }
            cVar = null;
        }
        a(this.y, copyOnWriteArrayList);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            o0.c("RewardMVVideoAdapter", "onload load success size:" + copyOnWriteArrayList.size());
            if (z) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (z2) {
                    eVar.a("cache", 1);
                } else {
                    eVar.a("cache", 2);
                }
                if (cVar != null) {
                    cVar.a("2000127", eVar);
                    cVar.a("2000048", eVar);
                }
                a(cVar);
            }
            List<CampaignEx> b2 = com.mbridge.msdk.videocommon.cache.a.a().b(this.b, 1, this.s);
            if (b2 != null && b2.size() > 0 && cVar != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                CampaignEx campaignEx = copyOnWriteArrayList.get(0);
                eVar2.a("cid", campaignEx.getId());
                eVar2.a("price", "");
                eVar2.a("bid_tk", this.C);
                eVar2.a("lrid", campaignEx.getLocalRequestId());
                CampaignEx campaignEx2 = b2.get(0);
                eVar2.a("cid_old", com.mbridge.msdk.foundation.same.c.a(b2));
                eVar2.a("price_old", "");
                eVar2.a("bid_tk_old", campaignEx2.getBidToken());
                eVar2.a("lrid_old", campaignEx2.getLocalRequestId());
                cVar.a("m_load_overwrite", eVar2);
                com.mbridge.msdk.reward.report.metrics.a.a().a("m_load_overwrite", cVar);
            }
            if (z3) {
                a(copyOnWriteArrayList);
                return;
            }
            this.U = "campaign filtered";
            a(880021, "campaign filtered", cVar);
            return;
        }
        o0.c("RewardMVVideoAdapter", "onload load fail, callback campaign have not video");
        if (TextUtils.isEmpty(this.U)) {
            this.U = "APP ALREADY INSTALLED";
        }
        a(this.U.contains("INSTALL") ? 880021 : 880003, this.U, cVar);
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        CampaignUnit campaignUnit = this.y;
        if (campaignUnit != null) {
            a(campaignUnit.getSessionId());
        }
        b(copyOnWriteArrayList);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            o0.c("RewardMVVideoAdapter", "#######onload 把广告存在本地 size:" + copyOnWriteArrayList.size());
            a(this.c, this.b, copyOnWriteArrayList);
        }
        this.z = copyOnWriteArrayList;
        a(copyOnWriteArrayList.get(0));
    }

    private void a(CampaignEx campaignEx) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>(this.z);
        boolean isEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z = !isEmpty;
        int nscpt = campaignEx.getNscpt();
        this.O = false;
        this.P = false;
        synchronized (this.o) {
            try {
                if (this.Q) {
                    this.Q = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.S = false;
        this.R = false;
        if (this.s) {
            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getBidToken(), campaignEx.getCampaignUnitId(), campaignEx.getEncryptPrice());
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f9381a, z, nscpt, this.s, this.r ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, this.c, this.b, campaignEx.getRequestId(), copyOnWriteArrayList, new C0139c(campaignEx, z, copyOnWriteArrayList, nscpt), new d(campaignEx, z, copyOnWriteArrayList, nscpt));
        if (isEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f9381a, campaignEx, this.c, this.b, campaignEx.getRequestId(), new e(campaignEx, copyOnWriteArrayList, z, nscpt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list, List<CampaignEx> list2, boolean z) {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, list, list2, z);
        if (list2 != null && list2.size() > 0) {
            for (CampaignEx campaignEx : list2) {
                if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    com.mbridge.msdk.videocommon.a.e(str + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                }
            }
        }
        if (z) {
            a(str, list, list2);
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            CampaignEx campaignEx2 = list.get(0);
            com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(str, this.r);
            if (campaignEx2 == null || !TextUtils.isEmpty(campaignEx2.getNLRid())) {
                return;
            }
            aVar.a(campaignEx2.getLocalRequestId(), campaignEx2.getRequestId(), 1, campaignEx2.getEcppv());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0035, B:16:0x003b, B:17:0x0050, B:19:0x0056, B:21:0x005f, B:23:0x0065, B:24:0x006c, B:26:0x0072, B:28:0x007a, B:30:0x009c, B:32:0x00a2, B:33:0x00a6, B:35:0x00ac, B:37:0x00b4, B:38:0x00c0), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0035, B:16:0x003b, B:17:0x0050, B:19:0x0056, B:21:0x005f, B:23:0x0065, B:24:0x006c, B:26:0x0072, B:28:0x007a, B:30:0x009c, B:32:0x00a2, B:33:0x00a6, B:35:0x00ac, B:37:0x00b4, B:38:0x00c0), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0035, B:16:0x003b, B:17:0x0050, B:19:0x0056, B:21:0x005f, B:23:0x0065, B:24:0x006c, B:26:0x0072, B:28:0x007a, B:30:0x009c, B:32:0x00a2, B:33:0x00a6, B:35:0x00ac, B:37:0x00b4, B:38:0x00c0), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0035, B:16:0x003b, B:17:0x0050, B:19:0x0056, B:21:0x005f, B:23:0x0065, B:24:0x006c, B:26:0x0072, B:28:0x007a, B:30:0x009c, B:32:0x00a2, B:33:0x00a6, B:35:0x00ac, B:37:0x00b4, B:38:0x00c0), top: B:44:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r12, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r13, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r14) {
        /*
            r11 = this;
            java.lang.String r0 = ""
            if (r13 == 0) goto L32
            int r1 = r13.size()     // Catch: java.lang.Exception -> L2e
            if (r1 <= 0) goto L32
            r1 = 0
            java.lang.Object r1 = r13.get(r1)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = (com.mbridge.msdk.foundation.entity.CampaignEx) r1     // Catch: java.lang.Exception -> L2e
            if (r1 == 0) goto L32
            java.lang.String r2 = r1.getRequestId()     // Catch: java.lang.Exception -> L2e
            int r3 = r1.getVcn()     // Catch: java.lang.Exception -> L2e
            java.lang.String r4 = r1.getBidToken()     // Catch: java.lang.Exception -> L2e
            java.lang.String r5 = r1.getNLRid()     // Catch: java.lang.Exception -> L2e
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L2e
            if (r5 == 0) goto L35
            java.lang.String r0 = r1.getLocalRequestId()     // Catch: java.lang.Exception -> L2e
            goto L35
        L2e:
            r0 = move-exception
            r12 = r0
            goto Ld3
        L32:
            r3 = 1
            r2 = r0
            r4 = r2
        L35:
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            if (r1 == 0) goto L50
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r1.c(r12, r0)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r1.b(r12)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r1.a(r12, r0)     // Catch: java.lang.Exception -> L2e
        L50:
            com.mbridge.msdk.videocommon.cache.a r0 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L5d
            com.mbridge.msdk.videocommon.cache.a r0 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r0.a(r12, r3)     // Catch: java.lang.Exception -> L2e
        L5d:
            if (r13 == 0) goto L9a
            int r0 = r13.size()     // Catch: java.lang.Exception -> L2e
            if (r0 <= 0) goto L9a
            com.mbridge.msdk.reward.controller.a.a(r2, r4)     // Catch: java.lang.Exception -> L2e
            java.util.Iterator r13 = r13.iterator()     // Catch: java.lang.Exception -> L2e
        L6c:
            boolean r0 = r13.hasNext()     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L9a
            java.lang.Object r0 = r13.next()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L6c
            java.lang.String r1 = r0.getCampaignUnitId()     // Catch: java.lang.Exception -> L2e
            java.lang.String r2 = r0.getRequestId()     // Catch: java.lang.Exception -> L2e
            java.lang.String r3 = r0.getId()     // Catch: java.lang.Exception -> L2e
            long r4 = r0.getPlct()     // Catch: java.lang.Exception -> L2e
            long r6 = r0.getPlctb()     // Catch: java.lang.Exception -> L2e
            long r8 = r0.getTimestamp()     // Catch: java.lang.Exception -> L2e
            java.lang.String r10 = r0.getLocalRequestId()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.same.buffer.b.a(r1, r2, r3, r4, r6, r8, r10)     // Catch: java.lang.Exception -> L2e
            goto L6c
        L9a:
            if (r14 == 0) goto Lc0
            int r13 = r14.size()     // Catch: java.lang.Exception -> L2e
            if (r13 <= 0) goto Lc0
            java.util.Iterator r13 = r14.iterator()     // Catch: java.lang.Exception -> L2e
        La6:
            boolean r14 = r13.hasNext()     // Catch: java.lang.Exception -> L2e
            if (r14 == 0) goto Lc0
            java.lang.Object r14 = r13.next()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.entity.CampaignEx r14 = (com.mbridge.msdk.foundation.entity.CampaignEx) r14     // Catch: java.lang.Exception -> L2e
            if (r14 == 0) goto La6
            java.lang.String r0 = r14.getCampaignUnitId()     // Catch: java.lang.Exception -> L2e
            java.lang.String r14 = r14.getRequestId()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.same.buffer.b.c(r0, r14)     // Catch: java.lang.Exception -> L2e
            goto La6
        Lc0:
            com.mbridge.msdk.foundation.same.buffer.b.e(r12)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.controller.c r12 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L2e
            android.content.Context r12 = r12.d()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.db.b r12 = com.mbridge.msdk.foundation.db.b.a(r12)     // Catch: java.lang.Exception -> L2e
            r12.a()     // Catch: java.lang.Exception -> L2e
            return
        Ld3:
            boolean r13 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r13 == 0) goto Lda
            r12.printStackTrace()
        Lda:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(java.lang.String, java.util.List, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list, boolean z, String str2) {
        if (!TextUtils.isEmpty(str) && list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getEcppv()) && !TextUtils.isEmpty(str2)) {
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, (CampaignEx) null, z, str2);
                return;
            } else {
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, list, z);
                return;
            }
        }
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, (CampaignEx) null, z, str2);
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f9381a, cVar, new f());
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    private void a(CampaignUnit campaignUnit, List<CampaignEx> list) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new g(campaignUnit));
    }

    private void a(String str) {
        if (y0.b(str)) {
            com.mbridge.msdk.reward.controller.a.c0 = str;
        }
    }

    public void a(int i2, int i3, int i4) {
        this.v = i2;
        this.w = i3;
        this.x = i4;
    }

    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.l != null && TextUtils.isEmpty(str)) {
            int q = this.l.q() * 1000;
            List<CampaignEx> list = this.X;
            if (list != null && list.size() > 0) {
                if (System.currentTimeMillis() - this.X.get(0).getTimestamp() < q) {
                    b("hit ltorwc", cVar);
                    return;
                }
            }
        }
        b(str, this.A, cVar);
    }

    public void a(String str, boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.same.threadpool.a.f().execute(new i(str, cVar));
        if (this.L != null) {
            h hVar = new h(str, cVar);
            this.D = hVar;
            this.L.postDelayed(hVar, 90000L);
            return;
        }
        b(str, z, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(Message message) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        if (message != null) {
            try {
                Bundle data = message.getData();
                if (data != null) {
                    return com.mbridge.msdk.foundation.same.report.metrics.d.b().a(data.getString("metrics_data_lrid"));
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
        return cVar;
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c a(List<CampaignEx> list) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        String str = "";
        if (list != null) {
            try {
                if (list.size() > 0) {
                    if (list.get(0) != null) {
                        str = list.get(0).getLocalRequestId();
                    }
                    if (com.mbridge.msdk.foundation.same.report.metrics.d.b().c().containsKey(str)) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(str);
                        if (cVar2 == null) {
                            try {
                                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            } catch (Exception e2) {
                                e = e2;
                                cVar = cVar2;
                                if (MBridgeConstans.DEBUG) {
                                    e.printStackTrace();
                                }
                                return cVar;
                            }
                        } else {
                            cVar = cVar2;
                        }
                    }
                    cVar.h(str);
                    cVar.b(list);
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("cache", 1);
        eVar.a(CampaignEx.JSON_KEY_HB, 1);
        eVar.a("auto_load", 2);
        cVar.a("2000127", eVar);
        cVar.a("2000048", eVar);
        cVar.a(this.r ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
        cVar.g("1");
        cVar.e("2");
        if (!TextUtils.isEmpty(str)) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar);
        }
        return cVar;
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar, List<CampaignEx> list) {
        if (cVar != null) {
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        cVar.b(list);
                        CampaignEx campaignEx = list.get(0);
                        if (campaignEx != null) {
                            cVar.h(campaignEx.getLocalRequestId());
                        }
                        cVar.b(list);
                    }
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            a(false, cVar, eVar);
        }
    }

    private void a(boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar, List<CampaignEx> list) {
        if (cVar == null) {
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                cVar.h(campaignEx.getLocalRequestId());
            }
            cVar.b(list);
        }
        a(z, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    private void a(boolean z, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.m(this.b);
        cVar.a(this.r ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
        eVar.a("result", Integer.valueOf(z ? 1 : 2));
        eVar.a("bid_tk", this.C);
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.s ? 1 : 0));
        cVar.a("m_offer_ready", eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a("m_offer_ready", cVar);
    }
}
