package com.mbridge.msdk.interstitial.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.activity.MBBaseActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.interstitial.controller.a;
import com.mbridge.msdk.mbsignalcommon.mraid.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.vungle.ads.internal.Constants;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class MBInterstitialActivity extends MBBaseActivity implements com.mbridge.msdk.mbsignalcommon.mraid.b {
    public static final String INTENT_CAMAPIGN = "campaign";
    public static final String INTENT_UNIT_ID = "unitId";
    public static final long WATI_JS_INVOKE = 2000;
    public static final long WEB_LOAD_TIME = 15000;
    private CampaignEx h;
    private WindVaneWebView i;
    private ImageView j;
    private a.d k;
    private boolean l;
    private com.mbridge.msdk.mbsignalcommon.mraid.d m;
    public ProgressBar mProgressBar;
    public String mUnitid;
    private long n;
    private boolean o;
    private boolean p;
    private com.mbridge.msdk.click.a t;
    private boolean f = false;
    private boolean g = false;
    public boolean mIsMBPage = false;
    private Handler q = new f();
    Runnable r = new j();
    Runnable s = new k();

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(8);
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
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(MBInterstitialActivity.this.i, MBInterstitialActivity.this.i.getLeft(), MBInterstitialActivity.this.i.getTop(), MBInterstitialActivity.this.i.getWidth(), MBInterstitialActivity.this.i.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.i, MBInterstitialActivity.this.i.getLeft(), MBInterstitialActivity.this.i.getTop(), MBInterstitialActivity.this.i.getWidth(), MBInterstitialActivity.this.i.getHeight());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(MBInterstitialActivity.this)).b(MBInterstitialActivity.this.h.getId());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class h implements View.OnClickListener {
        public h() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            MBInterstitialActivity.this.finish();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class i extends com.mbridge.msdk.mbsignalcommon.listener.b {
        public i() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void b(WebView webView, int i) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str, Bitmap bitmap) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public boolean b(WebView webView, String str) {
            return true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            MBInterstitialActivity.this.l = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            try {
                MBInterstitialActivity.this.l = true;
                if (MBInterstitialActivity.this.k != null) {
                    MBInterstitialActivity.this.k.a(str);
                }
                MBInterstitialActivity.this.a(3, str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            try {
                if (MBInterstitialActivity.this.l) {
                    return;
                }
                MBInterstitialActivity.this.a(1, "");
                MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
                if (mBInterstitialActivity.r != null && mBInterstitialActivity.q != null) {
                    MBInterstitialActivity.this.q.removeCallbacks(MBInterstitialActivity.this.r);
                }
                if (MBInterstitialActivity.this.k != null) {
                    MBInterstitialActivity.this.k.c();
                }
                MBInterstitialActivity mBInterstitialActivity2 = MBInterstitialActivity.this;
                if (!mBInterstitialActivity2.mIsMBPage) {
                    mBInterstitialActivity2.q.postDelayed(MBInterstitialActivity.this.s, 2000L);
                }
                MBInterstitialActivity.this.i();
            } catch (Exception e) {
                e.printStackTrace();
                if (MBInterstitialActivity.this.k != null) {
                    MBInterstitialActivity.this.k.a("load page failed");
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void c(WebView webView, int i) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!MBInterstitialActivity.this.g) {
                MBInterstitialActivity.this.f = true;
                if (MBInterstitialActivity.this.k != null) {
                    MBInterstitialActivity.this.k.a("load page timeout");
                    if (MBInterstitialActivity.this.i != null) {
                        MBInterstitialActivity.this.i.setVisibility(8);
                        MBInterstitialActivity.this.i.setWebViewListener(null);
                        MBInterstitialActivity.this.i.release();
                    }
                    MBInterstitialActivity.this.hideLoading();
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
            if (!mBInterstitialActivity.mIsMBPage) {
                if (mBInterstitialActivity.h != null && MBInterstitialActivity.this.h.isMraid()) {
                    MBInterstitialActivity.this.m();
                }
                com.mbridge.msdk.interstitial.cache.a.a().a(MBInterstitialActivity.this.h, MBInterstitialActivity.this.mUnitid);
                if (!MBInterstitialActivity.this.f) {
                    MBInterstitialActivity.this.g = true;
                    MBInterstitialActivity.this.hideLoading();
                    MBInterstitialActivity.this.showWebView();
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class l implements d.b {
        public l() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.d.b
        public void a(double d) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.i, d);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MBInterstitialActivity.this.i != null && MBInterstitialActivity.this.h != null) {
                    MBInterstitialActivity.this.i.setVisibility(0);
                    if (MBInterstitialActivity.this.h.isMraid()) {
                        MBInterstitialActivity.this.k();
                    }
                    MBInterstitialActivity.this.j();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBInterstitialActivity.this.i != null) {
                MBInterstitialActivity.this.i.setVisibility(8);
            }
        }
    }

    private void l() {
        com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(getApplicationContext());
        CampaignEx campaignEx = this.h;
        if (campaignEx != null) {
            hVar.b(campaignEx.getRequestId(), this.h.getRequestIdNotice(), this.h.getId(), this.mUnitid, com.mbridge.msdk.mbsignalcommon.mraid.c.b(this.h.getId()), this.h.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.h.getId());
            this.o = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        List<String> pv_urls;
        try {
            com.mbridge.msdk.foundation.controller.c.m().a(this);
            if (!TextUtils.isEmpty(this.h.getImpressionURL())) {
                Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx = this.h;
                com.mbridge.msdk.click.a.a(d2, campaignEx, this.mUnitid, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.m);
            }
            if (!TextUtils.isEmpty(this.h.getOnlyImpressionURL())) {
                Context d3 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx2 = this.h;
                com.mbridge.msdk.click.a.a(d3, campaignEx2, this.mUnitid, campaignEx2.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.n);
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.mUnitid, this.h, Constants.PLACEMENT_TYPE_INTERSTITIAL);
            e eVar = new e();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(eVar);
            } else {
                eVar.run();
            }
            CampaignEx campaignEx3 = this.h;
            if (campaignEx3 != null && (pv_urls = campaignEx3.getPv_urls()) != null && pv_urls.size() > 0) {
                for (String str : pv_urls) {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.h, this.mUnitid, str, false, true);
                }
            }
        } catch (Throwable th) {
            o0.a("MBInterstitialActivity", th.getMessage());
        }
    }

    private void n() {
        CampaignEx campaignEx;
        this.j.setOnClickListener(new h());
        if (this.i != null && (campaignEx = this.h) != null) {
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(campaignEx);
            aVar.a(this.h.getAppName());
            this.i.setCampaignId(this.h.getId());
            this.i.setDownloadListener(aVar);
        }
    }

    public void clickTracking() {
        try {
            if (this.h != null && !y0.a(this.mUnitid)) {
                onIntersClick();
                com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getApplicationContext(), this.mUnitid);
                this.t = aVar;
                aVar.a(new c());
                this.t.a(this.h);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (!this.o) {
            l();
        }
        if (!this.p) {
            reportPlayableClosed();
        }
    }

    public com.mbridge.msdk.setting.l getIntersUnitSetting() {
        try {
            if (TextUtils.isEmpty(this.mUnitid)) {
                return null;
            }
            com.mbridge.msdk.setting.l e2 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.mUnitid);
            if (e2 == null) {
                return com.mbridge.msdk.setting.l.h(this.mUnitid);
            }
            return e2;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.h;
    }

    public void goneWebView() {
        try {
            runOnUiThread(new n());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void hideLoading() {
        try {
            runOnUiThread(new b());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void initView() {
        this.i = (WindVaneWebView) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_wv", "id"));
        this.mProgressBar = (ProgressBar) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_pb", "id"));
        this.j = (ImageView) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_iv_close", "id"));
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        int a2;
        super.onCreate(bundle);
        try {
            a2 = g0.a(getApplicationContext(), "mbridge_interstitial_activity", "layout");
        } catch (Exception e2) {
            e = e2;
        }
        try {
            if (g0.a(a2)) {
                setContentView(a2);
                initView();
                e();
                com.mbridge.msdk.foundation.controller.c.m().a(this);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this, (ViewGroup) null, (ViewGroup.LayoutParams) null, new g());
                this.h.setCampaignUnitId(this.mUnitid);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this.h);
                return;
            }
            g();
            f();
            a.d dVar = this.k;
            if (dVar != null) {
                dVar.a("not found resource");
            }
            finish();
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            a.d dVar = this.k;
            if (dVar != null) {
                dVar.b();
            }
            com.mbridge.msdk.click.a aVar = this.t;
            if (aVar != null) {
                aVar.a(false);
                this.t.a((NativeListener.NativeTrackingListener) null);
                this.t.c();
            }
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar2 = this.m;
            if (dVar2 != null) {
                dVar2.d();
            }
            if (!this.o) {
                l();
            }
            if (com.mbridge.msdk.interstitial.controller.a.r != null && !TextUtils.isEmpty(this.mUnitid)) {
                com.mbridge.msdk.interstitial.controller.a.r.remove(this.mUnitid);
            }
            this.k = null;
            com.mbridge.msdk.foundation.feedback.b.b().d(this.mUnitid);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void onIntersClick() {
        try {
            a.d dVar = this.k;
            if (dVar != null) {
                dVar.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CampaignEx campaignEx = this.h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.i, "false");
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CampaignEx campaignEx = this.h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.i, "true");
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.h.setClickURL(str);
            a(str);
        }
        this.h.setClickTempSource(2);
        this.h.setClickType(2);
        this.h.setTriggerClickSource(2);
        clickTracking();
    }

    public void reportPlayableClosed() {
        int i2;
        if (this.h != null) {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000061", this.h.getId(), this.h.getRequestId(), this.h.getRequestIdNotice(), this.mUnitid, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (this.h.isMraid()) {
                i2 = com.mbridge.msdk.foundation.entity.m.N;
            } else {
                i2 = com.mbridge.msdk.foundation.entity.m.O;
            }
            mVar.b(i2);
            com.mbridge.msdk.foundation.same.report.g.b(mVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.mUnitid);
            this.p = true;
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity
    public void setTopControllerPadding(int i2, int i3, int i4, int i5, int i6) {
        int a2 = t0.a(this, 10.0f);
        if (i3 <= 0) {
            i3 = a2;
        }
        if (i4 <= 0) {
            i4 = a2;
        }
        if (i5 <= 0) {
            i5 = a2;
        }
        if (i6 <= 0) {
            i6 = a2;
        }
        if (this.j != null) {
            int a3 = t0.a(this, 25.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a3, a3);
            layoutParams.addRule(11);
            layoutParams.setMargins(i3, i5, i4, i6);
            this.j.setLayoutParams(layoutParams);
        }
    }

    public void showLoading() {
        try {
            runOnUiThread(new a());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void showWebView() {
        runOnUiThread(new m());
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z) {
        if (z) {
            this.j.setImageDrawable(new ColorDrawable(0));
        } else {
            this.j.setImageResource(g0.a(getApplicationContext(), "mbridge_interstitial_close", "drawable"));
        }
    }

    private void e() {
        g();
        n();
        f();
        h();
    }

    private void f() {
        try {
            if (com.mbridge.msdk.interstitial.controller.a.r == null || TextUtils.isEmpty(this.mUnitid) || !com.mbridge.msdk.interstitial.controller.a.r.containsKey(this.mUnitid)) {
                return;
            }
            this.k = com.mbridge.msdk.interstitial.controller.a.r.get(this.mUnitid);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void g() {
        Intent intent = getIntent();
        if (intent != null) {
            this.mUnitid = intent.getStringExtra("unitId");
            this.h = (CampaignEx) intent.getSerializableExtra("campaign");
        }
        CampaignEx campaignEx = this.h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar = new com.mbridge.msdk.mbsignalcommon.mraid.d(this);
            this.m = dVar;
            dVar.c();
            this.m.a(new l());
        }
        CampaignEx campaignEx2 = this.h;
        if (campaignEx2 != null) {
            com.mbridge.msdk.click.c.a(this, campaignEx2.getMaitve(), this.h.getMaitve_src());
        }
    }

    @SuppressLint({"NewApi"})
    private void h() {
        try {
            CampaignEx campaignEx = this.h;
            if (campaignEx == null || (TextUtils.isEmpty(campaignEx.getHtmlUrl()) && !this.h.isMraid())) {
                a.d dVar = this.k;
                if (dVar != null) {
                    dVar.a("htmlurl is null");
                    return;
                }
                return;
            }
            o0.c("MBInterstitialActivity", "url:" + this.h.getHtmlUrl());
            goneWebView();
            this.i.setWebViewListener(new i());
            String htmlUrl = this.h.getHtmlUrl();
            if (this.h.isMraid()) {
                File file = new File(this.h.getMraid());
                if (file.exists() && file.isFile() && file.canRead()) {
                    htmlUrl = "file:////" + this.h.getMraid();
                }
            }
            this.n = System.currentTimeMillis();
            WindVaneWebView windVaneWebView = this.i;
            windVaneWebView.loadUrl(htmlUrl);
            JSHookAop.loadUrl(windVaneWebView, htmlUrl);
            this.q.postDelayed(this.r, 15000L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        String str;
        CampaignEx campaignEx = this.h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i2 = getResources().getConfiguration().orientation;
        if (i2 == 0) {
            str = AdError.UNDEFINED_DOMAIN;
        } else if (i2 == 1) {
            str = "portrait";
        } else if (i2 != 2) {
            str = "UNDEFINED";
        } else {
            str = "landscape";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        HashMap hashMap = new HashMap();
        hashMap.put("placementType", "Interstitial");
        hashMap.put("state", "default");
        hashMap.put("viewable", "true");
        hashMap.put("currentAppOrientation", jSONObject);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.i, k0.n(this), k0.m(this));
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.i, displayMetrics.widthPixels, displayMetrics.heightPixels);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.i, hashMap);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.i, this.m.a());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        this.i.post(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.n(this.h.getRequestId());
            mVar.o(this.h.getRequestIdNotice());
            mVar.b(this.h.getId());
            mVar.b(this.h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
            com.mbridge.msdk.foundation.same.report.g.d(mVar, getApplicationContext(), this.mUnitid);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str) {
        CampaignEx campaignEx = this.h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
        mVar.n(this.h.getRequestId());
        mVar.o(this.h.getRequestIdNotice());
        mVar.b(this.h.getId());
        mVar.d(i2);
        mVar.e(String.valueOf(System.currentTimeMillis() - this.n));
        mVar.g("");
        mVar.m(str);
        mVar.a(CampaignEx.CLICKMODE_ON);
        mVar.b(this.h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.mUnitid, this.h);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class g implements com.mbridge.msdk.foundation.feedback.a {
        public g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            MBInterstitialActivity.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th) {
                o0.b("MBInterstitialActivity", th.getMessage(), th);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.i, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th) {
                o0.b("MBInterstitialActivity", th.getMessage(), th);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.i, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th) {
                o0.b("MBInterstitialActivity", th.getMessage(), th);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.i, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    private void a(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getApplicationContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.mUnitid, str, mraidCampaign.isBidCampaign());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements NativeListener.NativeTrackingListener {
        public c() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.hideLoading();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            MBInterstitialActivity.this.hideLoading();
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.showLoading();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f extends Handler {
        public f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z) {
    }
}
