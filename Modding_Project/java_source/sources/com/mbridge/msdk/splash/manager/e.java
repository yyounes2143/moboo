package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.common.c;
import com.mbridge.msdk.splash.manager.g;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e {
    private static String A = "SplashLoadManager";

    /* renamed from: a  reason: collision with root package name */
    private String f9472a;
    private String b;
    private long c;
    private long d;
    private com.mbridge.msdk.splash.middle.b e;
    private MBSplashView g;
    private l h;
    private boolean i;
    private int j;
    private int k;
    private int l;
    private String m;
    private int n;
    private boolean o;
    private volatile boolean p;
    private com.mbridge.msdk.videocommon.listener.a q;
    private H5DownLoadManager.ZipDownloadListener r;
    private String s;
    private int t;
    private int v;
    private List<CampaignEx> w;
    private String u = "";
    private String x = "";
    private Handler y = new c(Looper.getMainLooper());
    private Runnable z = new d();
    private Context f = com.mbridge.msdk.foundation.controller.c.m().d();

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            int i;
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        Object obj = message.obj;
                        if (obj instanceof CampaignEx) {
                            e eVar = e.this;
                            eVar.h((CampaignEx) obj, eVar.n);
                            return;
                        }
                        return;
                    }
                    return;
                }
                Object obj2 = message.obj;
                try {
                    if (obj2 instanceof Bundle) {
                        int i3 = ((Bundle) obj2).getInt("type");
                        String string = ((Bundle) obj2).getString(NotificationCompat.CATEGORY_MESSAGE);
                        CampaignEx campaignEx = (CampaignEx) ((Bundle) obj2).getSerializable("campaignex");
                        if (i3 == 1) {
                            i = 880004;
                        } else if (i3 == 2) {
                            i = 880006;
                        } else {
                            i = 880027;
                        }
                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i);
                        bVar.c(string);
                        e eVar2 = e.this;
                        eVar2.a(bVar, eVar2.m, e.this.n, campaignEx);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880024);
                    bVar2.a((Throwable) e);
                    e eVar3 = e.this;
                    eVar3.a(bVar2, eVar3.m, e.this.n, (CampaignEx) null);
                    return;
                }
            }
            Object obj3 = message.obj;
            int i4 = message.arg1;
            if (obj3 instanceof CampaignEx) {
                CampaignEx campaignEx2 = (CampaignEx) obj3;
                e.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx2.getAdZip()), campaignEx2, i4);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            e eVar = e.this;
            eVar.a(bVar, eVar.m, e.this.n, (CampaignEx) null);
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.splash.manager.e$e  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0159e extends com.mbridge.msdk.splash.request.b {
        final /* synthetic */ String e;
        final /* synthetic */ int f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0159e(int i, String str, int i2) {
            super(i);
            this.e = str;
            this.f = i2;
        }

        @Override // com.mbridge.msdk.splash.request.b
        public void a(CampaignUnit campaignUnit, int i) {
            CampaignEx campaignEx;
            try {
                e eVar = e.this;
                eVar.a(campaignUnit, i, eVar.f9472a, this.e);
                e.this.u = campaignUnit.getRequestId();
                e.this.w = campaignUnit.getAds();
            } catch (Exception e) {
                e.printStackTrace();
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) e);
                e eVar2 = e.this;
                String str = this.e;
                if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() != 0) {
                    campaignEx = campaignUnit.getAds().get(0);
                } else {
                    campaignEx = null;
                }
                eVar2.a(bVar, str, i, campaignEx);
                e.this.f();
            }
        }

        @Override // com.mbridge.msdk.splash.request.b
        public void b(int i, String str) {
            o0.b(e.A, str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.c(str);
            e.this.a(bVar, this.e, this.f, (CampaignEx) null);
            e.this.f();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9477a;

        public f(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f9477a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.splash.report.a.a(str, cVar, this.f9477a, e.this.f, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9478a;

        public g(CampaignEx campaignEx) {
            this.f9478a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(e.this.f)).a();
            w.a(e.this.f, this.f9478a);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class h implements com.mbridge.msdk.splash.view.nativeview.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9479a;
        final /* synthetic */ int b;

        public h(CampaignEx campaignEx, int i) {
            this.f9479a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.splash.view.nativeview.a
        public void a() {
            if (this.f9479a.isDynamicView() && e.this.g != null) {
                e.this.g.setImageReady(true);
                e.this.f(this.f9479a, this.b);
            }
            e.this.h(this.f9479a, this.b);
        }

        @Override // com.mbridge.msdk.splash.view.nativeview.a
        public void b() {
            if (this.f9479a.isDynamicView() && e.this.g != null) {
                e.this.g.setImageReady(false);
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
                e eVar = e.this;
                eVar.a(bVar, eVar.m, this.b, this.f9479a);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class i implements x.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9480a;

        public i(CampaignEx campaignEx) {
            this.f9480a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, String str2, String str3, String str4, boolean z) {
            if (z) {
                return;
            }
            e.this.a(this.f9480a, str, true, "");
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, DownloadError downloadError) {
            String str2 = "";
            if (downloadError != null) {
                try {
                    if (downloadError.getException() != null) {
                        str2 = downloadError.getException().getMessage();
                    }
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        e.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            e.this.a(this.f9480a, str, false, str2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class j implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9481a;
        final /* synthetic */ int b;

        public j(CampaignEx campaignEx, int i) {
            this.f9481a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880006);
            e eVar = e.this;
            eVar.a(bVar, eVar.m, this.b, this.f9481a);
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f9481a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt("type", 2);
            obtain.obj = bundle;
            e.this.y.sendMessage(obtain);
            e.this.a(this.f9481a, str2, false, str);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            String str3;
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = this.f9481a;
            obtain.arg1 = this.b;
            e.this.y.sendMessage(obtain);
            if (!z) {
                CampaignEx campaignEx = this.f9481a;
                if (campaignEx == null) {
                    str3 = "";
                } else {
                    str3 = campaignEx.getAdZip();
                }
                e.this.a(this.f9481a, str3, true, "");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class k implements com.mbridge.msdk.splash.inter.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9482a;
        final /* synthetic */ int b;

        public k(CampaignEx campaignEx, int i) {
            this.f9482a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.splash.inter.a
        public void a(View view) {
            if (e.this.g != null) {
                e.this.g.setDynamicView(true);
                e.this.g.setSplashNativeView(view);
                e.this.h(this.f9482a, this.b);
            }
        }

        @Override // com.mbridge.msdk.splash.inter.a
        public void onError(String str) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880034);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.m, this.b, this.f9482a);
        }
    }

    public e(String str, String str2, long j2) {
        this.b = str;
        this.f9472a = str2;
        this.d = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CampaignEx campaignEx, int i2) {
        if (com.mbridge.msdk.splash.manager.d.a(this.g, campaignEx) && !this.p) {
            b();
            if (this.o) {
                com.mbridge.msdk.splash.manager.d.a(campaignEx, this.f9472a);
            }
            this.p = true;
            com.mbridge.msdk.splash.middle.b bVar = this.e;
            if (bVar != null) {
                bVar.a(campaignEx, i2);
            }
        }
    }

    private void i(CampaignEx campaignEx, int i2) {
        MBSplashView mBSplashView = this.g;
        if (mBSplashView != null) {
            mBSplashView.setDynamicView(false);
        }
        if (campaignEx.isDynamicView()) {
            c(campaignEx, i2);
        } else {
            MBSplashView mBSplashView2 = this.g;
            if (mBSplashView2 != null) {
                mBSplashView2.setSplashWebView();
            }
        }
        if (com.mbridge.msdk.splash.manager.d.a(this.g, campaignEx)) {
            h(campaignEx, i2);
        } else {
            a(campaignEx, i2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements g.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9473a;
        final /* synthetic */ int b;

        public a(CampaignEx campaignEx, int i) {
            this.f9473a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void a() {
            if (this.f9473a.isHasMBTplMark()) {
                return;
            }
            e.this.g(this.f9473a, this.b);
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void onError(String str) {
            e.this.a(str, this.b, this.f9473a);
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void a(int i) {
            if (i == 1) {
                e.this.g(this.f9473a, this.b);
            } else {
                e.this.a("readyState 2", this.b, this.f9473a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.t = 0;
    }

    private void g() {
        try {
            int i2 = this.t + 1;
            this.t = i2;
            l lVar = this.h;
            if (lVar != null && i2 <= lVar.y()) {
                return;
            }
            this.t = 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String d() {
        return this.u;
    }

    public void e() {
        if (this.e != null) {
            this.e = null;
        }
        if (this.q != null) {
            this.q = null;
        }
        if (this.r != null) {
            this.r = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d2 A[Catch: Exception -> 0x011a, TRY_ENTER, TryCatch #3 {Exception -> 0x011a, blocks: (B:53:0x0116, B:54:0x0119, B:41:0x00d2, B:43:0x00d6, B:45:0x00dc, B:47:0x00e2, B:49:0x00e8, B:50:0x0108, B:33:0x00b3), top: B:59:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc A[Catch: Exception -> 0x011a, TryCatch #3 {Exception -> 0x011a, blocks: (B:53:0x0116, B:54:0x0119, B:41:0x00d2, B:43:0x00d6, B:45:0x00dc, B:47:0x00e2, B:49:0x00e8, B:50:0x0108, B:33:0x00b3), top: B:59:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(com.mbridge.msdk.foundation.entity.CampaignEx r11, int r12) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.splash.manager.e.d(com.mbridge.msdk.foundation.entity.CampaignEx, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(CampaignEx campaignEx, int i2) {
        if (campaignEx.isDynamicView()) {
            c.a aVar = new c.a();
            aVar.b(this.f9472a).a(this.b).a(this.i).a(campaignEx).c(this.j).f(this.v);
            try {
                if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
                    Uri parse = Uri.parse(campaignEx.getAdZip());
                    String queryParameter = parse.getQueryParameter("hdbtn");
                    String queryParameter2 = parse.getQueryParameter("alecfc");
                    String queryParameter3 = parse.getQueryParameter("hdinfo");
                    String queryParameter4 = parse.getQueryParameter("shake_show");
                    String queryParameter5 = parse.getQueryParameter("shake_strength");
                    String queryParameter6 = parse.getQueryParameter("shake_time");
                    String queryParameter7 = parse.getQueryParameter("n_logo");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        aVar.b(Integer.parseInt(queryParameter));
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        aVar.e(Integer.parseInt(queryParameter2));
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        aVar.a(Integer.parseInt(queryParameter3));
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        aVar.g(Integer.parseInt(queryParameter4));
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        aVar.h(Integer.parseInt(queryParameter5));
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        aVar.i(Integer.parseInt(queryParameter6));
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        aVar.d(Integer.parseInt(queryParameter7) == 0 ? 0 : 1);
                    }
                }
            } catch (Throwable th) {
                o0.b(A, th.getMessage());
            }
            com.mbridge.msdk.splash.manager.c.a().a(this.g, aVar.a(), new k(campaignEx, i2));
        }
    }

    public void b(int i2) {
        this.v = i2;
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.w);
    }

    private void b() {
        this.y.removeCallbacks(this.z);
    }

    private void c(CampaignEx campaignEx, int i2) {
        com.mbridge.msdk.splash.manager.d.a(this.g, campaignEx, new h(campaignEx, i2));
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9474a;

        public b(CampaignEx campaignEx) {
            this.f9474a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            e.this.g.setVideoReady(true);
            Message obtain = Message.obtain();
            obtain.obj = this.f9474a;
            obtain.what = 3;
            e.this.y.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            e.this.g.setVideoReady(false);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880004);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.m, e.this.n, this.f9474a);
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f9474a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt("type", 1);
            obtain.obj = bundle;
            obtain.what = 2;
            e.this.y.sendMessage(obtain);
        }
    }

    private void b(CampaignEx campaignEx, int i2) {
        this.q = new b(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f, this.f9472a, copyOnWriteArrayList, 297, this.q);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(297, this.f9472a, campaignEx.isBidCampaign())) {
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f9472a);
            return;
        }
        this.g.setVideoReady(true);
        h(campaignEx, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(CampaignEx campaignEx, int i2) {
        if (this.g.isH5Ready()) {
            return;
        }
        this.g.setH5Ready(true);
        h(campaignEx, i2);
    }

    private void e(CampaignEx campaignEx, int i2) {
        if (campaignEx.isDynamicView()) {
            x.a(5, "", campaignEx.getAdZip(), new i(campaignEx), campaignEx);
            return;
        }
        this.r = new j(campaignEx, i2);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(297);
        cVar.e(2);
        cVar.a(campaignEx);
        cVar.f(campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getAdZip(), this.r);
    }

    public void a(l lVar) {
        this.h = lVar;
    }

    public void a(MBSplashView mBSplashView) {
        this.g = mBSplashView;
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void a(int i2) {
        this.j = i2;
    }

    public void a(int i2, int i3) {
        this.l = i2;
        this.k = i3;
    }

    public void a(String str, int i2) {
        this.p = false;
        this.m = str;
        this.n = i2;
        CampaignEx a2 = com.mbridge.msdk.splash.manager.d.a(this.g, this.b, this.f9472a, str, this.i, this.j, false, false);
        long timestamp = a2 != null ? a2.getTimestamp() : 0L;
        if (this.h.t() == 1 && i2 != 1 && a2 != null) {
            i(a2, i2);
            return;
        }
        this.o = true;
        if (i2 == 1) {
            List<Integer> c2 = this.h.c();
            if (c2 != null && c2.size() > 0) {
                this.c = c2.get(0).intValue() * 1000;
            } else {
                this.c = 30000L;
            }
        } else {
            long j2 = this.d;
            if (j2 <= 0) {
                this.c = this.h.E();
            } else {
                this.c = j2;
            }
        }
        if (this.h != null && timestamp > 0 && TextUtils.isEmpty(str)) {
            if (System.currentTimeMillis() - timestamp > this.h.v() * 1000) {
                a(this.c);
                a(this.f, str, i2);
                return;
            }
            i(a2, i2);
            return;
        }
        a(this.c);
        a(this.f, str, i2);
    }

    private void a(long j2) {
        this.y.postDelayed(this.z, j2);
    }

    private void a(Context context, String str, int i2) {
        Exception exc;
        String str2;
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i2, (CampaignEx) null);
                return;
            }
            try {
                if (y0.a(this.f9472a)) {
                    a(new com.mbridge.msdk.foundation.error.b(880032), str, i2, (CampaignEx) null);
                    return;
                }
                MBridgeIds mBridgeIds = new MBridgeIds(this.b, this.f9472a);
                com.mbridge.msdk.splash.request.f fVar = new com.mbridge.msdk.splash.request.f();
                fVar.d(i2);
                fVar.c(this.t);
                fVar.a(this.s);
                fVar.b(this.l);
                fVar.a(this.k);
                com.mbridge.msdk.foundation.same.net.wrapper.e b2 = com.mbridge.msdk.splash.request.e.b(context, mBridgeIds, fVar);
                if (b2 == null) {
                    a(new com.mbridge.msdk.foundation.error.b(880001), str, i2, (CampaignEx) null);
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    b2.a(BidResponsed.KEY_TOKEN, str);
                }
                String d2 = t0.d(this.f9472a);
                if (!TextUtils.isEmpty(d2)) {
                    b2.a(com.mbridge.msdk.foundation.same.report.j.b, d2);
                }
                com.mbridge.msdk.splash.request.c cVar = new com.mbridge.msdk.splash.request.c(context);
                C0159e c0159e = new C0159e(i2, str, i2);
                c0159e.a(str);
                c0159e.setUnitId(this.f9472a);
                c0159e.setPlacementId(this.b);
                c0159e.setAdType(297);
                str2 = str;
                try {
                    cVar.choiceV3OrV5BySetting(1, b2, c0159e, str2, com.mbridge.msdk.foundation.same.c.a(this.c, 30000L));
                } catch (Exception e) {
                    e = e;
                    exc = e;
                    o0.b(A, exc.getMessage());
                    com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
                    bVar.a((Throwable) exc);
                    a(bVar, str2, i2, (CampaignEx) null);
                    f();
                }
            } catch (Exception e2) {
                e = e2;
                str2 = str;
            }
        } catch (Exception e3) {
            exc = e3;
            str2 = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit, int i2, String str, String str2) {
        com.mbridge.msdk.foundation.error.b bVar;
        List<CampaignEx> a2 = a(campaignUnit);
        if (a2 != null && a2.size() > 0) {
            g();
            CampaignEx campaignEx = a2.get(0);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
                campaignEx.setHasMBTplMark(false);
                campaignEx.setIsMraid(true);
            } else {
                campaignEx.setHasMBTplMark(true);
                campaignEx.setIsMraid(false);
            }
            i(campaignEx, i2);
            return;
        }
        if (this.x.contains("INSTALLED")) {
            bVar = new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
        } else {
            bVar = new com.mbridge.msdk.foundation.error.b(880003);
        }
        a(bVar, str2, i2, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f9472a);
        a(campaignEx);
        this.s = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (t0.c(campaignEx)) {
                campaignEx.setRtinsType(t0.c(this.f, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                t0.a(this.f9472a, campaignEx, com.mbridge.msdk.foundation.same.a.x);
                this.x = "APP ALREADY INSTALLED";
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f, cVar, new f(campaignEx, aVar));
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new g(campaignEx)).start();
    }

    public void a(com.mbridge.msdk.splash.middle.b bVar) {
        this.e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i2, CampaignEx campaignEx) {
        if (this.o) {
            this.o = false;
            a(bVar, i2, str, campaignEx);
            return;
        }
        a(bVar, i2, campaignEx);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i2, String str, CampaignEx campaignEx) {
        CampaignEx a2 = com.mbridge.msdk.splash.manager.d.a(this.g, this.b, this.f9472a, str, this.i, this.j, true, false);
        if (a2 != null) {
            i(a2, i2);
        } else {
            a(bVar, i2, campaignEx);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i2, CampaignEx campaignEx) {
        if (this.p) {
            return;
        }
        b();
        this.p = true;
        if (bVar != null) {
            bVar.a(campaignEx);
        }
        com.mbridge.msdk.splash.middle.b bVar2 = this.e;
        if (bVar2 != null) {
            bVar2.a(bVar, i2);
        }
    }

    private void a(CampaignEx campaignEx, int i2) {
        this.g.clearResState();
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            e(campaignEx, i2);
        }
        if (campaignEx.isDynamicView()) {
            return;
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            d(campaignEx, i2);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            b(campaignEx, i2);
        }
        if (TextUtils.isEmpty(campaignEx.getImageUrl())) {
            return;
        }
        c(campaignEx, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx, int i2) {
        g.d dVar = new g.d();
        dVar.c(this.f9472a);
        dVar.b(this.b);
        dVar.a(campaignEx);
        dVar.a(str);
        dVar.a(this.i);
        dVar.a(this.j);
        com.mbridge.msdk.splash.manager.g.a().a(this.g, dVar, new a(campaignEx, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.m, i2, campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, boolean z, String str2) {
        try {
            m mVar = new m();
            mVar.e(2);
            mVar.j("m_download_end");
            if (campaignEx != null) {
                mVar.b(campaignEx.isMraid() ? m.N : m.O);
                mVar.o(campaignEx.getRequestIdNotice());
            }
            mVar.b("url", str);
            mVar.b("scenes", "1");
            if (z) {
                mVar.d(1);
            } else {
                mVar.d(3);
                mVar.m(str2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, campaignEx);
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b(A, e.getMessage());
            }
        }
    }
}
