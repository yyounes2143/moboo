package com.applovin.adview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.impl.a2;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.c0;
import com.applovin.impl.d;
import com.applovin.impl.e;
import com.applovin.impl.g;
import com.applovin.impl.h2;
import com.applovin.impl.i1;
import com.applovin.impl.k0;
import com.applovin.impl.l4;
import com.applovin.impl.n4;
import com.applovin.impl.q7;
import com.applovin.impl.r1;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinFullscreenActivity extends Activity implements i1 {
    private static final Set i = Collections.newSetFromMap(new WeakHashMap());
    private static final Object j = new Object();
    @SuppressLint({"StaticFieldLeak"})
    public static h2 parentInterstitialWrapper;

    /* renamed from: a  reason: collision with root package name */
    private k f2632a;
    private r1 b;
    private final AtomicBoolean c = new AtomicBoolean(true);
    private com.applovin.impl.adview.activity.a d;
    private b e;
    private boolean f;
    private c0 g;
    private long h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b implements OnBackInvokedCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f2634a;

        public b(Runnable runnable) {
            this.f2634a = runnable;
        }

        public void onBackInvoked() {
            this.f2634a.run();
        }
    }

    private void b() {
        k kVar = this.f2632a;
        if (kVar != null && ((Boolean) kVar.a(l4.Y1)).booleanValue()) {
            final Long l = (Long) this.f2632a.a(l4.Z1);
            this.g = c0.a(l.longValue(), true, this.f2632a, new Runnable() { // from class: com.applovin.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinFullscreenActivity.this.a(l);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        r1 r1Var = this.b;
        if (r1Var != null) {
            r1Var.r();
        }
        if (z6.e(getApplicationContext())) {
            super.onBackPressed();
        }
    }

    @Override // com.applovin.impl.i1
    public void dismiss(String str) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (k0.j() && this.e != null) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.e);
            this.e = null;
        }
        r1 r1Var = this.b;
        if (r1Var != null) {
            r1Var.a(str);
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        r1 r1Var = this.b;
        if (r1Var != null) {
            r1Var.a(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (bundle != null && parentInterstitialWrapper == null) {
            o.j("AppLovinFullscreenActivity", "Dismissing ad. Activity was destroyed while in background.");
            dismiss("activity_destroyed_while_in_background");
            return;
        }
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            o.c("AppLovinFullscreenActivity", "Failed to request window feature", th);
        }
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        View findViewById = findViewById(16908290);
        findViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        if (TextUtils.isEmpty(getIntent().getStringExtra("com.applovin.interstitial.sdk_key"))) {
            h2 h2Var = parentInterstitialWrapper;
            if (h2Var != null && h2Var.f() != null) {
                h2.a(parentInterstitialWrapper.f(), parentInterstitialWrapper.c(), "Empty SDK key", (Throwable) null, this);
            }
            finish();
            return;
        }
        k a2 = AppLovinSdk.getInstance(this).a();
        this.f2632a = a2;
        this.f = ((Boolean) a2.a(l4.q2)).booleanValue();
        findViewById.setFitsSystemWindows(true);
        if (k0.b()) {
            q7.a(findViewById, this.f2632a);
        }
        h2 h2Var2 = parentInterstitialWrapper;
        if (h2Var2 != null && h2Var2.f() != null) {
            com.applovin.impl.sdk.ad.b f = parentInterstitialWrapper.f();
            if (f.C0()) {
                g.a(f, this, this.f2632a);
            }
        }
        d.a(this.f, this);
        if (k0.j() && ((Boolean) this.f2632a.a(l4.D5)).booleanValue()) {
            this.e = new b(new Runnable() { // from class: com.applovin.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinFullscreenActivity.this.c();
                }
            });
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.e);
        }
        a();
        b();
        Integer num = (Integer) this.f2632a.a(l4.c6);
        if (num.intValue() > 0) {
            synchronized (j) {
                Set set = i;
                set.add(this);
                z6.a("AppLovinFullscreenActivity", set.size(), num.intValue(), this.f2632a.E());
            }
        }
        h2 h2Var3 = parentInterstitialWrapper;
        if (h2Var3 != null) {
            r1.a(h2Var3.f(), parentInterstitialWrapper.b(), parentInterstitialWrapper.c(), parentInterstitialWrapper.d(), parentInterstitialWrapper.h(), this.f2632a, this, new a());
            return;
        }
        Intent intent = new Intent(this, FullscreenAdService.class);
        com.applovin.impl.adview.activity.a aVar = new com.applovin.impl.adview.activity.a(this, this.f2632a);
        this.d = aVar;
        bindService(intent, aVar, 1);
        if (k0.h()) {
            String str = this.f2632a.n0().getExtraParameters().get("disable_set_data_dir_suffix");
            if (!StringUtils.isValidString(str) || !Boolean.parseBoolean(str)) {
                try {
                    WebView.setDataDirectorySuffix(String.valueOf(Process.myPid()));
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        k kVar = this.f2632a;
        if (kVar != null && ((Boolean) kVar.a(l4.X1)).booleanValue()) {
            this.f2632a.p0().b(n4.J);
            this.f2632a.p0().b(n4.L);
            this.f2632a.p0().b(n4.M);
        }
        if (this.g != null) {
            this.f2632a.p0().b(n4.K);
            this.g.a();
            this.g = null;
        }
        com.applovin.impl.adview.activity.a aVar = this.d;
        if (aVar != null) {
            try {
                unbindService(aVar);
            } catch (Throwable unused) {
            }
        }
        r1 r1Var = this.b;
        if (r1Var != null) {
            if (r1Var.h()) {
                this.b.s();
            } else {
                long c = this.b.c();
                int i2 = (c > 0L ? 1 : (c == 0L ? 0 : -1));
                if (i2 >= 0) {
                    if (i2 == 0) {
                        this.b.d(true);
                    }
                    final h2 h2Var = parentInterstitialWrapper;
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.adview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            AppLovinFullscreenActivity.this.a(h2Var);
                        }
                    }, c);
                } else {
                    a(this.b, false, false);
                }
            }
        }
        parentInterstitialWrapper = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        r1 r1Var = this.b;
        if (r1Var != null) {
            r1Var.a(i2, keyEvent);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        r1 r1Var = this.b;
        if (r1Var != null) {
            r1Var.t();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        r1 r1Var;
        try {
            super.onResume();
            if (!this.c.get() && (r1Var = this.b) != null) {
                r1Var.u();
            }
        } catch (IllegalArgumentException e) {
            this.f2632a.O();
            if (o.a()) {
                this.f2632a.O().a("AppLovinFullscreenActivity", "Error was encountered in onResume().", e);
            }
            this.f2632a.E().a("AppLovinFullscreenActivity", "onResume", e);
            dismiss("activity_on_resume_error");
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        r1 r1Var = this.b;
        if (r1Var != null) {
            r1Var.v();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (this.b != null) {
            if (!this.c.getAndSet(false)) {
                this.b.b(z);
            }
            if (z) {
                d.a(this.f, this);
            }
        }
        super.onWindowFocusChanged(z);
    }

    public void setPresenter(@Nullable r1 r1Var) {
        this.b = r1Var;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements r1.f {
        public a() {
        }

        @Override // com.applovin.impl.r1.f
        public void a(r1 r1Var) {
            AppLovinFullscreenActivity.this.b = r1Var;
            r1Var.x();
        }

        @Override // com.applovin.impl.r1.f
        public void a(String str, Throwable th) {
            com.applovin.impl.sdk.ad.b f = AppLovinFullscreenActivity.parentInterstitialWrapper.f();
            h2.a(f, AppLovinFullscreenActivity.parentInterstitialWrapper.c(), str, th, AppLovinFullscreenActivity.this);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "createAppLovinFullscreenActivity");
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), hashMap);
            AppLovinFullscreenActivity.this.f2632a.g().a(y1.s, f, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h2 h2Var) {
        boolean z = this.b.z();
        boolean z2 = false;
        if (z) {
            boolean i2 = h2Var.i();
            if (!i2) {
                this.b.d(false);
            }
            z2 = i2;
        }
        a(this.b, z, z2);
    }

    private void a(r1 r1Var, boolean z, boolean z2) {
        r1Var.a("activity_destroyed_by_app_relaunch");
        if (this.f2632a != null) {
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "onDestroyAppLovinFullScreenActivity");
            h2 h2Var = parentInterstitialWrapper;
            com.applovin.impl.sdk.ad.b f = h2Var != null ? h2Var.f() : null;
            hashMap.putAll(a2.a((AppLovinAdImpl) f));
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putBoolean(jSONObject, "reshow_attempted", z);
            JsonUtils.putBoolean(jSONObject, "reshow_success", z2);
            if (f != null) {
                JsonUtils.putInt(jSONObject, "reshow_count", f.b0());
            }
            hashMap.put("details", jSONObject.toString());
            this.f2632a.E().d(y1.h0, hashMap);
        }
        r1Var.s();
    }

    private void a() {
        h2 h2Var;
        k kVar = this.f2632a;
        if (kVar == null || !((Boolean) kVar.a(l4.X1)).booleanValue() || (h2Var = parentInterstitialWrapper) == null || h2Var.f() == null) {
            return;
        }
        com.applovin.impl.sdk.ad.b f = parentInterstitialWrapper.f();
        List j2 = f.j();
        if (CollectionUtils.isEmpty(j2)) {
            return;
        }
        e eVar = (e) j2.get(0);
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_url", eVar.c());
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_backup_url", eVar.a());
        this.f2632a.p0().b(n4.L, jSONObject.toString());
        this.f2632a.p0().b(n4.J, Long.valueOf(System.currentTimeMillis()));
        this.f2632a.p0().b(n4.M, CollectionUtils.toJsonString(a2.a((AppLovinAdImpl) f), JsonUtils.EMPTY_JSON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l) {
        this.h += l.longValue();
        this.f2632a.p0().b(n4.K, Long.valueOf(this.h));
    }
}
