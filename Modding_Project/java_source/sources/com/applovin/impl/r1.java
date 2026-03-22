package com.applovin.impl;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.a;
import com.applovin.impl.adview.e;
import com.applovin.impl.c2;
import com.applovin.impl.d0;
import com.applovin.impl.g4;
import com.applovin.impl.r1;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.i;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class r1 implements c2.a, AppLovinBroadcastManager.Receiver, a.b {
    protected int A;
    protected boolean B;
    private ContentObserver C;
    private Float D;
    protected AppLovinAdClickListener E;
    protected AppLovinAdDisplayListener F;
    protected AppLovinAdVideoPlaybackListener G;
    protected final c2 H;
    protected t6 I;
    protected t6 J;
    protected boolean K;
    private final d0 L;
    private boolean M;

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.ad.b f3517a;
    protected final com.applovin.impl.sdk.k b;
    protected final com.applovin.impl.sdk.o c;
    protected Activity d;
    private final int e;
    private final Handler f;
    private final com.applovin.impl.b g;
    private final i.a h;
    protected AppLovinAdView i;
    protected com.applovin.impl.adview.k j;
    protected final com.applovin.impl.adview.g k;
    protected final com.applovin.impl.adview.g l;
    protected final long m;
    private final AtomicBoolean n;
    private final AtomicBoolean o;
    private boolean p;
    protected long q;
    protected long r;
    private boolean s;
    protected boolean t;
    protected int u;
    protected boolean v;
    private int w;
    private final ArrayList x;
    protected int y;
    protected int z;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements AppLovinAdDisplayListener {
        public a() {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.o oVar = r1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                r1.this.c.a("AppLovinFullscreenActivity", "Web content rendered");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.o oVar = r1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                r1.this.c.a("AppLovinFullscreenActivity", "Closing from WebView");
            }
            r1.this.a("web_view");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements i.a {
        public b() {
        }

        @Override // com.applovin.impl.sdk.i.a
        public void a(int i) {
            r1 r1Var = r1.this;
            if (r1Var.A != com.applovin.impl.sdk.i.h) {
                r1Var.B = true;
            }
            com.applovin.impl.adview.b f = r1Var.i.getController().f();
            if (f == null) {
                com.applovin.impl.sdk.o oVar = r1.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    r1.this.c.k("AppLovinFullscreenActivity", "Unable to handle ringer mode change: no valid web view.");
                }
            } else if (com.applovin.impl.sdk.i.a(i) && !com.applovin.impl.sdk.i.a(r1.this.A)) {
                f.a("javascript:al_muteSwitchOn();");
            } else if (i == 2) {
                f.a("javascript:al_muteSwitchOff();");
            }
            r1.this.A = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c extends com.applovin.impl.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f3520a;

        public c(com.applovin.impl.sdk.k kVar) {
            this.f3520a = kVar;
        }

        private boolean a(Activity activity) {
            return activity.getClass().getName().equals(z6.a(activity.getApplicationContext(), "AppLovinFullscreenActivity", this.f3520a));
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (!r1.this.A() && a(activity)) {
                r1.this.e();
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (r1.this.A() && a(activity)) {
                r1.this.e();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f3521a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Handler handler, com.applovin.impl.sdk.k kVar) {
            super(handler);
            this.f3521a = kVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            String str;
            Float b = this.f3521a.q().b();
            if (b != null && r1.this.D != null && !b.equals(r1.this.D)) {
                if (b.floatValue() > r1.this.D.floatValue()) {
                    str = "volume_up";
                } else {
                    str = "volume_down";
                }
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putDouble(jSONObject, "volume", b.floatValue());
                r1.this.e("javascript:al_onVolumeChangedEvent('" + str + "'," + jSONObject + ");");
                r1.this.D = b;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class e extends com.applovin.impl.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g4 f3522a;

        public e(g4 g4Var) {
            this.f3522a = g4Var;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity instanceof AppLovinFullscreenActivity) {
                this.f3522a.b(null);
                r1.this.b.e().b(this);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface f {
        void a(r1 r1Var);

        void a(String str, Throwable th);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class g implements AppLovinAdClickListener, View.OnClickListener {
        private g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            r1.this.q = SystemClock.elapsedRealtime();
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.o oVar = r1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                r1.this.c.a("AppLovinFullscreenActivity", "Clicking through graphic");
            }
            l2.a(r1.this.E, appLovinAd);
            r1.this.z++;
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            r1 r1Var = r1.this;
            if (view == r1Var.k && ((Boolean) r1Var.b.a(l4.V1)).booleanValue()) {
                r1.e(r1.this);
                if (r1.this.f3517a.a1()) {
                    r1 r1Var2 = r1.this;
                    r1Var2.e("javascript:al_onCloseButtonTapped(" + r1.this.w + "," + r1.this.y + "," + r1.this.z + ");");
                }
                List P = r1.this.f3517a.P();
                com.applovin.impl.sdk.o oVar = r1.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = r1.this.c;
                    oVar2.a("AppLovinFullscreenActivity", "Handling close button tap " + r1.this.w + " with multi close delay: " + P);
                }
                if (P != null && P.size() > r1.this.w) {
                    r1.this.x.add(Long.valueOf(SystemClock.elapsedRealtime() - r1.this.q));
                    List N = r1.this.f3517a.N();
                    if (N != null && N.size() > r1.this.w) {
                        r1 r1Var3 = r1.this;
                        r1Var3.k.a((e.a) N.get(r1Var3.w));
                    }
                    com.applovin.impl.sdk.o oVar3 = r1.this.c;
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar4 = r1.this.c;
                        oVar4.a("AppLovinFullscreenActivity", "Scheduling next close button with delay: " + P.get(r1.this.w));
                    }
                    r1.this.k.setVisibility(8);
                    r1 r1Var4 = r1.this;
                    r1Var4.a(r1Var4.k, ((Integer) P.get(r1Var4.w)).intValue(), new Runnable() { // from class: com.applovin.impl.Ss
                        @Override // java.lang.Runnable
                        public final void run() {
                            r1.g.this.a();
                        }
                    });
                } else {
                    r1.this.a("native_close_button");
                }
            } else {
                com.applovin.impl.sdk.o oVar5 = r1.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar6 = r1.this.c;
                    oVar6.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                }
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }

        public /* synthetic */ g(r1 r1Var, a aVar) {
            this();
        }
    }

    public r1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f = handler;
        this.m = SystemClock.elapsedRealtime();
        this.n = new AtomicBoolean();
        this.o = new AtomicBoolean();
        this.q = -1L;
        this.w = 0;
        this.x = new ArrayList();
        this.y = 0;
        this.z = 0;
        this.A = com.applovin.impl.sdk.i.h;
        this.M = false;
        this.f3517a = bVar;
        this.b = kVar;
        this.c = kVar.O();
        this.d = activity;
        this.e = bVar.b0();
        this.E = appLovinAdClickListener;
        this.F = appLovinAdDisplayListener;
        this.G = appLovinAdVideoPlaybackListener;
        c2 c2Var = new c2(activity, kVar);
        this.H = c2Var;
        c2Var.a(this);
        this.L = new d0(kVar);
        g gVar = new g(this, null);
        if (((Boolean) kVar.a(l4.r2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
        }
        if (((Boolean) kVar.a(l4.x2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.al_onPoststitialShow_evaluation_error"));
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_shown"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_hidden"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_failure"));
        p1 p1Var = new p1(kVar.y0(), AppLovinAdSize.INTERSTITIAL, activity);
        this.i = p1Var;
        p1Var.setAdClickListener(gVar);
        this.i.setAdDisplayListener(new a());
        bVar.h().putString("ad_view_address", q7.a(this.i));
        this.i.getController().a(this);
        x1 x1Var = new x1(map, kVar);
        if (x1Var.c()) {
            this.j = new com.applovin.impl.adview.k(x1Var, activity);
        }
        kVar.k().trackImpression(bVar);
        List P = bVar.P();
        if (bVar.s() < 0 && P == null) {
            this.k = null;
        } else {
            com.applovin.impl.adview.g gVar2 = new com.applovin.impl.adview.g(bVar.q(), activity);
            this.k = gVar2;
            gVar2.setVisibility(8);
            gVar2.setOnClickListener(gVar);
        }
        com.applovin.impl.adview.g gVar3 = new com.applovin.impl.adview.g(e.a.WHITE_ON_TRANSPARENT, activity);
        this.l = gVar3;
        gVar3.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.Ssssssssss
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r1.this.b(view);
            }
        });
        if (bVar.e1()) {
            this.h = new b();
        } else {
            this.h = null;
        }
        this.g = new c(kVar);
        if (bVar.d1()) {
            this.D = kVar.q().b();
            this.C = new d(handler, kVar);
            activity.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI.buildUpon().appendPath("volume_music_speaker").build(), false, this.C);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A() {
        if (c() >= 0) {
            return true;
        }
        return false;
    }

    private void C() {
        if (this.h != null) {
            this.b.q().a(this.h);
        }
        if (this.g != null) {
            this.b.e().a(this.g);
        }
    }

    public static /* synthetic */ int e(r1 r1Var) {
        int i = r1Var.w;
        r1Var.w = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        if (this.f3517a.b0() > this.e || com.applovin.impl.d.a(this.d)) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "Ad reshow timed out. Will attempt to bring existing ad activity to front.");
        }
        this.p = false;
        long c2 = this.f3517a.c();
        if (c2 > 0) {
            a(c2).a(g4.h, new g4.b() { // from class: com.applovin.impl.Sssssssssss
                @Override // com.applovin.impl.g4.b
                public final void a(boolean z, Object obj, Object obj2) {
                    r1.this.a(z, (Void) obj, (Void) obj2);
                }
            });
        } else {
            f("app_relaunch_reshow_timed_out");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        if (!this.f3517a.N0().getAndSet(true)) {
            this.b.q0().a((w4) new a6(this.f3517a, this.b), r5.b.OTHER);
        }
    }

    public abstract void B();

    public abstract void a(ViewGroup viewGroup);

    public abstract void b(long j);

    public void g() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "Handling render process crash");
        }
        this.t = true;
    }

    public boolean h() {
        return this.s;
    }

    public boolean i() {
        if (AppLovinAdType.INCENTIVIZED == this.f3517a.getType()) {
            return true;
        }
        return false;
    }

    public boolean j() {
        return this.d instanceof AppLovinFullscreenActivity;
    }

    public void m() {
        if (!this.p && this.o.compareAndSet(false, true)) {
            l2.b(this.F, this.f3517a);
            this.b.I().b(this.f3517a);
            HashMap hashMap = new HashMap();
            com.applovin.impl.sdk.ad.b bVar = this.f3517a;
            if (bVar != null) {
                CollectionUtils.putStringIfValid("source", bVar.F(), hashMap);
                CollectionUtils.putStringIfValid("details", a2.b(this.f3517a), hashMap);
            }
            this.b.g().a(y1.t, this.f3517a, hashMap);
        }
    }

    public abstract void n();

    public void o() {
        t6 t6Var = this.I;
        if (t6Var != null) {
            t6Var.d();
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (action != null) {
            char c2 = 65535;
            switch (action.hashCode()) {
                case -1852867992:
                    if (action.equals("com.applovin.al_onPoststitialShow_evaluation_error")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1638166742:
                    if (action.equals("com.applovin.external_redirect_success")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -859884819:
                    if (action.equals("com.applovin.custom_tabs_failure")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -857571151:
                    if (action.equals("com.applovin.external_redirect_failure")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -794532889:
                    if (action.equals("com.applovin.custom_tabs_hidden")) {
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
                case -269649010:
                    if (action.equals("com.applovin.render_process_gone")) {
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
                    f();
                    return;
                case 1:
                case 3:
                    b(action, map);
                    return;
                case 2:
                case 4:
                case 5:
                    a(action, map);
                    return;
                case 6:
                    if (!this.t) {
                        g();
                        return;
                    }
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

    public void p() {
        t6 t6Var = this.I;
        if (t6Var != null) {
            t6Var.e();
        }
    }

    public void q() {
        com.applovin.impl.adview.b f2;
        if (this.i != null && this.f3517a.F0() && (f2 = this.i.getController().f()) != null) {
            this.L.a(f2, new d0.c() { // from class: com.applovin.impl.Ssssss
                @Override // com.applovin.impl.d0.c
                public final void a(View view) {
                    r1.this.a(view);
                }
            });
        }
    }

    public void r() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "onBackPressed()");
        }
        if (this.M) {
            a("back_button");
        }
        if (this.f3517a.a1()) {
            e("javascript:onBackPressed();");
        }
    }

    public void s() {
        AppLovinAdView appLovinAdView = this.i;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.i.destroy();
            this.i = null;
            if ((parent instanceof ViewGroup) && j()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        n();
        m();
        this.E = null;
        this.F = null;
        this.G = null;
        this.d = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public void t() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "onPause()");
        }
        d("javascript:al_onAppPaused();");
        if (this.H.b()) {
            this.H.a();
        }
        o();
    }

    public void u() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "onResume()");
        }
        d("javascript:al_onAppResumed();");
        p();
        if (this.H.b()) {
            this.H.a();
        }
    }

    public void v() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "onStop()");
        }
    }

    public abstract void w();

    public abstract void x();

    public void y() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "Setting ad fully watched");
        }
        this.K = true;
    }

    public boolean z() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void b(View view) {
        a("backup_close_button");
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (A()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.d("AppLovinFullscreenActivity", "App relaunch detected with launcher activity. Will attempt to re-show the ad");
            }
            this.p = true;
            long f2 = this.f3517a.f();
            if (f2 < 0) {
                return;
            }
            a(new Runnable() { // from class: com.applovin.impl.Sssss
                @Override // java.lang.Runnable
                public final void run() {
                    r1.this.k();
                }
            }, f2);
            return;
        }
        f("app_relaunch");
    }

    private void f(final String str) {
        if (this.o.get()) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.QQO
            @Override // java.lang.Runnable
            public final void run() {
                r1.this.c(str);
            }
        });
    }

    public long c() {
        com.applovin.impl.sdk.ad.b bVar = this.f3517a;
        if (bVar == null) {
            return -1L;
        }
        return bVar.g();
    }

    public void d(boolean z) {
        this.p = z;
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, Map map, com.applovin.impl.sdk.k kVar, Activity activity, f fVar) {
        r1 u1Var;
        if (bVar instanceof a7) {
            try {
                u1Var = new u1(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th) {
                fVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + kVar + " and throwable: " + th.getMessage(), th);
                return;
            }
        } else if (bVar.hasVideoUrl()) {
            try {
                u1Var = new v1(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th2) {
                fVar.a("Failed to create FullscreenVideoAdPresenter with sdk: " + kVar + " and throwable: " + th2.getMessage(), th2);
                return;
            }
        } else {
            try {
                u1Var = new s1(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th3) {
                fVar.a("Failed to create FullscreenGraphicAdPresenter with sdk: " + kVar + " and throwable: " + th3.getMessage(), th3);
                return;
            }
        }
        u1Var.C();
        fVar.a(u1Var);
    }

    public void b(boolean z) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.d("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z);
        }
        d("javascript:al_onWindowFocusChanged( " + z + " );");
        t6 t6Var = this.J;
        if (t6Var != null) {
            if (z) {
                t6Var.e();
            } else {
                t6Var.d();
            }
        }
    }

    public void d(String str) {
        if (this.f3517a.J0()) {
            a(str, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        com.applovin.impl.sdk.o.h("AppLovinFullscreenActivity", "Dismissing on-screen ad due to " + str);
        try {
            a(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.o.c("AppLovinFullscreenActivity", "Failed to dismiss ad.", th);
            try {
                m();
            } catch (Throwable unused) {
            }
        }
    }

    public void f() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "Handling al_onPoststitialShow evaluation error");
        }
    }

    public int d() {
        int u = this.f3517a.u();
        return (u <= 0 && ((Boolean) this.b.a(l4.o2)).booleanValue()) ? this.u + 1 : u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        com.applovin.impl.adview.b f2;
        AppLovinAdView appLovinAdView = this.i;
        if (appLovinAdView == null || (f2 = appLovinAdView.getController().f()) == null) {
            return;
        }
        f2.a(str);
    }

    public void c(boolean z) {
        a(z, ((Long) this.b.a(l4.p2)).longValue());
        if (!this.f3517a.E0()) {
            l2.a(this.F, this.f3517a);
        }
        this.b.I().a(this.f3517a);
        if (!this.f3517a.E0() && (this.f3517a.hasVideoUrl() || i())) {
            l2.a(this.G, this.f3517a);
        }
        new a4(this.d).a(this.f3517a);
        this.f3517a.setHasShown(true);
    }

    public void e(String str) {
        a(str, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        q7.a(gVar, 400L, new Runnable() { // from class: com.applovin.impl.Sssssssss
            @Override // java.lang.Runnable
            public final void run() {
                r1.a(com.applovin.impl.adview.g.this, runnable);
            }
        });
    }

    private void b(String str, Map map) {
        e(a8.b(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, Void r2, Void r3) {
        if (z) {
            return;
        }
        f("app_relaunch_bring_to_front_failed");
    }

    private g4 a(long j) {
        final g4 g4Var = new g4("bringAdActivityToFront");
        final e eVar = new e(g4Var);
        this.b.e().a(eVar);
        Intent intent = new Intent(this.d, AppLovinFullscreenActivity.class);
        intent.setFlags(131072);
        this.d.startActivity(intent);
        a(new Runnable() { // from class: com.applovin.impl.Ssss
            @Override // java.lang.Runnable
            public final void run() {
                r1.this.a(eVar, g4Var);
            }
        }, j);
        return g4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Ssssssss
            @Override // java.lang.Runnable
            public final void run() {
                r1.b(com.applovin.impl.adview.g.this, runnable);
            }
        });
    }

    public void c(long j) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.a("AppLovinFullscreenActivity", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds...");
        }
        this.I = t6.a(j, this.b, new Runnable() { // from class: com.applovin.impl.Sss
            @Override // java.lang.Runnable
            public final void run() {
                r1.this.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.b bVar, g4 g4Var) {
        this.b.e().b(bVar);
        if (g4Var.c()) {
            return;
        }
        g4Var.a((Object) null);
    }

    private void c(String str, Map map) {
        e(a8.c(str, map));
    }

    public boolean a(boolean z) {
        List a2 = z6.a(z, this.f3517a, this.b, this.d);
        if (a2.isEmpty()) {
            return false;
        }
        if (((Boolean) this.b.a(l4.r5)).booleanValue()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.b("AppLovinFullscreenActivity", "Dismissing ad due to missing resources: " + a2);
            }
            if (((Boolean) this.b.a(l4.u5)).booleanValue()) {
                AppLovinAdDisplayListener appLovinAdDisplayListener = this.F;
                if (appLovinAdDisplayListener instanceof f2) {
                    l2.a(appLovinAdDisplayListener, "Missing ad resources");
                }
            } else {
                h2.a(this.f3517a, this.F, "Missing ad resources", (Throwable) null, (AppLovinFullscreenActivity) null);
            }
            a("missing_ad_resources");
            String str = "Missing ad resources: " + a2;
            HashMap<String, String> hashMap = CollectionUtils.hashMap("error_message", str);
            CollectionUtils.putStringIfValid("details", "Failing ad display", hashMap);
            this.b.E().a(y1.p0, "missingCachedAdResources", hashMap);
            HashMap<String, String> hashMap2 = CollectionUtils.hashMap("source", "missingCachedAdResources");
            CollectionUtils.putStringIfValid("error_message", str, hashMap2);
            this.b.g().a(y1.s, this.f3517a, hashMap2);
            return ((Boolean) this.b.a(l4.t5)).booleanValue();
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.b("AppLovinFullscreenActivity", "Streaming ad due to missing ad resources: " + a2);
        }
        this.f3517a.S0();
        HashMap hashMap3 = new HashMap();
        CollectionUtils.putStringIfValid("error_message", "Missing ad resources: " + a2, hashMap3);
        CollectionUtils.putStringIfValid("details", "Streaming ad", hashMap3);
        this.b.E().a(y1.p0, "missingCachedAdResources", hashMap3);
        return false;
    }

    public void a(String str) {
        this.s = true;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.m;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.d("AppLovinFullscreenActivity", "Dismissing ad after " + TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime) + " seconds from source: " + str);
        }
        com.applovin.impl.sdk.ad.b bVar = this.f3517a;
        if (bVar != null) {
            bVar.getAdEventTracker().f();
        }
        this.f.removeCallbacksAndMessages(null);
        com.applovin.impl.sdk.ad.b bVar2 = this.f3517a;
        a("javascript:al_onPoststitialDismiss();", bVar2 != null ? bVar2.G() : 0L);
        if (((Boolean) this.b.a(l4.k6)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar3 = this.f3517a;
            if (bVar3 != null) {
                bVar3.a(str);
            }
            n();
        }
        m();
        this.L.b();
        if (this.h != null) {
            this.b.q().b(this.h);
        }
        if (this.g != null) {
            this.b.e().b(this.g);
        }
        if (this.C != null) {
            this.d.getContentResolver().unregisterContentObserver(this.C);
            this.C = null;
        }
        if (j()) {
            this.d.finish();
            return;
        }
        this.b.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.b.O().a("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
        }
        s();
    }

    public void a(Configuration configuration) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.d("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
        }
    }

    public void a(int i, KeyEvent keyEvent) {
        if (this.c == null || !com.applovin.impl.sdk.o.a()) {
            return;
        }
        com.applovin.impl.sdk.o oVar = this.c;
        oVar.d("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
    }

    public void a(final String str, long j) {
        if (j < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.Sssssss
            @Override // java.lang.Runnable
            public final void run() {
                r1.this.b(str);
            }
        }, j);
    }

    public void a(final com.applovin.impl.adview.g gVar, long j, final Runnable runnable) {
        if (j >= ((Long) this.b.a(l4.U1)).longValue()) {
            return;
        }
        this.J = t6.a(TimeUnit.SECONDS.toMillis(j), this.b, new Runnable() { // from class: com.applovin.impl.QQOO
            @Override // java.lang.Runnable
            public final void run() {
                r1.c(com.applovin.impl.adview.g.this, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.adview.g gVar, Runnable runnable) {
        gVar.bringToFront();
        runnable.run();
    }

    public void a(int i, boolean z, boolean z2, long j) {
        if (!this.p && this.n.compareAndSet(false, true)) {
            if (this.f3517a.hasVideoUrl() || i()) {
                l2.a(this.G, this.f3517a, i, z2);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.m;
            this.b.k().trackVideoEnd(this.f3517a, TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime), i, z);
            long elapsedRealtime2 = this.q != -1 ? SystemClock.elapsedRealtime() - this.q : -1L;
            this.b.k().trackFullScreenAdClosed(this.f3517a, elapsedRealtime2, this.x, j, this.B, this.A);
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                oVar.a("AppLovinFullscreenActivity", "Video ad ended at percent: " + i + "%, elapsedTime: " + elapsedRealtime + "ms, skipTimeMillis: " + j + "ms, closeTimeMillis: " + elapsedRealtime2 + "ms");
            }
        }
    }

    @Override // com.applovin.impl.adview.a.b
    public void a(com.applovin.impl.adview.a aVar) {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Fully watched from ad web view...");
        }
        this.K = true;
    }

    public void a(boolean z, long j) {
        if (this.f3517a.T0()) {
            a(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        if (((Boolean) this.b.a(l4.M0)).booleanValue()) {
            this.b.H().c(this.f3517a, com.applovin.impl.sdk.k.o());
        }
        Map a2 = a2.a((AppLovinAdImpl) this.f3517a);
        a2.putAll(a2.a(this.f3517a));
        this.b.E().d(y1.o0, a2);
        if (((Boolean) this.b.a(l4.O5)).booleanValue()) {
            y();
        }
        if (((Boolean) this.b.a(l4.K5)).booleanValue()) {
            a("black_view_auto_dismiss");
            return;
        }
        this.M = ((Boolean) this.b.a(l4.L5)).booleanValue();
        if (((Boolean) this.b.a(l4.M5)).booleanValue()) {
            B();
        }
    }

    private void a(String str, Map map) {
        e(a8.a(str, map));
    }

    public void a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.f);
    }
}
