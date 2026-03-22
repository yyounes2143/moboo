package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.out.MBridgeIds;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {
    private static String z = "NativeAdvancedLoadManager";

    /* renamed from: a  reason: collision with root package name */
    private String f8725a;
    private String b;
    private long c;
    private com.mbridge.msdk.advanced.middle.b d;
    private MBNativeAdvancedView f;
    private com.mbridge.msdk.setting.l g;
    private List<CampaignEx> h;
    private CampaignEx i;
    private int j;
    private int k;
    private int l;
    private int m;
    private String n;
    private int o;
    private boolean p;
    private volatile boolean q;
    private com.mbridge.msdk.videocommon.listener.a r;
    private H5DownLoadManager.ZipDownloadListener s;
    private H5DownLoadManager.ZipDownloadListener t;
    private String u;
    private int v;
    private String w = "";
    private Handler x = new e(Looper.getMainLooper());
    private Runnable y = new f();
    private Context e = com.mbridge.msdk.foundation.controller.c.m().d();

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8726a;
        final /* synthetic */ int b;

        public a(CampaignEx campaignEx, int i) {
            this.f8726a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            String str3 = b.z;
            o0.a(str3, "zip 下载失败： " + str2 + " " + str);
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f8726a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt("type", 3);
            obtain.obj = bundle;
            b.this.x.sendMessage(obtain);
            b.this.a(this.f8726a, str2, false, str);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            String str3 = b.z;
            o0.a(str3, "zip 下载成功： " + str);
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = this.f8726a;
            obtain.arg1 = this.b;
            b.this.x.sendMessage(obtain);
            if (!z) {
                b.this.a(this.f8726a, str, true, "");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedWebview f8728a;
        final /* synthetic */ String b;

        public c(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f8728a = mBNativeAdvancedWebview;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f8728a;
            String str = this.b;
            mBNativeAdvancedWebview.loadUrl(str);
            JSHookAop.loadUrl(mBNativeAdvancedWebview, str);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            int i;
            Object obj;
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5 && (obj = message.obj) != null && (obj instanceof CampaignEx)) {
                                if (b.this.f != null) {
                                    b.this.f.setVideoReady(true);
                                }
                                b bVar = b.this;
                                bVar.i((CampaignEx) obj, bVar.o);
                                return;
                            }
                            return;
                        }
                        Object obj2 = message.obj;
                        if (obj2 != null && (obj2 instanceof CampaignEx)) {
                            if (b.this.f != null) {
                                b.this.f.setEndCardReady(true);
                            }
                            b bVar2 = b.this;
                            bVar2.i((CampaignEx) obj2, bVar2.o);
                            return;
                        }
                        return;
                    }
                    Object obj3 = message.obj;
                    if (obj3 != null && (obj3 instanceof CampaignEx)) {
                        b bVar3 = b.this;
                        bVar3.i((CampaignEx) obj3, bVar3.o);
                        return;
                    }
                    return;
                }
                Object obj4 = message.obj;
                try {
                    if (obj4 instanceof Bundle) {
                        int i3 = ((Bundle) obj4).getInt("type");
                        if (i3 == 1) {
                            i = 880004;
                        } else if (i3 == 2) {
                            i = 880007;
                        } else if (i3 == 3) {
                            i = 880006;
                        } else {
                            i = 880024;
                        }
                        com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(i);
                        String string = ((Bundle) obj4).getString(NotificationCompat.CATEGORY_MESSAGE);
                        CampaignEx campaignEx = (CampaignEx) ((Bundle) obj4).getSerializable("campaignex");
                        bVar4.c(string);
                        bVar4.a(campaignEx);
                        b bVar5 = b.this;
                        bVar5.a(bVar4, bVar5.n, b.this.o, campaignEx);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    com.mbridge.msdk.foundation.error.b bVar6 = new com.mbridge.msdk.foundation.error.b(880000);
                    bVar6.a((Throwable) e);
                    b bVar7 = b.this;
                    bVar7.a(bVar6, bVar7.n, b.this.o, (CampaignEx) null);
                    return;
                }
            }
            Object obj5 = message.obj;
            int i4 = message.arg1;
            if (obj5 != null && (obj5 instanceof CampaignEx)) {
                CampaignEx campaignEx2 = (CampaignEx) obj5;
                b.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx2.getAdZip()), campaignEx2, i4);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            b bVar2 = b.this;
            bVar2.a(bVar, bVar2.n, b.this.o, (CampaignEx) null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class g extends com.mbridge.msdk.advanced.request.b {
        final /* synthetic */ String e;
        final /* synthetic */ int f;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Exception f8732a;
            final /* synthetic */ int b;
            final /* synthetic */ CampaignUnit c;

            public a(Exception exc, int i, CampaignUnit campaignUnit) {
                this.f8732a = exc;
                this.b = i;
                this.c = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignEx campaignEx;
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) this.f8732a);
                g gVar = g.this;
                b bVar2 = b.this;
                String str = gVar.e;
                int i = this.b;
                CampaignUnit campaignUnit = this.c;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.c.getAds().size() != 0) {
                    campaignEx = this.c.getAds().get(0);
                } else {
                    campaignEx = null;
                }
                bVar2.a(bVar, str, i, campaignEx);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.advanced.manager.b$g$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0084b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f8733a;

            public RunnableC0084b(String str) {
                this.f8733a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
                bVar.c(this.f8733a);
                g gVar = g.this;
                b.this.a(bVar, gVar.e, gVar.f, (CampaignEx) null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(int i, String str, int i2) {
            super(i);
            this.e = str;
            this.f = i2;
        }

        @Override // com.mbridge.msdk.advanced.request.b
        public void a(CampaignUnit campaignUnit, int i) {
            try {
                b bVar = b.this;
                bVar.a(campaignUnit, i, bVar.f8725a, this.e);
                b.this.w = campaignUnit.getRequestId();
                b.this.h = campaignUnit.getAds();
            } catch (Exception e) {
                o0.b(b.z, e.getMessage());
                o0.c(b.z, "onLoadCompaginSuccess 数据刚请求失败");
                if (b.this.x != null) {
                    b.this.x.post(new a(e, i, campaignUnit));
                }
                b.this.f();
            }
        }

        @Override // com.mbridge.msdk.advanced.request.b
        public void b(int i, String str) {
            o0.b(b.z, str);
            String str2 = b.z;
            o0.c(str2, "onLoadCompaginFailed load failed errorCode:" + i + " msg:" + str);
            if (b.this.x != null) {
                b.this.x.post(new RunnableC0084b(str));
            }
            b.this.f();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class h extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8734a;

        public h(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f8734a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.advanced.report.a.a(str, cVar, this.f8734a, b.this.e, null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8735a;

        public i(CampaignEx campaignEx) {
            this.f8735a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(b.this.e)).a();
            w.a(b.this.e, this.f8735a);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class j implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8736a;
        final /* synthetic */ int b;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f8736a, jVar.b);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.advanced.manager.b$j$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0085b implements Runnable {
            public RunnableC0085b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f8736a, jVar.b);
            }
        }

        public j(CampaignEx campaignEx, int i) {
            this.f8736a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            String str3 = b.z;
            o0.a(str3, "gifurl 下载失败： " + str2);
            if (b.this.x != null) {
                b.this.x.post(new RunnableC0085b());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            String str2 = b.z;
            o0.a(str2, "giturl 下载成功： " + str);
            if (b.this.x != null) {
                b.this.x.post(new a());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class k implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8739a;
        final /* synthetic */ int b;

        public k(CampaignEx campaignEx, int i) {
            this.f8739a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            String str3 = b.z;
            o0.a(str3, "endcard 下载失败： " + str2);
            if (b.this.f != null) {
                b.this.f.setEndCardReady(false);
            }
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f8739a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt("type", 2);
            obtain.obj = bundle;
            b.this.x.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            String str3 = b.z;
            o0.a(str3, "endcard 下载成功： " + str);
            if (b.this.x != null) {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = this.f8739a;
                obtain.arg1 = this.b;
                b.this.x.sendMessage(obtain);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class l implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8740a;
        final /* synthetic */ int b;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f8740a, lVar.b);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.advanced.manager.b$l$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0086b implements Runnable {
            public RunnableC0086b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f8740a, lVar.b);
            }
        }

        public l(CampaignEx campaignEx, int i) {
            this.f8740a = campaignEx;
            this.b = i;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            String str3 = b.z;
            o0.a(str3, "image 下载失败： " + str2);
            if (b.this.x != null) {
                b.this.x.post(new RunnableC0086b());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            String str2 = b.z;
            o0.a(str2, "image 下载成功： " + str);
            if (b.this.x != null) {
                b.this.x.post(new a());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f8743a;
        final /* synthetic */ CampaignEx b;
        final /* synthetic */ int c;

        public m(File file, CampaignEx campaignEx, int i) {
            this.f8743a = file;
            this.b = campaignEx;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            bVar.a("file:////" + this.f8743a.getAbsolutePath(), this.b, this.c);
        }
    }

    public b(String str, String str2, long j2) {
        this.b = str;
        this.f8725a = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(CampaignEx campaignEx, int i2) {
        if (com.mbridge.msdk.advanced.manager.d.a(this.f, campaignEx, this.b, this.f8725a) && !this.q) {
            b();
            com.mbridge.msdk.advanced.manager.d.a(campaignEx, this.f8725a);
            this.q = true;
            com.mbridge.msdk.advanced.middle.b bVar = this.d;
            if (bVar != null) {
                bVar.a(campaignEx, i2);
            }
        }
    }

    private void j(CampaignEx campaignEx, int i2) {
        this.i = campaignEx;
        if (com.mbridge.msdk.advanced.manager.d.a(this.f, campaignEx, this.b, this.f8725a)) {
            i(campaignEx, i2);
        } else {
            e(campaignEx, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.v = 0;
    }

    private void g() {
        try {
            int i2 = this.v + 1;
            this.v = i2;
            com.mbridge.msdk.setting.l lVar = this.g;
            if (lVar != null) {
                if (i2 > lVar.y()) {
                }
                String str = z;
                o0.c(str, "onload 算出 下次的offset是:" + this.v);
            }
            o0.c(z, "onload 重置offset为0");
            this.v = 0;
            String str2 = z;
            o0.c(str2, "onload 算出 下次的offset是:" + this.v);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CampaignEx campaignEx, int i2) {
        if (this.f.isH5Ready()) {
            i(campaignEx, i2);
            com.mbridge.msdk.advanced.report.a.a(1, "", this.f8725a, campaignEx);
        }
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.h);
    }

    public String d() {
        return this.w;
    }

    public void e() {
        if (this.d != null) {
            this.d = null;
        }
        if (this.r != null) {
            this.r = null;
        }
        if (this.s != null) {
            this.s = null;
        }
    }

    private void c(CampaignEx campaignEx, int i2) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl(), new l(campaignEx, i2));
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d5 A[Catch: all -> 0x00b7, Exception -> 0x0130, TRY_ENTER, TryCatch #0 {Exception -> 0x0130, blocks: (B:43:0x00d5, B:45:0x00d9, B:47:0x00df, B:49:0x00e5, B:51:0x00eb, B:53:0x00fd, B:54:0x0106, B:33:0x00b3), top: B:80:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00df A[Catch: all -> 0x00b7, Exception -> 0x0130, TryCatch #0 {Exception -> 0x0130, blocks: (B:43:0x00d5, B:45:0x00d9, B:47:0x00df, B:49:0x00e5, B:51:0x00eb, B:53:0x00fd, B:54:0x0106, B:33:0x00b3), top: B:80:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011e A[Catch: IOException -> 0x0122, TRY_ENTER, TRY_LEAVE, TryCatch #11 {IOException -> 0x0122, blocks: (B:69:0x013c, B:56:0x011e), top: B:80:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013c A[Catch: IOException -> 0x0122, TRY_ENTER, TRY_LEAVE, TryCatch #11 {IOException -> 0x0122, blocks: (B:69:0x013c, B:56:0x011e), top: B:80:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(com.mbridge.msdk.foundation.entity.CampaignEx r11, int r12) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.advanced.manager.b.d(com.mbridge.msdk.foundation.entity.CampaignEx, int):void");
    }

    private void f(CampaignEx campaignEx, int i2) {
        this.r = new d(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.e, this.f8725a, copyOnWriteArrayList, 298, this.r);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(298, this.f8725a, campaignEx.isBidCampaign())) {
            o0.a(z, " load Video");
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f8725a);
            return;
        }
        o0.a(z, " load Video isReady true");
        this.f.setVideoReady(true);
        i(campaignEx, i2);
    }

    public void b(String str, int i2) {
        String str2;
        CampaignEx a2;
        this.q = false;
        this.n = str;
        this.o = i2;
        this.i = null;
        if (this.f == null) {
            a(new com.mbridge.msdk.foundation.error.b(880030), str, i2, (CampaignEx) null);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            a2 = com.mbridge.msdk.advanced.manager.d.a(this.f, this.b, this.f8725a, str, this.j, false, false);
            str2 = str;
        } else {
            str2 = str;
            a2 = com.mbridge.msdk.advanced.manager.d.a(this.f, this.b, this.f8725a, str2, this.j, false, true);
        }
        long timestamp = a2 != null ? a2.getTimestamp() : 0L;
        com.mbridge.msdk.setting.l lVar = this.g;
        if (lVar != null && lVar.t() == 1 && this.f != null && a2 != null) {
            j(a2, i2);
            return;
        }
        this.p = false;
        com.mbridge.msdk.setting.l lVar2 = this.g;
        if (lVar2 != null) {
            List<Integer> c2 = lVar2.c();
            if (c2 != null && c2.size() > 0) {
                this.c = c2.get(0).intValue() * 1000;
            } else {
                this.c = 30000L;
            }
        } else {
            this.c = 30000L;
        }
        String str3 = z;
        o0.a(str3, "开始从V3请求新的 offer，超时 ：" + this.c);
        if (this.g != null && timestamp > 0 && TextUtils.isEmpty(str2)) {
            if (System.currentTimeMillis() - timestamp > this.g.v() * 1000) {
                a(this.c);
                a(this.e, str2, i2);
                return;
            }
            j(a2, i2);
            return;
        }
        a(this.c);
        a(this.e, str2, i2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8729a;

        public d(CampaignEx campaignEx) {
            this.f8729a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            String str2 = b.z;
            o0.a(str2, "Video 下载成功： " + str);
            Message obtain = Message.obtain();
            obtain.obj = this.f8729a;
            obtain.what = 5;
            b.this.x.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            String str3 = b.z;
            o0.a(str3, "Video 下载失败： " + str);
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f8729a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt("type", 1);
            obtain.obj = bundle;
            obtain.what = 2;
            b.this.x.sendMessage(obtain);
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.advanced.manager.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0083b extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8727a;
        final /* synthetic */ int b;
        final /* synthetic */ long c;

        public C0083b(CampaignEx campaignEx, int i, long j) {
            this.f8727a = campaignEx;
            this.b = i;
            this.c = j;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            super.a(webView, i);
            o0.b("NativeAdvancedLoadManager", "=========readyState: " + i);
            if (i == 1) {
                b.this.f.setH5Ready(true);
                com.mbridge.msdk.advanced.common.c.a(b.this.b + b.this.f8725a + this.f8727a.getRequestId(), true);
                b.this.h(this.f8727a, this.b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f8727a, b.this.f8725a, "", this.c, 1);
                return;
            }
            b.this.a(this.f8727a, "readyState 2", this.b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f8727a, b.this.f8725a, "readyState 2", this.c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            o0.b("NativeAdvancedLoadManager", "onReceivedError： " + i + "  " + str + "  " + str2);
            b.this.a(this.f8727a, str, this.b);
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.f8727a;
            String str3 = b.this.f8725a;
            com.mbridge.msdk.advanced.report.a.a(d, campaignEx, str3, "error code:" + i + str, this.c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            o0.b("NativeAdvancedLoadManager", "onReceivedSslError: " + sslError.getPrimaryError());
            b bVar = b.this;
            CampaignEx campaignEx = this.f8727a;
            bVar.a(campaignEx, "onReceivedSslError:" + sslError.getUrl(), this.b);
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx2 = this.f8727a;
            String str = b.this.f8725a;
            com.mbridge.msdk.advanced.report.a.a(d, campaignEx2, str, "error url:" + sslError.getUrl(), this.c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            o0.b("NativeAdvancedLoadManager", "onPageFinished");
            if (!this.f8727a.isHasMBTplMark()) {
                b.this.f.setH5Ready(true);
                o0.b("NativeAdvancedLoadManager", "=======onPageFinished OK");
                com.mbridge.msdk.advanced.common.c.a(b.this.b + b.this.f8725a + this.f8727a.getRequestId(), true);
                b.this.h(this.f8727a, this.b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f8727a, b.this.f8725a, "", this.c, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    private void e(CampaignEx campaignEx, int i2) {
        MBNativeAdvancedView mBNativeAdvancedView = this.f;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            String str = z;
            o0.a(str, "开始下载zip： " + campaignEx.getAdZip());
            g(campaignEx, i2);
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            String str2 = z;
            o0.a(str2, "开始下载HTML： " + campaignEx.getAdHtml());
            d(campaignEx, i2);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            String str3 = z;
            o0.a(str3, "开始下载Video： " + campaignEx.getVideoUrlEncode());
            f(campaignEx, i2);
        }
        if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
            String str4 = z;
            o0.a(str4, "开始下载image： " + campaignEx.getImageUrl());
            c(campaignEx, i2);
        }
        if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
            String str5 = z;
            o0.a(str5, "开始下载EndCard： " + campaignEx.getendcard_url());
            a(campaignEx, i2);
        }
        if (TextUtils.isEmpty(campaignEx.getGifUrl())) {
            return;
        }
        String str6 = z;
        o0.a(str6, "开始下载gitUrl： " + campaignEx.getGifUrl());
        b(campaignEx, i2);
    }

    private void g(CampaignEx campaignEx, int i2) {
        String str;
        this.s = new a(campaignEx, i2);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        if (campaignEx != null) {
            r0 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            str = campaignEx.getAdZip();
        } else {
            str = "";
        }
        cVar.f(r0);
        cVar.e(2);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, str, this.s);
    }

    public void a(com.mbridge.msdk.setting.l lVar) {
        this.g = lVar;
    }

    public void a(MBNativeAdvancedView mBNativeAdvancedView) {
        this.f = mBNativeAdvancedView;
    }

    public void a(int i2) {
        this.j = i2;
    }

    public void a(int i2, int i3) {
        this.m = i2;
        this.l = i3;
    }

    private void a(long j2) {
        this.x.postDelayed(this.y, j2);
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
                if (y0.a(this.f8725a)) {
                    a(new com.mbridge.msdk.foundation.error.b(880032), str, i2, (CampaignEx) null);
                    return;
                }
                com.mbridge.msdk.advanced.manager.d.b(this.f8725a);
                o0.c(z, "load 开始准备请求参数");
                MBridgeIds mBridgeIds = new MBridgeIds(this.b, this.f8725a);
                com.mbridge.msdk.advanced.request.f fVar = new com.mbridge.msdk.advanced.request.f();
                fVar.d(i2);
                fVar.c(this.v);
                fVar.a(this.u);
                fVar.b(this.m);
                fVar.a(this.l);
                com.mbridge.msdk.foundation.same.net.wrapper.e b = com.mbridge.msdk.advanced.request.e.b(context, mBridgeIds, fVar);
                if (b == null) {
                    o0.c(z, "load 请求参数为空 load失败");
                    a(new com.mbridge.msdk.foundation.error.b(880001), str, i2, (CampaignEx) null);
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    b.a(BidResponsed.KEY_TOKEN, str);
                }
                String d2 = t0.d(this.f8725a);
                if (!TextUtils.isEmpty(d2)) {
                    b.a(com.mbridge.msdk.foundation.same.report.j.b, d2);
                }
                str2 = str;
                try {
                    new com.mbridge.msdk.advanced.request.c(context).choiceV3OrV5BySetting(1, b, a(str, i2), str2, com.mbridge.msdk.foundation.same.c.a(this.c, 30000L));
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    o0.b(z, exc.getMessage());
                    com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
                    bVar.a((Throwable) exc);
                    a(bVar, str2, i2, (CampaignEx) null);
                    f();
                }
            } catch (Exception e3) {
                e = e3;
                str2 = str;
            }
        } catch (Exception e4) {
            exc = e4;
            str2 = str;
        }
    }

    private void b() {
        this.x.removeCallbacks(this.y);
    }

    private void b(CampaignEx campaignEx, int i2) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getGifUrl(), new j(campaignEx, i2));
    }

    @NonNull
    private com.mbridge.msdk.advanced.request.b a(String str, int i2) {
        g gVar = new g(i2, str, i2);
        gVar.a(str);
        gVar.setUnitId(this.f8725a);
        gVar.setPlacementId(this.b);
        gVar.setAdType(298);
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit, int i2, String str, String str2) {
        List<CampaignEx> a2 = a(campaignUnit);
        if (a2 != null && a2.size() > 0) {
            g();
            String str3 = z;
            o0.c(str3, "onload load成功 size:" + a2.size());
            CampaignEx campaignEx = a2.get(0);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
                campaignEx.setHasMBTplMark(false);
                campaignEx.setIsMraid(true);
            } else {
                campaignEx.setHasMBTplMark(true);
                campaignEx.setIsMraid(false);
            }
            j(campaignEx, i2);
            return;
        }
        o0.c(z, "onload load失败 返回的compaign没有可以用的");
        a(new com.mbridge.msdk.foundation.error.b(880033), str2, i2, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f8725a);
        a(campaignEx);
        this.u = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (t0.c(campaignEx)) {
                campaignEx.setRtinsType(t0.c(this.e, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.e, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                t0.a(this.f8725a, campaignEx, com.mbridge.msdk.foundation.same.a.x);
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.e, cVar, new h(campaignEx, aVar));
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new i(campaignEx)).start();
    }

    public void a(com.mbridge.msdk.advanced.middle.b bVar) {
        this.d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i2, CampaignEx campaignEx) {
        if (this.p) {
            this.p = false;
            a(bVar, i2, str);
            return;
        }
        if (bVar != null) {
            bVar.a(campaignEx);
        }
        a(bVar, i2, campaignEx);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i2, String str) {
        CampaignEx a2 = com.mbridge.msdk.advanced.manager.d.a(this.f, this.b, this.f8725a, str, this.j, true, true);
        if (a2 != null) {
            o0.b(z, "load failed cache ");
            j(a2, i2);
            return;
        }
        a(bVar, i2, a2);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i2, CampaignEx campaignEx) {
        if (this.q) {
            return;
        }
        b();
        if (bVar != null) {
            String str = z;
            o0.b(str, "real failed: " + bVar.g());
        }
        this.q = true;
        com.mbridge.msdk.advanced.middle.b bVar2 = this.d;
        if (bVar2 != null) {
            bVar2.a(bVar, i2);
        }
    }

    private void a(CampaignEx campaignEx, int i2) {
        String str;
        this.t = new k(campaignEx, i2);
        if (campaignEx != null) {
            r4 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            str = campaignEx.getendcard_url();
        } else {
            str = "";
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        cVar.f(r4);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, str, this.t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx, int i2) {
        MBNativeAdvancedView mBNativeAdvancedView = this.f;
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(this.f8725a, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(this.f.getContext(), this.b, this.f8725a);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(this.j);
        bVar.b(this.k);
        this.f.setAdvancedNativeSignalCommunicationImpl(bVar);
        long currentTimeMillis = System.currentTimeMillis();
        MBNativeAdvancedWebview advancedNativeWebview = this.f.getAdvancedNativeWebview();
        if (advancedNativeWebview == null) {
            a(campaignEx, "webview is null", i2);
        } else if (advancedNativeWebview.isDestoryed()) {
            a(campaignEx, "webview is destroyed", i2);
        } else {
            advancedNativeWebview.setWebViewListener(new C0083b(campaignEx, i2, currentTimeMillis));
            if (!advancedNativeWebview.isDestoryed()) {
                String str2 = z;
                o0.b(str2, "=======开始渲染: " + str);
                Handler handler = this.x;
                if (handler != null) {
                    handler.post(new c(advancedNativeWebview, str));
                    return;
                }
                return;
            }
            a(new com.mbridge.msdk.foundation.error.b(880031), this.n, i2, campaignEx);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, this.f8725a, "webview had destory", currentTimeMillis, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, int i2) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.n, i2, campaignEx);
        com.mbridge.msdk.advanced.report.a.a(2, str, this.f8725a, campaignEx);
    }

    public String a(String str) {
        int j2;
        if (this.i != null) {
            try {
                com.mbridge.msdk.videocommon.download.a a2 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f8725a, this.i.getId() + this.i.getVideoUrlEncode() + this.i.getBidToken());
                if (a2 != null && (j2 = a2.j()) == 5) {
                    String k2 = a2.k();
                    if (new File(k2).exists()) {
                        String str2 = z;
                        o0.b(str2, "本地已下载完 拿本地播放地址：" + k2 + " state：" + j2);
                        return k2;
                    }
                }
            } catch (Exception e2) {
                o0.b(z, e2.getMessage());
            }
            return str;
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, boolean z2, String str2) {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.e(2);
            mVar.j("m_download_end");
            if (campaignEx != null) {
                mVar.b(campaignEx.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                mVar.o(campaignEx.getRequestIdNotice());
            }
            mVar.b("url", str);
            mVar.b("scenes", "1");
            if (z2) {
                mVar.d(1);
            } else {
                mVar.d(3);
                mVar.m(str2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, campaignEx);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b(z, e2.getMessage());
            }
        }
    }
}
