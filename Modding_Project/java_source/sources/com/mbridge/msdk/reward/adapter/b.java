package com.mbridge.msdk.reward.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.video.bt.module.MBridgeBTLayout;
import com.mbridge.msdk.video.bt.module.MBridgeBTRootLayout;
import com.mbridge.msdk.videocommon.a;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class b {
    private static ConcurrentHashMap<String, f> g;

    /* renamed from: a  reason: collision with root package name */
    private final m f9359a;
    private boolean b;
    private final String c;
    private final String d;
    private final String e;
    private volatile List<WindVaneWebView> f;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f9360a;
        final /* synthetic */ Context b;
        final /* synthetic */ String c;
        final /* synthetic */ int d;
        final /* synthetic */ String e;
        final /* synthetic */ String f;
        final /* synthetic */ String g;
        final /* synthetic */ n h;

        public a(CopyOnWriteArrayList copyOnWriteArrayList, Context context, String str, int i, String str2, String str3, String str4, n nVar) {
            this.f9360a = copyOnWriteArrayList;
            this.b = context;
            this.c = str;
            this.d = i;
            this.e = str2;
            this.f = str3;
            this.g = str4;
            this.h = nVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:117:0x02df  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x02b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:188:0x0279 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x019d  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01f3  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0257  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 993
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.a.run():void");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9362a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;
        final /* synthetic */ CampaignEx d;
        final /* synthetic */ n e;
        final /* synthetic */ Context f;

        public c(String str, String str2, String str3, CampaignEx campaignEx, n nVar, Context context) {
            this.f9362a = str;
            this.b = str2;
            this.c = str3;
            this.d = campaignEx;
            this.e = nVar;
            this.f = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x0169 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onFailed(java.lang.String r22, java.lang.String r23) {
            /*
                Method dump skipped, instructions count: 410
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.c.onFailed(java.lang.String, java.lang.String):void");
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            try {
                o0.a("RewardCampaignsResourceManager", "zip btl template download success");
                ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
                Message obtain = Message.obtain();
                obtain.what = 105;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f9362a);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.b);
                bundle.putString("request_id", this.c);
                bundle.putString("key", this.f9362a + "_" + this.c + "_" + this.d.getSecondRequestIndex());
                bundle.putString("url", str);
                obtain.setData(bundle);
                b.this.f9359a.sendMessage(obtain);
                n nVar = this.e;
                if (nVar != null) {
                    nVar.a(this.b, this.f9362a, this.c, str);
                }
                if (!z) {
                    b.this.a(this.f, 1, this.d, str, "", this.f9362a, str2);
                }
            } catch (Exception e) {
                ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
                Message obtain2 = Message.obtain();
                obtain2.what = 205;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f9362a);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.b);
                bundle2.putString("request_id", this.c);
                bundle2.putString("key", this.f9362a + "_" + this.c + "_" + this.d.getSecondRequestIndex());
                bundle2.putString("url", str);
                obtain2.setData(bundle2);
                b.this.f9359a.sendMessage(obtain2);
                if (this.e != null) {
                    try {
                        this.e.a(str, this.c, b.b(880005, new MBridgeIds(this.b, this.f9362a, this.c), "", e, null));
                    } catch (Exception e2) {
                        o0.b("RewardCampaignsResourceManager", e2.getMessage());
                    }
                }
                b.this.a(this.f, 3, this.d, str, e.getLocalizedMessage(), this.f9362a, str2);
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9363a;
        final /* synthetic */ Context b;
        final /* synthetic */ int c;
        final /* synthetic */ String d;
        final /* synthetic */ String e;
        final /* synthetic */ String f;
        final /* synthetic */ String g;

        public d(CampaignEx campaignEx, Context context, int i, String str, String str2, String str3, String str4) {
            this.f9363a = campaignEx;
            this.b = context;
            this.c = i;
            this.d = str;
            this.e = str2;
            this.f = str3;
            this.g = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9363a != null && this.b != null) {
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                    mVar.j("m_download_end");
                    Context context = this.b;
                    if (context != null) {
                        mVar.c(k0.s(context.getApplicationContext()));
                    }
                    mVar.d(this.c);
                    CampaignEx campaignEx = this.f9363a;
                    if (campaignEx != null) {
                        mVar.b(campaignEx.getId());
                        mVar.n(this.f9363a.getRequestId());
                        mVar.k(this.f9363a.getCurrentLocalRid());
                        mVar.o(this.f9363a.getRequestIdNotice());
                    }
                    mVar.b("url", this.d);
                    mVar.t(this.d);
                    mVar.m(this.e);
                    mVar.u(this.f);
                    if (!TextUtils.isEmpty(this.g)) {
                        mVar.q(this.g);
                    }
                    mVar.e(1);
                    mVar.b("scenes", "1");
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f9363a);
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                    }
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f9364a;
        final /* synthetic */ WindVaneWebView b;
        final /* synthetic */ CampaignEx c;
        final /* synthetic */ CopyOnWriteArrayList d;
        final /* synthetic */ String e;
        final /* synthetic */ com.mbridge.msdk.videocommon.setting.c f;
        final /* synthetic */ String g;

        public e(boolean z, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, com.mbridge.msdk.videocommon.setting.c cVar, String str2) {
            this.f9364a = z;
            this.b = windVaneWebView;
            this.c = campaignEx;
            this.d = copyOnWriteArrayList;
            this.e = str;
            this.f = cVar;
            this.g = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f9364a, this.b, this.c.getRewardTemplateMode().e(), 0, this.c, this.d, H5DownLoadManager.getInstance().getH5ResAddress(this.c.getRewardTemplateMode().e()), this.e, this.f, this.g, b.this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        boolean f9365a;
        boolean b;
        int c;
        int d;
        String e;
        String f;
        int g;
        CopyOnWriteArrayList<CampaignEx> h;
        CopyOnWriteArrayList<CampaignEx> i;

        public f(boolean z, boolean z2, int i, int i2, String str, String str2, int i3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f9365a = z;
            this.b = z2;
            this.c = i;
            this.d = i2;
            this.e = str;
            this.f = str2;
            this.g = i3;
            this.h = copyOnWriteArrayList;
            this.i = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface h {
        void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList);

        void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class i implements H5DownLoadManager.IH5SourceDownloadListener {
        private int b;
        private final String c;
        private final String d;
        private final String e;
        private CampaignEx f;
        private n g;
        private Handler h;
        private CopyOnWriteArrayList<CampaignEx> i;

        /* renamed from: a  reason: collision with root package name */
        private boolean f9367a = false;
        private final long j = System.currentTimeMillis();

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f9368a;
            final /* synthetic */ long b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;
            final /* synthetic */ String e;

            public a(int i, long j, String str, String str2, String str3) {
                this.f9368a = i;
                this.b = j;
                this.c = str;
                this.d = str2;
                this.e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f != null) {
                    try {
                        int i = this.f9368a;
                        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("m_download_end", i, this.b + "", this.c, i.this.f.getId(), i.this.d, this.d, "2");
                        mVar.n(i.this.f.getRequestId());
                        mVar.k(i.this.f.getCurrentLocalRid());
                        mVar.o(i.this.f.getRequestIdNotice());
                        mVar.b(i.this.f.getId());
                        mVar.a(i.this.f.getAdSpaceT());
                        mVar.b("scenes", "1");
                        mVar.b("url", this.c);
                        if (i.this.f.getAdType() == 287) {
                            mVar.a("3");
                        } else if (i.this.f.getAdType() == 94) {
                            mVar.a("1");
                        }
                        if (!TextUtils.isEmpty(this.e)) {
                            mVar.q(this.e);
                        }
                        b.b(mVar, i.this.f);
                        com.mbridge.msdk.foundation.same.report.g.a(mVar, i.this.d, i.this.f);
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        public i(int i, String str, String str2, String str3, CampaignEx campaignEx, n nVar, Handler handler, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.b = i;
            this.c = str;
            this.d = str2;
            this.e = str3;
            this.f = campaignEx;
            this.g = nVar;
            this.h = handler;
            this.i = copyOnWriteArrayList;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
            int i = this.b;
            if (i != 313) {
                if (i != 497) {
                    if (i == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 205;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.d);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                        bundle.putString("request_id", this.e);
                        bundle.putString("key", this.d + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                        bundle.putString("message", str2);
                        obtain.setData(bundle);
                        this.h.sendMessage(obtain);
                        if (this.g != null) {
                            try {
                                this.g.a(str, this.e, b.b(880006, new MBridgeIds(this.c, this.d, this.e), str2, null, null));
                                return;
                            } catch (Exception e) {
                                o0.b("RewardCampaignsResourceManager", e.getMessage());
                            }
                        }
                    }
                } else {
                    Message obtain2 = Message.obtain();
                    obtain2.what = 201;
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.d);
                    bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                    bundle2.putString("request_id", this.e);
                    bundle2.putString("key", this.d + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                    bundle2.putString("url", str);
                    bundle2.putString("message", str2);
                    obtain2.setData(bundle2);
                    this.h.sendMessage(obtain2);
                    if (this.f9367a) {
                        a(3, System.currentTimeMillis() - this.j, str, "url download failed", "");
                        return;
                    }
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 201;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle3.putString("request_id", this.e);
            bundle3.putString("key", this.d + "_" + this.e + "_" + this.f.getSecondRequestIndex());
            bundle3.putString("url", str);
            bundle3.putString("message", str2);
            obtain3.setData(bundle3);
            this.h.sendMessage(obtain3);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            int i = this.b;
            if (i != 313) {
                if (i != 497) {
                    if (i == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 105;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.d);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                        bundle.putString("request_id", this.e);
                        bundle.putString("key", this.d + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                        obtain.setData(bundle);
                        this.h.sendMessage(obtain);
                        n nVar = this.g;
                        if (nVar != null) {
                            nVar.a(this.c, this.d, this.e, str);
                            return;
                        }
                    }
                } else {
                    Message obtain2 = Message.obtain();
                    obtain2.what = 101;
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.d);
                    bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                    bundle2.putString("request_id", this.e);
                    bundle2.putString("key", this.d + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                    bundle2.putString("url", str);
                    obtain2.setData(bundle2);
                    this.h.sendMessage(obtain2);
                    if (this.f9367a) {
                        a(1, System.currentTimeMillis() - this.j, str, "", str2);
                        return;
                    }
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 101;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle3.putString("request_id", this.e);
            bundle3.putString("key", this.d + "_" + this.e + "_" + this.f.getSecondRequestIndex());
            bundle3.putString("url", str);
            obtain3.setData(bundle3);
            this.h.sendMessage(obtain3);
        }

        public void a(boolean z) {
            this.f9367a = z;
        }

        private void a(int i, long j, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i, j, str, str2, str3));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class j implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        private Handler f9369a;
        private int b;
        private String c;
        private String d;
        private String e;
        private CampaignEx f;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f9370a;

            public a(String str) {
                this.f9370a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f != null) {
                    try {
                        com.mbridge.msdk.foundation.db.n a2 = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                        o0.a("RewardCampaignsResourceManager", "campaign is null");
                        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                        mVar.j("2000044");
                        mVar.c(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                        mVar.b(j.this.f.getId());
                        mVar.i(j.this.f.getImageUrl());
                        mVar.n(j.this.f.getRequestId());
                        mVar.k(j.this.f.getCurrentLocalRid());
                        mVar.o(j.this.f.getRequestIdNotice());
                        mVar.u(j.this.c);
                        mVar.m(this.f9370a);
                        mVar.b("scenes", "1");
                        a2.a(mVar);
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        public j(Handler handler, int i, String str, String str2, String str3, CampaignEx campaignEx) {
            this.f9369a = handler;
            this.b = i;
            this.d = str;
            this.c = str2;
            this.e = str3;
            this.f = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            int i;
            Message obtain = Message.obtain();
            if (this.b == 0) {
                i = 202;
            } else {
                i = 204;
            }
            obtain.what = i;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.d);
            bundle.putString("request_id", this.e);
            bundle.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
            obtain.setData(bundle);
            this.f9369a.sendMessage(obtain);
            a aVar = new a(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
            } else {
                aVar.run();
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            int i;
            ResDownloadCheckManager.getInstance().setImageDownloadDone(str, true);
            Message obtain = Message.obtain();
            if (this.b == 0) {
                i = 102;
            } else {
                i = 104;
            }
            obtain.what = i;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.d);
            bundle.putString("request_id", this.e);
            bundle.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
            obtain.setData(bundle);
            this.f9369a.sendMessage(obtain);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class l implements H5DownLoadManager.ZipDownloadListener {
        private Context b;
        private String c;
        private String d;
        private String e;
        private CampaignEx f;
        private int g;
        private Handler h;
        private n i;
        private CopyOnWriteArrayList<CampaignEx> j;

        /* renamed from: a  reason: collision with root package name */
        private boolean f9372a = false;
        private long k = System.currentTimeMillis();

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f9373a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;

            public a(int i, String str, String str2, String str3) {
                this.f9373a = i;
                this.b = str;
                this.c = str2;
                this.d = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f != null && l.this.b != null) {
                    try {
                        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                        mVar.j("m_download_end");
                        if (l.this.b != null) {
                            mVar.c(k0.s(l.this.b.getApplicationContext()));
                        }
                        mVar.d(this.f9373a);
                        if (l.this.f != null) {
                            mVar.b(l.this.f.getId());
                            mVar.n(l.this.f.getRequestId());
                            mVar.k(l.this.f.getCurrentLocalRid());
                            mVar.o(l.this.f.getRequestIdNotice());
                        }
                        mVar.t(this.b);
                        mVar.m(this.c);
                        mVar.u(l.this.c);
                        if (!TextUtils.isEmpty(this.d)) {
                            mVar.q(this.d);
                        }
                        mVar.e(2);
                        mVar.b("scenes", "1");
                        mVar.b("url", this.b);
                        b.b(mVar, l.this.f);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, l.this.f);
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.adapter.b$l$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0137b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f9374a;
            final /* synthetic */ long b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;
            final /* synthetic */ String e;

            public RunnableC0137b(int i, long j, String str, String str2, String str3) {
                this.f9374a = i;
                this.b = j;
                this.c = str;
                this.d = str2;
                this.e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f != null) {
                    try {
                        int i = this.f9374a;
                        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("m_download_end", i, this.b + "", this.c, l.this.f.getId(), l.this.c, this.d, "1");
                        mVar.n(l.this.f.getRequestId());
                        mVar.k(l.this.f.getCurrentLocalRid());
                        mVar.o(l.this.f.getRequestIdNotice());
                        mVar.b(l.this.f.getId());
                        mVar.a(l.this.f.getAdSpaceT());
                        mVar.q(this.e);
                        mVar.b("scenes", "1");
                        if (l.this.f.getAdType() == 287) {
                            mVar.a("3");
                        } else if (l.this.f.getAdType() == 94) {
                            mVar.a("1");
                        }
                        mVar.b("url", this.c);
                        mVar.e(3);
                        b.b(mVar, l.this.f);
                        com.mbridge.msdk.foundation.same.report.g.a(mVar, l.this.c, l.this.f);
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        public l(Context context, String str, String str2, String str3, CampaignEx campaignEx, int i, Handler handler, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.b = context;
            this.d = str;
            this.c = str2;
            this.e = str3;
            this.f = campaignEx;
            this.g = i;
            this.h = handler;
            this.i = nVar;
            this.j = copyOnWriteArrayList;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
            long currentTimeMillis = System.currentTimeMillis() - this.k;
            int i = this.g;
            if (i != 313) {
                if (i != 497) {
                    if (i == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 203;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.d);
                        bundle.putString("request_id", this.e);
                        bundle.putString("url", str2);
                        bundle.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                        bundle.putString("message", str);
                        obtain.setData(bundle);
                        this.h.sendMessage(obtain);
                        if (this.i != null) {
                            try {
                                this.i.a(str2, this.e, b.b(880006, new MBridgeIds(this.d, this.c, this.e), "", null, null));
                            } catch (Exception e) {
                                o0.b("RewardCampaignsResourceManager", e.getMessage());
                            }
                        }
                        a(3, str2, str, "");
                    }
                } else {
                    Message obtain2 = Message.obtain();
                    obtain2.what = 201;
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                    bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.d);
                    bundle2.putString("request_id", this.e);
                    bundle2.putString("url", str2);
                    bundle2.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                    bundle2.putString("message", str);
                    obtain2.setData(bundle2);
                    this.h.sendMessage(obtain2);
                    if (this.f9372a) {
                        a(3, currentTimeMillis, str2, "zip download failed", "");
                        return;
                    }
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 101;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.d);
            bundle3.putString("request_id", this.e);
            bundle3.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
            bundle3.putString("url", str2);
            bundle3.putString("message", str);
            obtain3.setData(bundle3);
            this.h.sendMessage(obtain3);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            long currentTimeMillis = System.currentTimeMillis() - this.k;
            int i = this.g;
            if (i != 313) {
                if (i != 497) {
                    if (i == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 103;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.d);
                        bundle.putString("request_id", this.e);
                        bundle.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                        obtain.setData(bundle);
                        this.h.sendMessage(obtain);
                        n nVar = this.i;
                        if (nVar != null) {
                            nVar.a(this.d, this.c, this.e, str);
                        }
                        if (!z) {
                            a(1, str, "", str2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                Message obtain2 = Message.obtain();
                obtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.d);
                bundle2.putString("request_id", this.e);
                bundle2.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
                bundle2.putString("url", str);
                obtain2.setData(bundle2);
                this.h.sendMessage(obtain2);
                if (this.f9372a) {
                    a(1, currentTimeMillis, str, "", str2);
                    return;
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 101;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.d);
            bundle3.putString("request_id", this.e);
            bundle3.putString("key", this.c + "_" + this.e + "_" + this.f.getSecondRequestIndex());
            bundle3.putString("url", str);
            obtain3.setData(bundle3);
            this.h.sendMessage(obtain3);
        }

        public void a(boolean z) {
            this.f9372a = z;
        }

        private void a(int i, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i, str, str2, str3));
        }

        private void a(int i, long j, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new RunnableC0137b(i, j, str, str2, str3));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class m extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private Context f9375a;
        private ConcurrentHashMap<String, h> b;
        private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> c;

        public m(Looper looper) {
            super(looper);
            this.b = new ConcurrentHashMap<>();
            this.c = new ConcurrentHashMap<>();
        }

        public void a(String str, h hVar) {
            this.b.put(str, hVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:194:0x03c1, code lost:
            if (r18.getRsIgnoreCheckRule().contains(3) == false) goto L56;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:226:0x0456  */
        /* JADX WARN: Removed duplicated region for block: B:267:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r2v0, types: [android.os.Bundle, android.os.BaseBundle] */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v23, types: [int] */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v9, types: [int] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r29) {
            /*
                Method dump skipped, instructions count: 1168
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.m.handleMessage(android.os.Message):void");
        }

        public void a(Context context) {
            this.f9375a = context;
        }

        public void a(String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.c.put(str, copyOnWriteArrayList);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface n {
        void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface o {
        void a(String str, String str2, String str3, a.C0188a c0188a, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4, String str5, a.C0188a c0188a);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class r {

        /* renamed from: a  reason: collision with root package name */
        private static final b f9380a = new b(null);
    }

    public /* synthetic */ b(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i2) {
        if (i2 != 200) {
            if (i2 != 201) {
                if (i2 != 203) {
                    return i2 != 205 ? 880024 : 880005;
                }
                return 880006;
            }
            return 880007;
        }
        return 880004;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:15:0x0017
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized java.lang.String d(int r2) {
        /*
            java.lang.Class<com.mbridge.msdk.reward.adapter.b> r0 = com.mbridge.msdk.reward.adapter.b.class
            monitor-enter(r0)
            r1 = 200(0xc8, float:2.8E-43)
            if (r2 == r1) goto L25
            r1 = 201(0xc9, float:2.82E-43)
            if (r2 == r1) goto L21
            r1 = 203(0xcb, float:2.84E-43)
            if (r2 == r1) goto L1d
            r1 = 205(0xcd, float:2.87E-43)
            if (r2 == r1) goto L19
            java.lang.String r2 = "unknown"
            monitor-exit(r0)
            return r2
        L17:
            r2 = move-exception
            goto L29
        L19:
            java.lang.String r2 = "tpl"
            monitor-exit(r0)
            return r2
        L1d:
            java.lang.String r2 = "temp"
            monitor-exit(r0)
            return r2
        L21:
            java.lang.String r2 = "zip/html"
            monitor-exit(r0)
            return r2
        L25:
            java.lang.String r2 = "video"
            monitor-exit(r0)
            return r2
        L29:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L17
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.d(int):java.lang.String");
    }

    private b() {
        this.c = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;
        this.d = "down_type";
        this.e = "h3c";
        this.f = new ArrayList(6);
        HandlerThread handlerThread = new HandlerThread("mb-reward-load-thread");
        g = new ConcurrentHashMap<>();
        handlerThread.start();
        this.f9359a = new m(handlerThread.getLooper());
    }

    public void c() {
    }

    public static b b() {
        return r.f9380a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.mbridge.msdk.foundation.entity.m mVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c c2 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (c2 != null) {
                mVar.s(c2.x());
            }
            com.mbridge.msdk.videocommon.setting.a c3 = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (c3 != null) {
                mVar.r(c3.f());
            }
        } catch (Exception e2) {
            o0.b("RewardCampaignsResourceManager", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.mbridge.msdk.foundation.error.b b(int i2, MBridgeIds mBridgeIds, String str, Throwable th, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i2);
        bVar.a(mBridgeIds);
        bVar.a(th);
        bVar.c(str);
        bVar.a(campaignEx);
        return bVar;
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class k implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        private Handler f9371a;
        private final String b;
        private final String c;
        private final String d;
        private final String e;

        public k(Handler handler, String str, String str2, String str3, String str4) {
            this.f9371a = handler;
            this.c = str;
            this.b = str2;
            this.d = str3;
            this.e = str4;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str, true);
            Message obtain = Message.obtain();
            obtain.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle.putString("request_id", this.d);
            bundle.putString("key", this.e);
            bundle.putString("url", str);
            obtain.setData(bundle);
            this.f9371a.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str2, false);
            Message obtain = Message.obtain();
            obtain.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle.putString("request_id", this.d);
            bundle.putString("url", str2);
            bundle.putString("key", this.e);
            bundle.putString("message", str);
            obtain.setData(bundle);
            this.f9371a.sendMessage(obtain);
        }
    }

    public synchronized void a(Context context, boolean z, int i2, boolean z2, int i3, String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, h hVar, n nVar) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        String str4 = str2 + "_" + str3 + "_" + copyOnWriteArrayList2.get(0).getSecondRequestIndex();
        g.put(str4, new f(z, z2, i2, copyOnWriteArrayList2.size(), str2, str3, i3, copyOnWriteArrayList2));
        this.f9359a.a(str4, hVar);
        this.f9359a.a(context);
        this.f9359a.a(str4, copyOnWriteArrayList2);
        this.f9359a.post(new a(copyOnWriteArrayList2, context, str2, i3, str, str3, str4, nVar));
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.reward.adapter.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0136b implements x.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f9361a;
        final /* synthetic */ CampaignEx b;

        public C0136b(int i, CampaignEx campaignEx) {
            this.f9361a = i;
            this.b = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, String str2, String str3, String str4, boolean z) {
            if (z) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                int i = this.f9361a;
                if (i == 0) {
                    mVar.e(1);
                    mVar.d(1);
                    mVar.j("m_download_end");
                } else if (i == 1) {
                    mVar.e(2);
                    mVar.d(1);
                    mVar.j("m_download_end");
                } else if (i == 2) {
                    mVar.e(3);
                    mVar.d(1);
                    mVar.j("m_download_end");
                    mVar.b(this.b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                    mVar.f("1");
                }
                mVar.o(this.b.getRequestIdNotice());
                mVar.b("url", str);
                mVar.b("scenes", "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.b);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e.getMessage());
                }
            }
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
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            int i = this.f9361a;
            if (i == 0) {
                mVar.e(1);
                mVar.d(3);
                mVar.j("m_download_end");
            } else if (i == 1) {
                mVar.e(2);
                mVar.d(3);
                mVar.j("m_download_end");
            } else if (i == 2) {
                mVar.e(3);
                mVar.d(3);
                mVar.j("m_download_end");
                mVar.b(this.b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                mVar.f("1");
            }
            b.b(mVar, this.b);
            mVar.o(this.b.getRequestIdNotice());
            mVar.m(str2);
            mVar.b("scenes", "1");
            mVar.b("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, CampaignEx campaignEx, String str, String str2) {
        x.a(i2, str, str2, new C0136b(i2, campaignEx), campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, CampaignEx campaignEx, String str4, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        if (TextUtils.isEmpty(str4) || campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.c a2 = a(campaignEx, 3);
        if (str4.contains(".zip") && str4.contains(ResourceManager.KEY_MD5FILENAME)) {
            boolean isEmpty = TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str4));
            try {
                l lVar = new l(context, str, str2, str3, campaignEx, 497, this.f9359a, nVar, copyOnWriteArrayList);
                lVar.a(isEmpty);
                H5DownLoadManager.getInstance().downloadH5Res(a2, str4, lVar);
                return;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                    return;
                }
                return;
            }
        }
        boolean isEmpty2 = TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str4));
        try {
            i iVar = new i(497, str, str2, str3, campaignEx, nVar, this.f9359a, copyOnWriteArrayList);
            iVar.a(isEmpty2);
            H5DownLoadManager.getInstance().downloadH5Res(a2, str4, iVar);
        } catch (Exception e3) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e3.getLocalizedMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class g extends com.mbridge.msdk.mbsignalcommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f9366a;
        private final Runnable b;
        private final boolean c;
        private final boolean d;
        private int e;
        private String f;
        private String g;
        private String h;
        private String i;
        private a.C0188a j;
        private CampaignEx k;
        private CopyOnWriteArrayList<CampaignEx> l;
        private com.mbridge.msdk.videocommon.setting.c m;
        private final o n;
        private boolean o;
        private boolean p;
        private boolean q;
        private int r = 0;
        private boolean s;
        private long t;

        public g(boolean z, Handler handler, Runnable runnable, boolean z2, boolean z3, int i, String str, String str2, String str3, String str4, a.C0188a c0188a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z4, long j) {
            this.f9366a = handler;
            this.b = runnable;
            this.c = z2;
            this.d = z3;
            this.e = i;
            this.f = str;
            this.h = str2;
            this.g = str3;
            this.i = str4;
            this.j = c0188a;
            this.k = campaignEx;
            this.l = copyOnWriteArrayList;
            this.m = cVar;
            this.n = oVar;
            this.o = z4;
            this.s = z;
            this.t = j;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            Runnable runnable;
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                eVar.a("result", Integer.valueOf(i));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.k, eVar);
            } catch (Throwable th) {
                o0.b("RVWindVaneWebView", th.getMessage());
            }
            if (this.q) {
                return;
            }
            String str = this.g + "_" + this.f;
            if (i == 1) {
                if (this.o) {
                    com.mbridge.msdk.videocommon.a.d(this.g + "_" + this.i);
                } else {
                    com.mbridge.msdk.videocommon.a.c(this.g + "_" + this.i);
                }
                com.mbridge.msdk.videocommon.a.a(this.g + "_" + this.i + "_" + this.f, this.j, true, this.o);
                Handler handler = this.f9366a;
                if (handler != null && (runnable = this.b) != null) {
                    handler.removeCallbacks(runnable);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.g + "_" + this.i + "_" + this.f, true);
                a.C0188a c0188a = this.j;
                if (c0188a != null) {
                    c0188a.a(true);
                }
                o oVar = this.n;
                if (oVar != null) {
                    oVar.a(str, this.h, this.g, this.i, this.f, this.j);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.g + "_" + this.i + "_" + this.f, false);
                a.C0188a c0188a2 = this.j;
                if (c0188a2 != null) {
                    c0188a2.a(false);
                }
                if (this.n != null) {
                    this.n.a(str, this.i, this.f, this.j, b.b(880008, new MBridgeIds(this.h, this.g, this.i), "readyState:" + i, null, this.k));
                }
            }
            this.q = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(WebView webView, String str, String str2, int i, int i2) {
            boolean z = true;
            if (i == 1) {
                try {
                    com.mbridge.msdk.reward.controller.a aVar = new com.mbridge.msdk.reward.controller.a();
                    aVar.e(false);
                    if (i2 != 2) {
                        z = false;
                    }
                    aVar.d(z);
                    aVar.c(str, str2);
                    aVar.a(new com.mbridge.msdk.video.bt.module.orglistener.a(null));
                    aVar.a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, i2, str2, true, 1));
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RVWindVaneWebView", e.getMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(Object obj, String str) {
            if (obj != null) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    String optString = new JSONObject(str).optString("id");
                    com.mbridge.msdk.video.bt.component.d.c().b(obj, optString);
                    String f = com.mbridge.msdk.video.bt.component.d.c().f(optString);
                    CampaignEx c = com.mbridge.msdk.video.bt.component.d.c().c(optString);
                    com.mbridge.msdk.videocommon.setting.c d = com.mbridge.msdk.video.bt.component.d.c().d(optString);
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(c);
                    WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).b;
                    if (windVaneWebView != null) {
                        b.b().a(this.s, windVaneWebView, c, copyOnWriteArrayList, d, f, optString, this.r == 0 ? 3 : 6);
                        this.r++;
                    }
                } catch (Throwable th) {
                    o0.b("RVWindVaneWebView", th.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            Runnable runnable;
            super.a(webView, str);
            if (this.p) {
                return;
            }
            String str2 = this.g + "_" + this.f;
            if (!str.contains("wfr=1")) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.g + "_" + this.i + "_" + this.f, true);
                Handler handler = this.f9366a;
                if (handler != null && (runnable = this.b) != null) {
                    handler.removeCallbacks(runnable);
                }
                a.C0188a c0188a = this.j;
                if (c0188a != null) {
                    c0188a.a(true);
                }
                o oVar = this.n;
                if (oVar != null) {
                    oVar.a(str2, this.h, this.g, this.i, this.f, this.j);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.g + "_" + this.i + "_" + this.f, false);
            if (this.n != null) {
                String str3 = this.g + "_" + this.f;
                a.C0188a c0188a = this.j;
                if (c0188a != null) {
                    c0188a.a(false);
                }
                this.n.a(str3, this.i, this.f, this.j, b.b(880008, new MBridgeIds(this.h, this.g, this.i), "onReceivedError： " + i + "  " + str, null, this.k));
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            if (webView != null) {
                try {
                    com.mbridge.msdk.video.bt.component.d.c().c(this.g, this.i);
                } catch (Throwable th) {
                    o0.b("RVWindVaneWebView", th.getMessage());
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class p extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        private Handler f9376a;
        private Runnable b;
        private final boolean c;
        private final boolean d;
        private String e;
        private final o f;
        private final WindVaneWebView g;
        private final String h;
        private final String i;
        private final String j;
        private final a.C0188a k;
        private final CampaignEx l;
        private CopyOnWriteArrayList<CampaignEx> m;
        private long n;
        private boolean o;
        private boolean p;
        private final Runnable q;
        private final Runnable r;

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o f9377a;
            final /* synthetic */ a.C0188a b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;
            final /* synthetic */ String e;
            final /* synthetic */ String f;

            public a(o oVar, a.C0188a c0188a, String str, String str2, String str3, String str4) {
                this.f9377a = oVar;
                this.b = c0188a;
                this.c = str;
                this.d = str2;
                this.e = str3;
                this.f = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindVaneWebView b;
                a.C0188a c0188a;
                if (this.f9377a != null && (c0188a = this.b) != null) {
                    c0188a.a(true);
                    ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager.setTemplatePreLoadDone(this.c + "_" + this.d + "_" + this.e, true);
                    o oVar = this.f9377a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.c);
                    sb.append("_");
                    sb.append(this.e);
                    oVar.a(sb.toString(), this.f, this.c, this.d, this.e, this.b);
                }
                a.C0188a c0188a2 = this.b;
                if (c0188a2 != null && (b = c0188a2.b()) != null) {
                    try {
                        b.release();
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("WindVaneWebView", e.getMessage());
                        }
                    }
                }
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.reward.adapter.b$p$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0138b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o f9378a;
            final /* synthetic */ a.C0188a b;
            final /* synthetic */ String c;
            final /* synthetic */ String d;
            final /* synthetic */ String e;
            final /* synthetic */ String f;

            public RunnableC0138b(o oVar, a.C0188a c0188a, String str, String str2, String str3, String str4) {
                this.f9378a = oVar;
                this.b = c0188a;
                this.c = str;
                this.d = str2;
                this.e = str3;
                this.f = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindVaneWebView b;
                a.C0188a c0188a;
                if (this.f9378a != null && (c0188a = this.b) != null) {
                    c0188a.a(true);
                    ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager.setTemplatePreLoadDone(this.c + "_" + this.d + "_" + this.e, true);
                    o oVar = this.f9378a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.c);
                    sb.append("_");
                    sb.append(this.e);
                    oVar.a(sb.toString(), this.f, this.c, this.d, this.e, this.b);
                }
                a.C0188a c0188a2 = this.b;
                if (c0188a2 != null && (b = c0188a2.b()) != null) {
                    try {
                        b.release();
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("WindVaneWebView", e.getMessage());
                        }
                    }
                }
            }
        }

        public p(Handler handler, Runnable runnable, boolean z, boolean z2, String str, o oVar, WindVaneWebView windVaneWebView, String str2, String str3, String str4, a.C0188a c0188a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, long j) {
            this.f9376a = handler;
            this.b = runnable;
            this.c = z;
            this.d = z2;
            this.e = str;
            this.f = oVar;
            this.g = windVaneWebView;
            this.h = str2;
            this.i = str4;
            this.j = str3;
            this.k = c0188a;
            this.l = campaignEx;
            this.m = copyOnWriteArrayList;
            this.n = j;
            a aVar = new a(oVar, c0188a, str4, str, str2, str3);
            this.r = aVar;
            this.q = new RunnableC0138b(oVar, c0188a, str4, str, str2, str3);
            if (handler != null) {
                handler.postDelayed(aVar, 5000L);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            Handler handler;
            Runnable runnable;
            Runnable runnable2;
            super.a(webView, i);
            Handler handler2 = this.f9376a;
            if (handler2 != null && (runnable2 = this.q) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.f9376a;
            if (handler3 != null && (runnable = this.r) != null) {
                handler3.removeCallbacks(runnable);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 2);
                eVar.a("result", Integer.valueOf(i));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.l, eVar);
            } catch (Throwable th) {
                o0.b("WindVaneWebView", th.getMessage());
            }
            if (this.p) {
                return;
            }
            String str = this.i + "_" + this.h;
            if (i == 1) {
                Runnable runnable3 = this.b;
                if (runnable3 != null && (handler = this.f9376a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.i + "_" + this.e + "_" + this.h, true);
                a.C0188a c0188a = this.k;
                if (c0188a != null) {
                    c0188a.a(true);
                }
                if (this.c) {
                    if (this.d) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.l.getRequestIdNotice(), this.k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.l.getRequestIdNotice(), this.k);
                    }
                } else if (this.d) {
                    com.mbridge.msdk.videocommon.a.a(94, this.l.getRequestIdNotice(), this.k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.l.getRequestIdNotice(), this.k);
                }
                o oVar = this.f;
                if (oVar != null) {
                    oVar.a(str, this.j, this.i, this.e, this.h, this.k);
                }
            } else if (this.f != null) {
                this.f.a(str, this.e, this.h, this.k, b.b(880009, new MBridgeIds(this.j, this.i, this.e), "readyState:" + i, null, this.l));
            }
            this.p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.i + "_" + this.e + "_" + this.h, false);
            Handler handler = this.f9376a;
            if (handler != null) {
                if (this.q != null) {
                    handler.removeCallbacks(this.r);
                }
                Runnable runnable = this.q;
                if (runnable != null) {
                    this.f9376a.removeCallbacks(runnable);
                }
            }
            try {
                String str3 = this.i + "_" + this.h;
                a.C0188a c0188a = this.k;
                if (c0188a != null) {
                    c0188a.a(false);
                }
                if (this.f != null) {
                    this.f.a(str3, this.e, str2, this.k, b.b(880009, new MBridgeIds(this.j, this.i, this.e), i + "#" + str, null, this.l));
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("WindVaneWebView", e.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.i + "_" + this.e + "_" + this.h, false);
            Handler handler = this.f9376a;
            if (handler != null) {
                if (this.q != null) {
                    handler.removeCallbacks(this.r);
                }
                Runnable runnable = this.q;
                if (runnable != null) {
                    this.f9376a.removeCallbacks(runnable);
                }
            }
            try {
                String str = this.i + "_" + this.h;
                a.C0188a c0188a = this.k;
                if (c0188a != null) {
                    c0188a.a(false);
                }
                if (this.f != null) {
                    MBridgeIds mBridgeIds = new MBridgeIds(this.j, this.i, this.e);
                    StringBuilder sb = new StringBuilder();
                    sb.append("onReceivedSslError:");
                    sb.append(sslError == null ? "" : Integer.valueOf(sslError.getPrimaryError()));
                    this.f.a(str, this.e, this.h, this.k, b.b(880009, mBridgeIds, sb.toString(), null, this.l));
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("WindVaneWebView", e.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            Runnable runnable;
            Handler handler;
            Runnable runnable2;
            super.a(webView, str);
            Handler handler2 = this.f9376a;
            if (handler2 != null && (runnable2 = this.r) != null) {
                handler2.removeCallbacks(runnable2);
            }
            if (this.o) {
                return;
            }
            if (!str.contains("wfr=1")) {
                String str2 = this.i + "_" + this.h;
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.i + "_" + this.e + "_" + this.h, true);
                Runnable runnable3 = this.b;
                if (runnable3 != null && (handler = this.f9376a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                a.C0188a c0188a = this.k;
                if (c0188a != null) {
                    c0188a.a(true);
                }
                if (this.c) {
                    if (this.l.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.l.getRequestIdNotice(), this.k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.l.getRequestIdNotice(), this.k);
                    }
                } else if (this.l.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.l.getRequestIdNotice(), this.k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.l.getRequestIdNotice(), this.k);
                }
                o oVar = this.f;
                if (oVar != null) {
                    oVar.a(str2, this.j, this.i, this.e, this.h, this.k);
                }
            } else {
                Handler handler3 = this.f9376a;
                if (handler3 != null && (runnable = this.q) != null) {
                    handler3.postDelayed(runnable, 5000L);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.o = true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class q extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        private String f9379a;
        private final boolean b;
        private final WindVaneWebView c;
        private final String d;
        private final String e;
        private final a.C0188a f;
        private final CampaignEx g;
        private boolean h;
        private String i;
        private boolean j;
        private boolean k;

        public q(String str, boolean z, WindVaneWebView windVaneWebView, String str2, String str3, a.C0188a c0188a, CampaignEx campaignEx, boolean z2, String str4) {
            this.b = z;
            this.c = windVaneWebView;
            this.d = str2;
            this.e = str3;
            this.f = c0188a;
            this.g = campaignEx;
            this.f9379a = str;
            this.h = z2;
            this.i = str4;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 2);
                eVar.a("result", Integer.valueOf(i));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.g, eVar);
            } catch (Throwable th) {
                o0.b("WindVaneWebView", th.getMessage());
            }
            if (this.k) {
                return;
            }
            if (this.c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f9379a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i);
                    jSONObject2.put("error", "");
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e.getLocalizedMessage());
                    }
                }
            }
            String str = this.e + "_" + this.g.getId() + "_" + this.g.getRequestId() + "_" + this.d;
            if (i == 1) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.e + "_" + this.i + "_" + this.d, true);
                a.C0188a c0188a = this.f;
                if (c0188a != null) {
                    c0188a.a(true);
                }
                if (this.b) {
                    if (this.g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(str, this.f, false, this.h);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str, this.f, false, this.h);
                    }
                } else if (this.g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(str, this.f, false, this.h);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str, this.f, false, this.h);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.e + "_" + this.i + "_" + this.d, false);
                a.C0188a c0188a2 = this.f;
                if (c0188a2 != null) {
                    c0188a2.a(false);
                }
            }
            this.k = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
            resDownloadCheckManager.setTemplatePreLoadDone(this.e + "_" + this.i + "_" + this.d, false);
            a.C0188a c0188a = this.f;
            if (c0188a != null) {
                c0188a.a(false);
            }
            if (this.c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f9379a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e.getLocalizedMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            if (this.j) {
                return;
            }
            if (!str.contains("wfr=1")) {
                if (this.c != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", this.f9379a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.c, "componentReact", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("WindVaneWebView", e.getLocalizedMessage());
                        }
                    }
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.e + "_" + this.i + "_" + this.d, true);
                a.C0188a c0188a = this.f;
                if (c0188a != null) {
                    c0188a.a(true);
                }
                String str2 = this.e + "_" + this.g.getId() + "_" + this.g.getRequestId() + "_" + this.d;
                if (this.b) {
                    if (this.g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.g.getRequestIdNotice(), this.f);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str2, this.f, false, this.h);
                    }
                } else if (this.g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.g.getRequestIdNotice(), this.f);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str2, this.f, false, this.h);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.j = true;
        }
    }

    public synchronized void a(Context context, CampaignEx campaignEx, String str, String str2, String str3, n nVar) {
        try {
            this.f9359a.a(context);
            if (campaignEx != null) {
                String cMPTEntryUrl = campaignEx.getCMPTEntryUrl();
                if (campaignEx.isDynamicView()) {
                    if (t0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, cMPTEntryUrl)) {
                        int mof_tplid = campaignEx.getMof_tplid();
                        a(0, campaignEx, mof_tplid + "", cMPTEntryUrl);
                    }
                    ResDownloadCheckManager.getInstance().setZipDownloadDone(cMPTEntryUrl, true);
                    Message obtain = Message.obtain();
                    obtain.what = 105;
                    Bundle bundle = new Bundle();
                    bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                    bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                    bundle.putString("request_id", str3);
                    bundle.putString("key", str2 + "_" + str3 + "_" + campaignEx.getSecondRequestIndex());
                    bundle.putString("url", cMPTEntryUrl);
                    obtain.setData(bundle);
                    this.f9359a.sendMessage(obtain);
                    if (nVar != null) {
                        nVar.a(str, str2, str3, cMPTEntryUrl);
                    }
                    return;
                }
            }
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.c a2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid());
                    if (a2 == null) {
                        a2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.c cVar = a2;
                    cVar.a(campaignEx);
                    cVar.e(1);
                    cVar.f(a(campaignEx));
                    H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getCMPTEntryUrl(), new c(str2, str, str3, campaignEx, nVar, context));
                } catch (Exception e2) {
                    o0.b("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, int i2, CampaignEx campaignEx, String str, String str2, String str3, String str4) {
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(campaignEx, context, i2, str, str2, str3, str4));
    }

    public synchronized void a(boolean z, Handler handler, boolean z2, boolean z3, WindVaneWebView windVaneWebView, String str, int i2, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, String str4, String str5, String str6, com.mbridge.msdk.videocommon.setting.c cVar, o oVar) {
        String str7;
        String str8;
        a.C0188a c0188a;
        com.mbridge.msdk.video.signal.impl.k kVar;
        String str9 = str4;
        synchronized (this) {
            String str10 = str9 + "_" + str;
            long currentTimeMillis = System.currentTimeMillis();
            try {
            } catch (Exception e2) {
                e = e2;
                str7 = str5;
                str8 = str10;
            }
            if (t0.i(str)) {
                if (oVar != null) {
                    try {
                        oVar.a(str10, str3, str9, str5, str, null);
                    } catch (Exception e3) {
                        e = e3;
                        str8 = str10;
                    }
                }
                return;
            }
            str8 = str10;
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
                c0188a = new a.C0188a();
            } catch (Exception e4) {
                e = e4;
            }
            try {
                try {
                    WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                    if (campaignEx != null) {
                        windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
                    }
                    windVaneWebView2.setTempTypeForMetrics(2);
                    try {
                        c0188a.a(windVaneWebView2);
                        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                            kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                        } else {
                            kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                        }
                        com.mbridge.msdk.video.signal.impl.k kVar2 = kVar;
                        kVar2.g(i2);
                        kVar2.setUnitId(str9);
                        kVar2.setRewardUnitSetting(cVar);
                        kVar2.d(z);
                        str7 = str5;
                        try {
                            windVaneWebView2.setWebViewListener(new p(handler, null, z2, z3, str7, oVar, windVaneWebView, str, str3, str9, c0188a, campaignEx, copyOnWriteArrayList, currentTimeMillis));
                            windVaneWebView2.setObject(kVar2);
                            windVaneWebView2.loadUrl(str2);
                            JSHookAop.loadUrl(windVaneWebView2, str2);
                            windVaneWebView2.setRid(str7);
                        } catch (Exception e5) {
                            e = e5;
                            str9 = str9;
                        }
                    } catch (Exception e6) {
                        e = e6;
                    }
                } catch (Exception e7) {
                    e = e7;
                }
            } catch (Exception unused) {
                if (oVar != null) {
                    c0188a.a(true);
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str9 + "_" + str5 + "_" + str, true);
                    StringBuilder sb = new StringBuilder();
                    sb.append(str9);
                    sb.append("_");
                    sb.append(str);
                    oVar.a(sb.toString(), str3, str9, str5, str, c0188a);
                    return;
                }
                return;
            } catch (Throwable unused2) {
                if (oVar != null) {
                    c0188a.a(true);
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str9 + "_" + str5 + "_" + str, true);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str9);
                    sb2.append("_");
                    sb2.append(str);
                    oVar.a(sb2.toString(), str3, str9, str5, str, c0188a);
                    return;
                }
                return;
            }
            str7 = str5;
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
            }
            if (oVar != null) {
                oVar.a(str8, str7, str, null, b(880009, new MBridgeIds(str3, str9, str7), "", e, campaignEx));
            }
        }
    }

    public synchronized void a(boolean z, Handler handler, boolean z2, boolean z3, String str, String str2, String str3, String str4, String str5, int i2, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str6, String str7, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z4) {
        String str8;
        a.C0188a c0188a;
        WindVaneWebView windVaneWebView;
        String b;
        String b2;
        com.mbridge.msdk.video.signal.impl.k kVar;
        com.mbridge.msdk.video.signal.impl.k kVar2;
        String str9 = str4;
        synchronized (this) {
            this.b = z4;
            long currentTimeMillis = System.currentTimeMillis();
            String str10 = str9 + "_" + str5;
            this.b = z4;
            if (t0.i(str5)) {
                if (oVar != null) {
                    oVar.a(str10, str3, str9, str, str5, null);
                }
                return;
            }
            try {
                o0.a("RewardCampaignsResourceManager", "开始预加载大模板资源");
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
                c0188a = new a.C0188a();
                windVaneWebView = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                if (campaignEx != null) {
                    windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
                }
                windVaneWebView.setTempTypeForMetrics(1);
                c0188a.a(windVaneWebView);
                b = com.mbridge.msdk.video.bt.component.d.c().b();
                b2 = com.mbridge.msdk.video.bt.component.d.c().b();
                c0188a.a(b2);
                if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                    CopyOnWriteArrayList<CampaignEx> b3 = com.mbridge.msdk.videocommon.download.b.getInstance().b(str9);
                    if (b3 != null && b3.size() > 0) {
                        for (int i3 = 0; i3 < copyOnWriteArrayList.size(); i3++) {
                            CampaignEx campaignEx2 = copyOnWriteArrayList.get(i3);
                            for (CampaignEx campaignEx3 : b3) {
                                if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                    campaignEx2.setReady(true);
                                    copyOnWriteArrayList.set(i3, campaignEx2);
                                }
                            }
                        }
                    }
                    kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                } else {
                    kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                }
                kVar.g(i2);
                kVar.setUnitId(str7);
                kVar.c(b2);
                kVar.d(b);
                kVar.c(true);
                kVar.setRewardUnitSetting(cVar);
                kVar.d(z);
                kVar2 = kVar;
                try {
                    str9 = str4;
                    str8 = str;
                } catch (Exception e2) {
                    e = e2;
                    str9 = str4;
                    str8 = str;
                }
            } catch (Exception e3) {
                e = e3;
                str8 = str;
            }
            try {
                windVaneWebView.setWebViewListener(new g(z, handler, null, z2, z3, i2, str5, str3, str4, str, c0188a, campaignEx, copyOnWriteArrayList, cVar, oVar, z4, currentTimeMillis));
                windVaneWebView.setObject(kVar2);
                windVaneWebView.loadUrl(str6);
                JSHookAop.loadUrl(windVaneWebView, str6);
                windVaneWebView.setRid(str8);
                MBridgeBTRootLayout mBridgeBTRootLayout = new MBridgeBTRootLayout(com.mbridge.msdk.foundation.controller.c.m().d());
                mBridgeBTRootLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                mBridgeBTRootLayout.setInstanceId(b);
                mBridgeBTRootLayout.setUnitId(str9);
                MBridgeBTLayout mBridgeBTLayout = new MBridgeBTLayout(com.mbridge.msdk.foundation.controller.c.m().d());
                mBridgeBTLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                mBridgeBTLayout.setInstanceId(b2);
                mBridgeBTLayout.setUnitId(str9);
                mBridgeBTLayout.setWebView(windVaneWebView);
                LinkedHashMap<String, View> b4 = com.mbridge.msdk.video.bt.component.d.c().b(str9, str8);
                b4.put(b2, mBridgeBTLayout);
                b4.put(b, mBridgeBTRootLayout);
                mBridgeBTRootLayout.addView(mBridgeBTLayout, new FrameLayout.LayoutParams(-1, -1));
            } catch (Exception e4) {
                e = e4;
                if (oVar != null) {
                    oVar.a(str10, str8, str5, null, b(880008, new MBridgeIds(str3, str9, str8), "", e, campaignEx));
                }
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, String str, String str2, int i2) {
        if (windVaneWebView != null) {
            if (campaignEx != null && cVar != null && campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", str2);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "data is null");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                        return;
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                            return;
                        }
                        return;
                    }
                } else if (!TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) && campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY)) {
                    o0.a("RewardCampaignsResourceManager", "getTeamplateUrl contains cmpt=1");
                    return;
                } else {
                    new Handler(Looper.getMainLooper()).postDelayed(new e(z, windVaneWebView, campaignEx, copyOnWriteArrayList, str, cVar, str2), i2 * 1000);
                    return;
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", str2);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("result", 2);
                jSONObject4.put("error", "data is null");
                jSONObject3.put("data", jSONObject4);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e3.getLocalizedMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, WindVaneWebView windVaneWebView, String str, int i2, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, com.mbridge.msdk.videocommon.setting.c cVar, String str4, boolean z2) {
        com.mbridge.msdk.video.signal.impl.k kVar;
        String str5;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            a.C0188a c0188a = new a.C0188a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            if (campaignEx != null) {
                windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
            }
            windVaneWebView2.setTempTypeForMetrics(2);
            c0188a.a(windVaneWebView2);
            String str6 = "";
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                CopyOnWriteArrayList<CampaignEx> b = com.mbridge.msdk.videocommon.download.b.getInstance().b(str3);
                if (b != null && b.size() > 0) {
                    for (int i3 = 0; i3 < copyOnWriteArrayList.size(); i3++) {
                        CampaignEx campaignEx2 = copyOnWriteArrayList.get(i3);
                        for (CampaignEx campaignEx3 : b) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i3, campaignEx2);
                            }
                        }
                    }
                }
                com.mbridge.msdk.video.signal.impl.k kVar2 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                str5 = copyOnWriteArrayList.get(0).getRequestId();
                kVar = kVar2;
            } else {
                com.mbridge.msdk.video.signal.impl.k kVar3 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                if (campaignEx != null) {
                    str6 = campaignEx.getRequestId();
                }
                kVar = kVar3;
                str5 = str6;
            }
            kVar.g(i2);
            kVar.setUnitId(str3);
            kVar.c(str4);
            kVar.setRewardUnitSetting(cVar);
            kVar.d(z);
            windVaneWebView2.setWebViewListener(new q(str4, false, windVaneWebView, str, str3, c0188a, campaignEx, z2, str5));
            windVaneWebView2.setObject(kVar);
            windVaneWebView2.loadUrl(str2);
            JSHookAop.loadUrl(windVaneWebView2, str2);
            windVaneWebView2.setRid(str5);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e2.getLocalizedMessage());
            }
        }
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
                return 0;
            } catch (Throwable th) {
                o0.b("RewardCampaignsResourceManager", th.getMessage());
                return 0;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(CampaignEx campaignEx, int i2) {
        com.mbridge.msdk.foundation.same.report.metrics.c a2 = campaignEx != null ? com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid()) : null;
        if (a2 == null) {
            a2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        a2.a(campaignEx);
        a2.f(a(campaignEx));
        a2.e(i2);
        return a2;
    }
}
