package com.mbridge.msdk.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.AdError;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBridgeH5EndCardView extends MBridgeH5EndCardViewDiff {
    private int A;
    private long B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private String K;
    Handler L;
    private boolean M;
    private boolean N;
    boolean O;
    protected View m;
    protected RelativeLayout n;
    protected ImageView o;
    protected WindVaneWebView p;
    private boolean q;
    protected Handler r;
    protected String s;
    protected boolean t;
    protected boolean u;
    private boolean v;
    private int w;
    private int x;
    private boolean y;
    private boolean z;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 100) {
                return;
            }
            if (MBridgeH5EndCardView.this.C) {
                MBridgeH5EndCardView.this.notifyListener.a(122, "");
            }
            MBridgeH5EndCardView.this.notifyListener.a(103, "");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            MBridgeH5EndCardView.this.onCloseViewClick();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                o0.a(MBridgeBaseView.TAG, "webviewshow");
                int[] iArr = new int[2];
                MBridgeH5EndCardView.this.p.getLocationOnScreen(iArr);
                o0.b(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                JSONObject jSONObject = new JSONObject();
                Context d = com.mbridge.msdk.foundation.controller.c.m().d();
                if (d != null) {
                    jSONObject.put("startX", t0.b(d, iArr[0]));
                    jSONObject.put("startY", t0.b(d, iArr[1]));
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.l, t0.d(d));
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.p, "webviewshow", Base64.encodeToString(jSONObject.toString().toString().getBytes(), 2));
                MBridgeH5EndCardView.this.notifyListener.a(109, "");
                MBridgeH5EndCardView.this.i();
                MBridgeH5EndCardView.this.startCounterEndCardShowTimer();
                com.mbridge.msdk.mbsignalcommon.windvane.f a2 = com.mbridge.msdk.mbsignalcommon.windvane.f.a();
                MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
                a2.a((WebView) mBridgeH5EndCardView.p, "oncutoutfetched", Base64.encodeToString(mBridgeH5EndCardView.K.getBytes(), 0));
                MBridgeH5EndCardView.this.e();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f9834a;

        public f(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f9834a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Handler handler;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e) {
                o0.b("CloseRunnable", e.getMessage());
            }
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f9834a;
            if (mBridgeH5EndCardView != null && (handler = mBridgeH5EndCardView.L) != null) {
                handler.sendEmptyMessage(100);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f9835a;

        public g(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f9835a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f9835a;
            if (mBridgeH5EndCardView != null && !mBridgeH5EndCardView.z) {
                this.f9835a.z = true;
                this.f9835a.t = false;
                MBridgeH5EndCardView.this.reportRenderResult("timeout", 5);
                this.f9835a.notifyListener.a(127, "");
                o0.a(MBridgeBaseView.TAG, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f9836a;
        private int b;

        public h(MBridgeH5EndCardView mBridgeH5EndCardView, int i) {
            this.f9836a = mBridgeH5EndCardView;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f9836a;
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.b != null) {
                try {
                    if (!mBridgeH5EndCardView.y) {
                        this.f9836a.y = true;
                        if (y0.b(this.f9836a.b.getendcard_url()) && this.f9836a.b.getendcard_url().contains(".zip")) {
                            str = "1";
                        } else {
                            str = "2";
                        }
                        m mVar = new m("m_download_end", 12, (this.b * 1000) + "", this.f9836a.b.getendcard_url(), this.f9836a.b.getId(), this.f9836a.unitId, "ready timeout", str);
                        try {
                            if (this.f9836a.b.getAdType() == 287) {
                                mVar.a("3");
                            } else if (this.f9836a.b.getAdType() == 94) {
                                mVar.a("1");
                            } else if (this.f9836a.b.getAdType() == 42) {
                                mVar.a("2");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        mVar.n(this.f9836a.b.getRequestId());
                        mVar.k(this.f9836a.b.getCurrentLocalRid());
                        mVar.o(this.f9836a.b.getRequestIdNotice());
                        mVar.a(this.f9836a.b.getAdSpaceT());
                        this.f9836a.isLoadSuccess();
                        return;
                    }
                    o0.c(MBridgeBaseView.TAG, "insertEndCardReadyState hasInsertLoadEndCardReport true return");
                } catch (Throwable th) {
                    o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f9837a;

        public i(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f9837a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f9837a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.G = true;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f9838a;

        public j(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f9838a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f9838a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.H = true;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f9839a;

        public k(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f9839a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f9839a;
            if (mBridgeH5EndCardView != null) {
                if (!mBridgeH5EndCardView.I) {
                    MBridgeH5EndCardView.this.setCloseVisible(0);
                }
                this.f9839a.D = true;
            }
        }
    }

    public MBridgeH5EndCardView(Context context) {
        super(context);
        this.q = false;
        this.r = new Handler();
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = 1;
        this.x = 1;
        this.y = false;
        this.z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isMraid()) {
            int i2 = getResources().getConfiguration().orientation;
            String str = AdError.UNDEFINED_DOMAIN;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        str = "landscape";
                    }
                } else {
                    str = "portrait";
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("orientation", str);
                jSONObject.put("locked", "true");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "Interstitial");
            hashMap.put("state", "default");
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            if (getContext() instanceof Activity) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.p, k0.n(getContext()), k0.m(getContext()));
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.p, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            com.mbridge.msdk.mbsignalcommon.mraid.a a2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.p;
            a2.b(windVaneWebView, windVaneWebView.getLeft(), this.p.getTop(), this.p.getWidth(), this.p.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a a3 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.p;
            a3.a(windVaneWebView2, windVaneWebView2.getLeft(), this.p.getTop(), this.p.getWidth(), this.p.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.p, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.p, com.mbridge.msdk.mbsignalcommon.mraid.d.f);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.p);
        }
    }

    public boolean canBackPress() {
        ImageView imageView = this.o;
        if (imageView != null && imageView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        try {
            onCloseViewClick();
        } catch (Exception e2) {
            o0.b(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    public void excuteEndCardShowTask(int i2) {
        this.r.postDelayed(new h(this, i2), i2 * 1000);
    }

    public void excuteTask() {
        if (!this.v && this.w > -1) {
            this.r.postDelayed(new k(this), this.w * 1000);
        }
    }

    public void executeEndCardShow(int i2) {
        this.r.postDelayed(new g(this), i2 * 1000);
    }

    public RelativeLayout.LayoutParams getContentLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.b;
    }

    public String getURL() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            this.C = true;
            if (campaignEx.isMraid()) {
                this.v = false;
                String mraid = this.b.getMraid();
                if (!TextUtils.isEmpty(mraid)) {
                    File file = new File(mraid);
                    try {
                        if (file.exists() && file.isFile() && file.canRead()) {
                            return "file:////" + mraid;
                        }
                        return this.b.getEndScreenUrl();
                    } catch (Throwable th) {
                        if (MBridgeConstans.DEBUG) {
                            th.printStackTrace();
                        }
                        return mraid;
                    }
                }
                return this.b.getEndScreenUrl();
            }
            String str = this.b.getendcard_url();
            if (!y0.a(str)) {
                this.v = true;
                String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(str);
                if (TextUtils.isEmpty(h5ResAddress)) {
                    try {
                        String path = Uri.parse(str).getPath();
                        if (!TextUtils.isEmpty(path) && path.toLowerCase().endsWith(".zip")) {
                            String endScreenUrl = this.b.getEndScreenUrl();
                            if (TextUtils.isEmpty(endScreenUrl)) {
                                return null;
                            }
                            this.v = false;
                            excuteTask();
                            return endScreenUrl;
                        }
                    } catch (Throwable th2) {
                        o0.b(MBridgeBaseView.TAG, th2.getMessage());
                    }
                    return str + "&native_adtype=" + this.b.getAdType();
                }
                return h5ResAddress + "&native_adtype=" + this.b.getAdType();
            }
            this.v = false;
            return this.b.getEndScreenUrl();
        }
        this.C = false;
        return null;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void handlerPlayableException(String str) {
        if (!this.u) {
            this.u = true;
            this.t = false;
            if (this.b != null) {
                m mVar = new m();
                mVar.n(this.b.getRequestId());
                mVar.o(this.b.getRequestIdNotice());
                mVar.b(this.b.getId());
                mVar.m(str);
                com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f9822a.getApplicationContext(), this.unitId);
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int findLayout = findLayout("mbridge_reward_endcard_h5");
        if (g0.a(findLayout)) {
            View inflate = this.c.inflate(findLayout, (ViewGroup) null);
            this.m = inflate;
            try {
                this.e = a(inflate);
            } catch (Exception unused) {
                this.e = false;
            }
            addView(this.m, getContentLayoutParams());
            d();
            j();
        }
    }

    public boolean isLoadSuccess() {
        return this.t;
    }

    public boolean isPlayable() {
        return this.v;
    }

    public void j() {
        if (this.e) {
            setMatchParent();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            this.F = true;
            return;
        }
        this.E = true;
    }

    public void onBackPress() {
        boolean z;
        if (!this.D && ((!(z = this.E) || !this.F) && ((z || !this.G || this.O) && (z || !this.H || !this.O)))) {
            return;
        }
        onCloseViewClick();
    }

    public void onCloseViewClick() {
        try {
            if (this.p != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.p, "onSystemDestory", "");
                new Thread(new f(this)).start();
            } else {
                this.notifyListener.a(103, "");
                this.notifyListener.a(119, "webview is null when closing webview");
            }
        } catch (Exception e2) {
            this.notifyListener.a(103, "");
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            aVar.a(119, "close webview exception" + e2.getMessage());
            o0.a(MBridgeBaseView.TAG, e2.getMessage());
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.b);
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        s0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        s0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        orientation(configuration);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        s0.b(campaign, this);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0 && !this.J) {
            this.J = true;
            setFocusableInTouchMode(true);
            requestFocus();
            requestFocusFromTouch();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isMraid()) {
            if (z) {
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.p, "true");
            } else {
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.p, "false");
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        super.open(str);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void orientation(Configuration configuration) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", "landscape");
            } else {
                jSONObject.put("orientation", "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.p, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        boolean z;
        String url = getURL();
        if (this.e && this.b != null && !TextUtils.isEmpty(url) && this.p != null) {
            this.B = System.currentTimeMillis();
            try {
                reportRenderResult("start", 0);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.b);
            aVar.a(this.b.getAppName());
            this.p.setDownloadListener(aVar);
            this.p.setCampaignId(this.b.getId());
            this.p.setTempTypeForMetrics(3);
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                this.p.setCampaignEx(campaignEx);
            }
            setCloseVisible(8);
            this.p.setApiManagerJSFactory(bVar);
            if (this.b.isMraid()) {
                this.p.setMraidObject(this);
            }
            if (!url.contains("wfr=1") && !url.contains("wfl=1")) {
                z = false;
            } else {
                z = true;
            }
            this.p.setWebViewListener(new c(z));
            if (TextUtils.isEmpty(this.b.getMraid())) {
                h();
            }
            setHtmlSource(HTMLResourceManager.getInstance().getHtmlContentFromUrl(url));
            if (TextUtils.isEmpty(this.s)) {
                WindVaneWebView windVaneWebView = this.p;
                windVaneWebView.loadUrl(url);
                JSHookAop.loadUrl(windVaneWebView, url);
            } else {
                WindVaneWebView windVaneWebView2 = this.p;
                String str = this.s;
                windVaneWebView2.loadDataWithBaseURL(url, str, "text/html", "UTF-8", null);
                JSHookAop.loadDataWithBaseURL(windVaneWebView2, url, str, "text/html", "UTF-8", null);
            }
        } else {
            reportRenderResult("PL URL IS NULL", 3);
            this.notifyListener.a(127, "");
            this.notifyListener.a(129, "");
        }
        this.O = false;
    }

    public void release() {
        Handler handler = this.r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.r = null;
        }
        Handler handler2 = this.L;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.L = null;
        }
        this.n.removeAllViews();
        this.p.release();
        this.p = null;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void reportOpen(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.unitId, str, this.b.isBidCampaign());
        }
    }

    public void reportRenderResult(String str, int i2) {
        if (this.b != null && !this.u) {
            m mVar = new m();
            mVar.n(this.b.getRequestId());
            mVar.o(this.b.getRequestIdNotice());
            mVar.b(this.b.getId());
            mVar.d(i2);
            mVar.e(String.valueOf(System.currentTimeMillis() - this.B));
            mVar.m(str);
            String str2 = "2";
            if (this.b.getAdType() == 287) {
                mVar.a("3");
            } else if (this.b.getAdType() == 94) {
                mVar.a("1");
            } else if (this.b.getAdType() == 42) {
                mVar.a("2");
            }
            if (this.b.isMraid()) {
                mVar.b(m.N);
            } else {
                mVar.g(this.b.getendcard_url());
                if (y0.b(this.b.getendcard_url()) && this.b.getendcard_url().contains(".zip")) {
                    str2 = "1";
                }
                mVar.f(str2);
                mVar.b(m.O);
            }
            com.mbridge.msdk.foundation.same.report.g.b(mVar, this.unitId, this.b);
        }
    }

    public void setCloseDelayShowTime(int i2) {
        this.w = i2;
    }

    public void setCloseVisible(int i2) {
        if (this.e) {
            this.o.setVisibility(i2);
        }
    }

    public void setCloseVisibleForMraid(int i2) {
        if (this.e) {
            this.I = true;
            if (i2 == 4) {
                this.o.setImageDrawable(new ColorDrawable(16711680));
            } else {
                this.o.setImageResource(findDrawable("mbridge_reward_close"));
            }
            this.o.setVisibility(0);
        }
    }

    public void setError(boolean z) {
        this.u = z;
    }

    public void setHtmlSource(String str) {
        this.s = str;
    }

    public void setLoadPlayable(boolean z) {
        this.O = z;
    }

    public void setNotchValue(String str, int i2, int i3, int i4, int i5) {
        if (!TextUtils.isEmpty(str)) {
            this.K = str;
        }
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.getAdSpaceT() != 2) {
            o0.b(MBridgeBaseView.TAG, "NOTCH H5ENDCARD " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.o.getLayoutParams();
            int a2 = t0.a(getContext(), 20.0f);
            layoutParams.setMargins(i2 + a2, i4 + a2, i3 + a2, i5 + a2);
            this.o.setLayoutParams(layoutParams);
        }
    }

    public void setPlayCloseBtnTm(int i2) {
        this.x = i2;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }

    public void startCounterEndCardShowTimer() {
        try {
            String str = this.b.getendcard_url();
            if (y0.b(str) && str.contains("wfl=1")) {
                String[] split = str.split("&");
                int i2 = 15;
                if (split != null && split.length > 0) {
                    for (String str2 : split) {
                        if (y0.b(str2) && str2.contains("timeout") && str2.split("=") != null && str2.split("=").length > 0) {
                            i2 = t0.a((Object) str2.split("=")[1]);
                        }
                    }
                }
                executeEndCardShow(i2);
            }
        } catch (Throwable th) {
            o0.a(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i2) {
        int visibility = this.o.getVisibility();
        if (i2 != 1) {
            if (i2 == 2) {
                this.D = false;
                if (this.O) {
                    g();
                } else {
                    f();
                }
                visibility = 8;
            }
        } else {
            this.D = true;
            visibility = 0;
        }
        setCloseVisible(visibility);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z) {
        int i2;
        if (z) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        try {
            setCloseVisibleForMraid(i2);
        } catch (Exception e2) {
            o0.b(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void volumeChange(double d2) {
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.p, d2);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.p;
        if (windVaneWebView != null) {
            windVaneWebView.post(new d());
        }
    }

    private void f() {
        if (this.M || this.E) {
            return;
        }
        this.M = true;
        int i2 = this.w;
        if (i2 == 0) {
            this.G = true;
            return;
        }
        this.G = false;
        if (i2 > -1) {
            this.r.postDelayed(new i(this), this.w * 1000);
        }
    }

    private void g() {
        if (this.N || this.E) {
            return;
        }
        this.N = true;
        int i2 = this.x;
        if (i2 == 0) {
            this.H = true;
            return;
        }
        this.H = false;
        if (i2 > -1) {
            this.r.postDelayed(new j(this), this.x * 1000);
        }
    }

    private void h() {
        int v;
        try {
            this.B = System.currentTimeMillis();
            String str = this.b.getendcard_url();
            com.mbridge.msdk.videocommon.setting.c c2 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.unitId);
            if (this.v && y0.b(str)) {
                if (!str.contains("wfr=1") && (c2 == null || c2.v() <= 0)) {
                    return;
                }
                if (str.contains("wfr=1")) {
                    String[] split = str.split("&");
                    if (split != null && split.length > 0) {
                        for (String str2 : split) {
                            if (y0.b(str2) && str2.contains(TypedValues.TransitionType.S_TO) && str2.split("=") != null && str2.split("=").length > 0) {
                                v = t0.a((Object) str2.split("=")[1]);
                                break;
                            }
                        }
                    }
                    v = 20;
                } else {
                    if (c2 != null && c2.v() > 0) {
                        v = c2.v();
                    }
                    v = 20;
                }
                if (v >= 0) {
                    excuteEndCardShowTask(v);
                } else {
                    excuteEndCardShowTask(20);
                }
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                campaignEx.setCampaignUnitId(this.unitId);
                com.mbridge.msdk.foundation.feedback.b b2 = com.mbridge.msdk.foundation.feedback.b.b();
                b2.d(this.unitId + "_1");
                com.mbridge.msdk.foundation.feedback.b b3 = com.mbridge.msdk.foundation.feedback.b.b();
                b3.a(this.unitId + "_2", this.b);
            }
            CampaignEx campaignEx2 = this.b;
            if (campaignEx2 == null || !campaignEx2.isMraid()) {
                return;
            }
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            imageView.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_notice", "drawable"));
            ImageView imageView2 = this.o;
            RelativeLayout.LayoutParams layoutParams = imageView2 != null ? (RelativeLayout.LayoutParams) imageView2.getLayoutParams() : null;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.addRule(9);
            layoutParams2.addRule(10);
            if (layoutParams != null) {
                layoutParams2.leftMargin = layoutParams.rightMargin;
                layoutParams2.topMargin = layoutParams.topMargin;
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            } else {
                layoutParams2.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
                layoutParams2.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
            }
            addView(imageView, layoutParams2);
            t0.a(4, imageView, this.b, com.mbridge.msdk.foundation.controller.c.m().d(), false, new e());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        super.d();
        if (this.e) {
            this.o.setOnClickListener(new b());
        }
    }

    private boolean a(View view) {
        this.o = (ImageView) view.findViewById(findID("mbridge_windwv_close"));
        this.n = (RelativeLayout) view.findViewById(findID("mbridge_windwv_content_rl"));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext());
        this.p = windVaneWebView;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
        }
        this.p.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.n.addView(this.p);
        return isNotNULL(this.o, this.p);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e implements com.mbridge.msdk.foundation.feedback.a {
        public e() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th) {
                o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.p, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th) {
                o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.p, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th) {
                o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.p, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(14:7|8|(1:50)(1:12)|13|(1:15)(2:46|(1:48)(9:49|17|18|19|20|(1:22)(2:37|(1:39)(2:40|(1:42)))|23|24|(1:34)(4:27|(1:29)(1:33)|30|32)))|16|17|18|19|20|(0)(0)|23|24|(1:34)(1:35)) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c A[Catch: all -> 0x0029, NullPointerException -> 0x0082, TryCatch #0 {NullPointerException -> 0x0082, blocks: (B:24:0x0072, B:26:0x007c, B:29:0x0084, B:31:0x008e, B:32:0x0092, B:34:0x009c), top: B:49:0x0072, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084 A[Catch: all -> 0x0029, NullPointerException -> 0x0082, TryCatch #0 {NullPointerException -> 0x0082, blocks: (B:24:0x0072, B:26:0x007c, B:29:0x0084, B:31:0x008e, B:32:0x0092, B:34:0x009c), top: B:49:0x0072, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(long r15, boolean r17) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeH5EndCardView.a(long, boolean):void");
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void install(CampaignEx campaignEx) {
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void readyStatus(int i2) {
    }

    public MBridgeH5EndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = false;
        this.r = new Handler();
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = 1;
        this.x = 1;
        this.y = false;
        this.z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f9831a;

        public c(boolean z) {
            this.f9831a = z;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.u) {
                return;
            }
            mBridgeH5EndCardView.t = true;
            mBridgeH5EndCardView.notifyListener.a(100, "");
            if (MBridgeH5EndCardView.this.b != null) {
                m mVar = new m();
                mVar.n(MBridgeH5EndCardView.this.b.getRequestId());
                mVar.o(MBridgeH5EndCardView.this.b.getRequestIdNotice());
                mVar.b(MBridgeH5EndCardView.this.b.getId());
                mVar.d(1);
                mVar.e(String.valueOf(System.currentTimeMillis() - MBridgeH5EndCardView.this.B));
                mVar.m("onPageFinished");
                String str2 = "2";
                if (MBridgeH5EndCardView.this.b.getAdType() == 287) {
                    mVar.a("3");
                } else if (MBridgeH5EndCardView.this.b.getAdType() == 94) {
                    mVar.a("1");
                } else if (MBridgeH5EndCardView.this.b.getAdType() == 42) {
                    mVar.a("2");
                }
                if (MBridgeH5EndCardView.this.b.isMraid()) {
                    mVar.b(m.N);
                } else {
                    mVar.g(MBridgeH5EndCardView.this.b.getendcard_url());
                    if (y0.b(MBridgeH5EndCardView.this.b.getendcard_url()) && MBridgeH5EndCardView.this.b.getendcard_url().contains(".zip")) {
                        str2 = "1";
                    }
                    mVar.f(str2);
                    mVar.b(m.O);
                }
                MBridgeH5EndCardView mBridgeH5EndCardView2 = MBridgeH5EndCardView.this;
                com.mbridge.msdk.foundation.same.report.g.b(mVar, mBridgeH5EndCardView2.unitId, mBridgeH5EndCardView2.b);
            }
            MBridgeH5EndCardView.this.notifyListener.a(120, "");
            if (this.f9831a) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 3);
                eVar.a("result", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.b, eVar);
            } catch (Throwable th) {
                o0.b("WindVaneWebView", th.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void b(WebView webView, int i) {
            super.b(webView, i);
            MBridgeH5EndCardView.this.A = i;
            if (!MBridgeH5EndCardView.this.z) {
                MBridgeH5EndCardView.this.z = true;
                if (i == 1) {
                    MBridgeH5EndCardView.this.reportRenderResult(FirebaseAnalytics.Param.SUCCESS, 4);
                    return;
                }
                MBridgeH5EndCardView.this.notifyListener.a(127, "");
                MBridgeH5EndCardView.this.reportRenderResult("failed", 6);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.u) {
                return;
            }
            com.mbridge.msdk.video.module.listener.a aVar = mBridgeH5EndCardView.notifyListener;
            aVar.a(118, "onReceivedError " + i + str);
            MBridgeH5EndCardView.this.reportRenderResult(str, 3);
            MBridgeH5EndCardView.this.notifyListener.a(127, "");
            MBridgeH5EndCardView.this.notifyListener.a(129, "");
            MBridgeH5EndCardView.this.u = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            super.a(webView, i);
            o0.c("WindVaneWebView", "h5EncardView readyStatus:" + i + "- isError" + MBridgeH5EndCardView.this.u);
            MBridgeH5EndCardView.this.A = i;
            if (!MBridgeH5EndCardView.this.u) {
                MBridgeH5EndCardView.this.a(System.currentTimeMillis() - MBridgeH5EndCardView.this.B, false);
            }
            if (this.f9831a) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("type", 3);
                    eVar.a("result", Integer.valueOf(i));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.b, eVar);
                } catch (Throwable th) {
                    o0.b("WindVaneWebView", th.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            super.a(webView);
            MBridgeH5EndCardView.this.setCloseVisible(0);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z) {
    }

    private static void a(m mVar, CampaignEx campaignEx) {
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
            o0.b(MBridgeBaseView.TAG, e2.getMessage());
        }
    }
}
