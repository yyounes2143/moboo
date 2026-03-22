package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.browser.customtabs.CustomTabsSession;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.a2;
import com.applovin.impl.a8;
import com.applovin.impl.adview.k;
import com.applovin.impl.f2;
import com.applovin.impl.f6;
import com.applovin.impl.h4;
import com.applovin.impl.i1;
import com.applovin.impl.l2;
import com.applovin.impl.l4;
import com.applovin.impl.n2;
import com.applovin.impl.n4;
import com.applovin.impl.q7;
import com.applovin.impl.r;
import com.applovin.impl.r5;
import com.applovin.impl.s3;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.ad.b;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u3;
import com.applovin.impl.x1;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a implements AppLovinCommunicatorSubscriber, AppLovinBroadcastManager.Receiver {
    private volatile AppLovinAdLoadListener A;
    private volatile AppLovinAdDisplayListener B;
    private volatile AppLovinAdViewEventListener C;
    private volatile AppLovinAdClickListener D;

    /* renamed from: a  reason: collision with root package name */
    private Context f3052a;
    private ViewGroup b;
    private com.applovin.impl.sdk.k c;
    private AppLovinAdServiceImpl d;
    private o e;
    private AppLovinCommunicator f;
    private b g;
    private AppLovinAdSize i;
    private String j;
    private CustomTabsSession k;
    private com.applovin.impl.adview.c l;
    private e m;
    private com.applovin.impl.adview.b n;
    private WebView o;
    private k p;
    private Runnable q;
    private Runnable r;
    private final Map h = DesugarCollections.synchronizedMap(new HashMap());
    private volatile com.applovin.impl.sdk.ad.b s = null;
    private volatile AppLovinAd t = null;
    private f u = null;
    private f v = null;
    private final AtomicReference w = new AtomicReference();
    private final AtomicBoolean x = new AtomicBoolean();
    private volatile boolean y = false;
    private volatile boolean z = false;

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.adview.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0008a extends h4 {
        public C0008a() {
        }

        @Override // com.applovin.impl.h4
        public Map a() {
            return CollectionUtils.hashMap("name", "AdViewController:GAWebView");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(a aVar);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.n != null) {
                a.this.n.setVisibility(8);
            }
        }

        public /* synthetic */ c(a aVar, C0008a c0008a) {
            this();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.adview.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0009a implements k.a {
            public C0009a() {
            }

            @Override // com.applovin.impl.adview.k.a
            public void a() {
                a.this.n.addView(a.this.p, new ViewGroup.LayoutParams(-1, -1));
            }

            @Override // com.applovin.impl.adview.k.a
            public void onFailure() {
                o unused = a.this.e;
                if (o.a()) {
                    a.this.e.b("AppLovinAdView", "Watermark failed to render.");
                }
            }
        }

        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.s != null) {
                if (a.this.n != null) {
                    a.this.v();
                    o unused = a.this.e;
                    if (o.a()) {
                        o oVar = a.this.e;
                        oVar.a("AppLovinAdView", "Rendering advertisement ad for #" + a.this.s.getAdIdNumber() + "...");
                    }
                    a.b(a.this.n, a.this.s.getSize(), a.this.s.D0());
                    if (a.this.p != null) {
                        q7.c(a.this.p);
                        a.this.p = null;
                    }
                    x1 x1Var = new x1(a.this.h, a.this.c);
                    if (x1Var.c()) {
                        a.this.p = new k(x1Var, a.this.f3052a);
                        a.this.p.a(new C0009a());
                    }
                    a.this.n.setAdHtmlLoaded(false);
                    a.this.n.a(a.this.s);
                    if (a.this.s.getSize() != AppLovinAdSize.INTERSTITIAL && !a.this.z) {
                        a.this.s.setHasShown(true);
                        return;
                    }
                    return;
                }
                o.h("AppLovinAdView", "Unable to render advertisement for ad #" + a.this.s.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                l2.a(a.this.C, a.this.s, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "renderTask");
                CollectionUtils.putStringIfValid("error_message", "Ad view failed to render due to null adView", hashMap);
                a.this.c.g().a(y1.s, a.this.s, hashMap);
            }
        }

        public /* synthetic */ d(a aVar, C0008a c0008a) {
            this();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class e implements AppLovinAdLoadListener {

        /* renamed from: a  reason: collision with root package name */
        private final a f3057a;

        public e(a aVar, com.applovin.impl.sdk.k kVar) {
            if (aVar != null) {
                if (kVar != null) {
                    this.f3057a = aVar;
                    return;
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No view specified");
        }

        private a a() {
            return this.f3057a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            a a2 = a();
            if (a2 != null) {
                a2.b(appLovinAd);
            } else {
                o.h("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            a a2 = a();
            if (a2 != null) {
                a2.b(i);
            }
        }
    }

    private void E() {
        if (this.e != null && o.a() && o.a()) {
            this.e.a("AppLovinAdView", "Destroying...");
        }
        a8.b(this.n);
        this.n = null;
        a8.b(this.o);
        this.o = null;
        this.k = null;
        this.A = null;
        this.B = null;
        this.D = null;
        this.C = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
        this.z = true;
    }

    private void m() {
        if (o.a()) {
            this.e.a("AppLovinAdView", "handleApplicationPaused()");
        }
        b("javascript:al_onAppPaused();");
    }

    private void n() {
        if (o.a()) {
            this.e.a("AppLovinAdView", "handleApplicationResumed()");
        }
        b("javascript:al_onAppResumed();");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        com.applovin.impl.adview.b bVar = this.n;
        bVar.loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
        JSHookAop.loadDataWithBaseURL(bVar, "/", "<html></html>", "text/html", null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        com.applovin.impl.adview.b bVar;
        d();
        if (this.b != null && (bVar = this.n) != null && bVar.getParent() == null) {
            this.b.addView(this.n);
            b(this.n, this.s.getSize(), this.s.D0());
            if (this.s.isOpenMeasurementEnabled()) {
                this.s.getAdEventTracker().a((View) this.n);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        if (this.n != null && this.u != null) {
            a();
        }
        E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        if (this.u != null) {
            if (o.a()) {
                o oVar = this.e;
                oVar.a("AppLovinAdView", "Detaching expanded ad: " + this.u.b());
            }
            this.v = this.u;
            this.u = null;
            a(this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        com.applovin.impl.sdk.ad.a b2;
        f fVar = this.v;
        if (fVar == null && this.u == null) {
            return;
        }
        if (fVar != null) {
            b2 = fVar.b();
            this.v.dismiss();
            this.v = null;
        } else {
            b2 = this.u.b();
            this.u.dismiss();
            this.u = null;
        }
        l2.a(this.C, b2, (AppLovinAdView) this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        com.applovin.impl.adview.b f = f();
        f.loadUrl("chrome://crash");
        JSHookAop.loadUrl(f, "chrome://crash");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        com.applovin.impl.sdk.ad.b bVar = this.s;
        n2 n2Var = new n2();
        n2Var.a().a(bVar).a(i());
        if (!z6.a(bVar.getSize())) {
            n2Var.a().a("Fullscreen Ad Properties").b(bVar);
        }
        n2Var.a(this.c);
        n2Var.a();
        if (o.a()) {
            this.e.a("AppLovinAdView", n2Var.toString());
        }
    }

    private void x() {
        if (this.s.b1()) {
            int c2 = this.c.q().c();
            if (com.applovin.impl.sdk.i.a(c2)) {
                this.n.a("javascript:al_muteSwitchOn();");
            } else if (c2 == 2) {
                this.n.a("javascript:al_muteSwitchOff();");
            }
        }
    }

    private void y() {
        if (z6.a(this.i)) {
            if (((Boolean) this.c.a(l4.C1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
            if (((Boolean) this.c.a(l4.D1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_shown"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_hidden"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_failure"));
            }
            if (((Boolean) this.c.a(l4.E1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_success"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_failure"));
            }
            if (((Boolean) this.c.a(l4.F1)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_success"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_failure"));
            }
        }
    }

    public void A() {
        if (o.a()) {
            this.e.a("AppLovinAdView", "AdView fully watched...");
        }
        b bVar = this.g;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public void B() {
        y();
        if (this.s != null && this.s.C0()) {
            com.applovin.impl.g.a(this.n, this.c);
        }
        b("javascript:al_onAttachedToWindow();");
    }

    public void C() {
        if (!this.y) {
            return;
        }
        if (this.s == null || !this.s.i1()) {
            l2.b(this.B, this.s);
        }
        if (this.s != null && this.s.isOpenMeasurementEnabled() && z6.a(this.s.getSize())) {
            this.s.getAdEventTracker().f();
        }
        if (this.n != null && this.u != null) {
            if (o.a()) {
                this.e.a("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
            }
            c();
        } else if (o.a()) {
            this.e.a("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
        }
        b("javascript:al_onDetachedFromWindow();");
    }

    public void D() {
        if (this.y && !this.z) {
            this.z = true;
        }
    }

    public void F() {
        if (!this.y) {
            return;
        }
        AppLovinAd appLovinAd = (AppLovinAd) this.w.getAndSet(null);
        if (appLovinAd != null) {
            c(appLovinAd);
        }
        this.z = false;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return a.class.getSimpleName();
    }

    public AppLovinAdSize k() {
        return this.i;
    }

    public String l() {
        return this.j;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.t();
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (action != null) {
            char c2 = 65535;
            switch (action.hashCode()) {
                case -1638166742:
                    if (action.equals("com.applovin.external_redirect_success")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -859884819:
                    if (action.equals("com.applovin.custom_tabs_failure")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -857571151:
                    if (action.equals("com.applovin.external_redirect_failure")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -794532889:
                    if (action.equals("com.applovin.custom_tabs_hidden")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -481430233:
                    if (action.equals(SessionTracker.ACTION_APPLICATION_PAUSED)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -292584652:
                    if (action.equals("com.applovin.custom_tabs_shown")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -151691010:
                    if (action.equals(SessionTracker.ACTION_APPLICATION_RESUMED)) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 329711075:
                    if (action.equals("com.applovin.preload_success")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 1110306666:
                    if (action.equals("com.applovin.preload_failure")) {
                        c2 = '\b';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                case 2:
                    b(action, map);
                    return;
                case 1:
                case 3:
                case 5:
                    a(action, map);
                    return;
                case 4:
                    m();
                    return;
                case 6:
                    n();
                    return;
                case 7:
                case '\b':
                    c(action, map);
                    return;
                default:
                    return;
            }
        }
    }

    public void u() {
        if (this.c != null && this.m != null && this.f3052a != null && this.y) {
            this.d.loadNextAd(this.j, this.i, this.m);
        } else {
            o.i("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    public void w() {
        if ((this.f3052a instanceof i1) && this.s != null && this.s.U() == b.EnumC0021b.DISMISS) {
            ((i1) this.f3052a).dismiss("postitial_click");
        }
    }

    public void z() {
        if (this.u == null && this.v == null) {
            if (o.a()) {
                o oVar = this.e;
                oVar.a("AppLovinAdView", "Ad: " + this.s + " closed.");
            }
            a(this.r);
            l2.b(this.B, this.s);
            this.s = null;
            return;
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize, boolean z) {
        int i;
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        String label = appLovinAdSize.getLabel();
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.INTERSTITIAL;
        int i2 = -1;
        if (label.equals(appLovinAdSize2.getLabel()) || z) {
            i = -1;
        } else if (appLovinAdSize.getWidth() == -1) {
            i = displayMetrics.widthPixels;
        } else {
            i = (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        }
        if (!appLovinAdSize.getLabel().equals(appLovinAdSize2.getLabel()) && !z) {
            if (appLovinAdSize.getHeight() == -1) {
                i2 = displayMetrics.heightPixels;
            } else {
                i2 = (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
            }
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = i;
        layoutParams.height = i2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
        }
        view.setLayoutParams(layoutParams);
    }

    private void c() {
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.r();
            }
        });
    }

    private void d() {
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.s();
            }
        });
    }

    public AppLovinAdViewEventListener e() {
        return this.C;
    }

    public com.applovin.impl.adview.b f() {
        return this.n;
    }

    public com.applovin.impl.sdk.ad.b g() {
        return this.s;
    }

    public CustomTabsSession h() {
        return this.k;
    }

    public AppLovinAdView i() {
        return (AppLovinAdView) this.b;
    }

    public com.applovin.impl.sdk.k j() {
        return this.c;
    }

    public void c(int i) {
        String a2 = q7.a(i);
        if (o.a()) {
            o oVar = this.e;
            oVar.a("AppLovinAdView", "onWindowVisibilityChanged( " + a2 + " )");
        }
        b("javascript:al_onWindowVisibilityChanged( " + a2 + " );");
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.A = appLovinAdLoadListener;
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.B = appLovinAdDisplayListener;
    }

    public void c(AppLovinAd appLovinAd) {
        a(appLovinAd, (String) null);
    }

    public void a(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.C = appLovinAdViewEventListener;
    }

    public void c(WebView webView) {
        a(webView, (String) null);
    }

    private void c(String str, Map map) {
        a(a8.c(str, map));
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.D = appLovinAdClickListener;
    }

    private void a(AppLovinAdView appLovinAdView, com.applovin.impl.sdk.k kVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (kVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize != null) {
            this.c = kVar;
            this.d = kVar.k();
            this.e = kVar.O();
            this.f = AppLovinCommunicator.getInstance(context);
            this.i = appLovinAdSize;
            this.j = str;
            if (!(context instanceof AppLovinFullscreenActivity)) {
                context = context.getApplicationContext();
            }
            this.f3052a = context;
            this.b = appLovinAdView;
            this.l = new com.applovin.impl.adview.c(this, kVar);
            this.r = new c(this, null);
            this.q = new d(this, null);
            this.m = new e(this, kVar);
            a(appLovinAdSize);
            return;
        }
        throw new IllegalArgumentException("No ad size specified");
    }

    public void b() {
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.q();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        this.s.getAdEventTracker().c(webView);
        k kVar = this.p;
        if (kVar != null && kVar.a()) {
            s3 adEventTracker = this.s.getAdEventTracker();
            k kVar2 = this.p;
            adEventTracker.b(webView, Collections.singletonList(new u3(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier())));
        } else {
            this.s.getAdEventTracker().a((View) webView);
        }
        this.s.getAdEventTracker().h();
        this.s.getAdEventTracker().g();
    }

    public void a(AppLovinAdSize appLovinAdSize) {
        try {
            com.applovin.impl.adview.b bVar = new com.applovin.impl.adview.b(this.l, this.c, this.f3052a);
            this.n = bVar;
            bVar.setBackgroundColor(0);
            this.n.setWillNotCacheDrawing(false);
            this.b.setBackgroundColor(0);
            this.b.addView(this.n);
            a(this.n, appLovinAdSize);
            if (!this.y) {
                a(this.r);
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.o();
                }
            });
            this.y = true;
        } catch (Throwable th) {
            o.c("AppLovinAdView", "Failed to initialize AdWebView", th);
            this.c.E().a("AppLovinAdView", "initAdWebView", th);
            this.x.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MotionEvent motionEvent) {
        a aVar;
        if (this.u == null && (this.s instanceof com.applovin.impl.sdk.ad.a) && this.n != null) {
            com.applovin.impl.sdk.ad.a aVar2 = (com.applovin.impl.sdk.ad.a) this.s;
            Context context = this.f3052a;
            Activity b2 = context instanceof Activity ? (Activity) context : q7.b(this.n, this.c);
            if (b2 != null && !b2.isFinishing()) {
                ViewGroup viewGroup = this.b;
                if (viewGroup != null) {
                    viewGroup.removeView(this.n);
                }
                f fVar = new f(aVar2, this.n, b2, this.c);
                this.u = fVar;
                fVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwww
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        a.this.a(dialogInterface);
                    }
                });
                this.u.show();
                l2.c(this.C, this.s, (AppLovinAdView) this.b);
                if (this.s.isOpenMeasurementEnabled()) {
                    this.s.getAdEventTracker().a((View) this.u.c());
                    return;
                }
                return;
            }
            o.h("AppLovinAdView", "Unable to expand ad. No Activity found.");
            Uri m = aVar2.m();
            if (m != null) {
                aVar = this;
                this.d.trackAndLaunchClick(aVar2, i(), aVar, m, motionEvent, null);
            } else {
                aVar = this;
            }
            aVar.n.a("javascript:al_onFailedExpand();");
        }
    }

    private static void a(View view, AppLovinAdSize appLovinAdSize) {
        b(view, appLovinAdSize, false);
    }

    public void a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            o.h("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = r.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk != null) {
            a(appLovinAdView, appLovinSdk.a(), appLovinAdSize2, str, context);
            if (r.b(attributeSet)) {
                u();
            }
        }
    }

    public void b(final AppLovinAd appLovinAd) {
        if (appLovinAd != null) {
            if (!this.z) {
                c(appLovinAd);
            } else {
                this.w.set(appLovinAd);
                if (o.a()) {
                    this.e.a("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
                }
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(appLovinAd);
                }
            });
            return;
        }
        if (o.a()) {
            this.e.b("AppLovinAdView", "No provided when to the view controller");
        }
        b(-1);
    }

    public void a(String str, Object obj) {
        this.h.put(str, obj);
    }

    public void a(boolean z) {
        if (o.a()) {
            o oVar = this.e;
            oVar.a("AppLovinAdView", "onWindowFocusChanged( " + z + " )");
        }
        b("javascript:al_onWindowFocusChanged( " + z + " );");
    }

    public void a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd != null) {
            z6.b(appLovinAd, this.c);
            if (this.y) {
                if (appLovinAd.getSize() != AppLovinAdSize.INTERSTITIAL) {
                    Map a2 = a2.a((AppLovinAdImpl) appLovinAd);
                    CollectionUtils.putStringIfValid("source", "renderAd", a2);
                    this.c.g().d(y1.p, a2);
                }
                com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) z6.a(appLovinAd, this.c);
                if (bVar == null) {
                    o.h("AppLovinAdView", "Unable to retrieve the loaded ad: " + appLovinAd);
                    l2.a(this.B, "Unable to retrieve the loaded ad");
                    Map a3 = a2.a((AppLovinAdImpl) appLovinAd);
                    CollectionUtils.putStringIfValid("source", "noAdToRender", a3);
                    CollectionUtils.putStringIfValid("error_message", "Unable to retrieve the loaded ad", a3);
                    this.c.g().d(y1.s, a3);
                    return;
                } else if (bVar == this.s) {
                    o.h("AppLovinAdView", "Attempting to show ad again: " + bVar);
                    if (((Boolean) this.c.a(l4.G1)).booleanValue()) {
                        if (this.B instanceof f2) {
                            l2.a(this.B, "Attempting to show ad again");
                        } else if (!z6.c(this.c)) {
                            this.c.g().a(y1.u0, bVar, CollectionUtils.hashMap("source", "attemptingAdReRender"));
                        } else {
                            throw new IllegalStateException("Attempting to show ad again");
                        }
                    }
                    HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "attemptingAdReRender");
                    CollectionUtils.putStringIfValid("error_message", "Attempting to show ad again", hashMap);
                    this.c.g().a(y1.s, bVar, hashMap);
                    return;
                } else {
                    if (o.a()) {
                        o oVar = this.e;
                        oVar.a("AppLovinAdView", "Rendering ad #" + bVar.getAdIdNumber() + " (" + bVar.getSize() + ")");
                    }
                    l2.b(this.B, this.s);
                    if (this.s != null && this.s.isOpenMeasurementEnabled()) {
                        this.s.getAdEventTracker().f();
                    }
                    this.w.set(null);
                    this.t = null;
                    this.s = bVar;
                    if (this.s.I0()) {
                        this.k = this.c.A().a(this);
                        this.c.A().b(this.s.D(), this.k);
                    }
                    if (!this.z && z6.a(this.i)) {
                        this.c.k().trackImpression(bVar);
                    }
                    if (this.u != null) {
                        c();
                    }
                    a(this.q);
                    return;
                }
            }
            o.i("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i) {
        if (!this.z) {
            a(this.r);
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a(i);
            }
        });
    }

    private void b(String str) {
        if (((Boolean) this.c.a(l4.C1)).booleanValue()) {
            a(str);
        }
    }

    private void b(String str, Map map) {
        a(a8.b(str, map));
    }

    public void b(Uri uri) {
        if (this.s != null && this.s.K0() && this.o == null) {
            String queryParameter = uri.getQueryParameter("tracking_id");
            if (TextUtils.isEmpty(queryParameter)) {
                this.c.O();
                if (o.a()) {
                    this.c.O().b("AppLovinAdView", "Invalid tracking id. Cannot initialize GA");
                    return;
                }
                return;
            }
            WebView webView = new WebView(this.f3052a);
            this.o = webView;
            webView.setWebViewClient(new C0008a());
            this.o.getSettings().setJavaScriptEnabled(true);
            String replace = "<html><head><link rel=\"icon\" href=\"data:,\"><G-SCRIPT_TAG></head><body></body></html>".replace("<G-SCRIPT_TAG>", "<script src='https://www.googletagmanager.com/gtag/js?id=<G-TRACKING_ID>'></script><script>window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag('js', new Date());gtag('config', '<G-TRACKING_ID>')</script>".replace("<G-TRACKING_ID>", queryParameter));
            WebView webView2 = this.o;
            String str = (String) this.c.a(l4.E6);
            webView2.loadDataWithBaseURL(str, replace, "text/html", "UTF-8", null);
            JSHookAop.loadDataWithBaseURL(webView2, str, replace, "text/html", "UTF-8", null);
        }
    }

    public void a(final WebView webView, String str) {
        if (this.s == null) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                webView.setVisibility(0);
            }
        });
        if (!((Boolean) this.c.a(l4.T5)).booleanValue() || (str != null && str.startsWith(this.s.k()))) {
            try {
                if (this.s != this.t) {
                    this.t = this.s;
                    x();
                    this.n.setAdHtmlLoaded(true);
                    if (this.B != null) {
                        this.c.z().d(this.s);
                        if (this.s.E0()) {
                            this.c.g().a(y1.r, this.s, CollectionUtils.hashMap("details", a2.b(this.s)));
                        } else {
                            this.c.g().a(y1.q, this.s);
                            l2.a(this.B, this.s);
                        }
                        if (this.s.c1()) {
                            JSONObject jSONObject = new JSONObject();
                            JsonUtils.putString(jSONObject, "template_browser_package_name", (String) this.c.p0().a(n4.N, ""));
                            com.applovin.impl.adview.b bVar = this.n;
                            bVar.a("javascript:al_onAdViewRendered(" + jSONObject + ");");
                        } else {
                            this.n.a("javascript:al_onAdViewRendered();");
                        }
                        if (this.s.E0()) {
                            com.applovin.impl.adview.b bVar2 = this.n;
                            bVar2.a("javascript:al_onAdRestored( '" + this.s.h0() + "' );");
                        }
                    }
                    if ((this.s instanceof com.applovin.impl.sdk.ad.a) && this.s.isOpenMeasurementEnabled()) {
                        this.c.q0().a(new f6(this.c, "StartOMSDK", new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                a.this.b(webView);
                            }
                        }), r5.b.OTHER, 500L);
                    }
                }
            } catch (Throwable th) {
                o.c("AppLovinAdView", "Exception while notifying ad display listener", th);
                com.applovin.impl.sdk.k kVar = this.c;
                if (kVar != null) {
                    kVar.E().a("AppLovinAdView", "onAdHtmlLoaded", th);
                }
            }
        }
    }

    public void a(final MotionEvent motionEvent) {
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.b(motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        a();
    }

    public void a() {
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.p();
            }
        });
    }

    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri, MotionEvent motionEvent, Bundle bundle) {
        a aVar;
        com.applovin.impl.sdk.ad.b bVar2;
        if (appLovinAdView != null) {
            aVar = this;
            bVar2 = bVar;
            this.d.trackAndLaunchClick(bVar2, appLovinAdView, aVar, uri, motionEvent, bundle);
        } else {
            aVar = this;
            bVar2 = bVar;
            if (o.a()) {
                aVar.e.b("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
            }
        }
        l2.a(aVar.D, bVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.x.compareAndSet(true, false)) {
            a(this.i);
        }
        try {
            if (this.A != null) {
                this.A.adReceived(appLovinAd);
            }
        } catch (Throwable th) {
            o.h("AppLovinAdView", "Exception while running ad load callback: " + th.getMessage());
            com.applovin.impl.sdk.k kVar = this.c;
            if (kVar != null) {
                kVar.E().a("AppLovinAdView", "notifyAdLoadedCallback", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        try {
            if (this.A != null) {
                this.A.failedToReceiveAd(i);
            }
        } catch (Throwable th) {
            o.c("AppLovinAdView", "Exception while running app load callback", th);
            com.applovin.impl.sdk.k kVar = this.c;
            if (kVar != null) {
                kVar.E().a("AppLovinAdView", "notifyAdLoadFailedCallback", th);
            }
        }
    }

    private void a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    public void a(b bVar) {
        this.g = bVar;
    }

    private void a(String str, Map map) {
        a(a8.a(str, map));
    }

    private void a(String str) {
        if (this.s == null || this.n == null || !z6.a(this.s.getSize()) || !StringUtils.isValidString(str)) {
            return;
        }
        this.n.a(str);
    }

    public void a(Uri uri) {
        if (this.s == null || !this.s.K0()) {
            return;
        }
        if (this.o == null) {
            this.c.O();
            if (o.a()) {
                this.c.O().a("AppLovinAdView", "GA is not initialized. Cannot fire GA event");
                return;
            }
            return;
        }
        final String queryParameter = uri.getQueryParameter(DbParams.KEY_CHANNEL_EVENT_NAME);
        final String queryParameter2 = uri.getQueryParameter("event_params_json");
        if (TextUtils.isEmpty(queryParameter)) {
            this.c.O();
            if (o.a()) {
                this.c.O().a("AppLovinAdView", "Invalid GA event name. Cannot fire GA event");
                return;
            }
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a(queryParameter2, queryParameter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        String str3;
        if (StringUtils.isValidString(str)) {
            str3 = "gtag('event', '" + str2 + "', " + str + ");";
        } else {
            str3 = "gtag('event', '" + str2 + "')";
        }
        a8.a(this.o, str3);
    }
}
