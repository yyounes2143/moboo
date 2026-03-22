package com.applovin.impl;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.core.net.MailTo;
import androidx.webkit.internal.AssetHelper;
import com.applovin.creative.MaxCreativeDebuggerActivity;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.d;
import com.applovin.impl.h1;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class z0 implements h1.a {
    private static WeakReference m;
    private static final AtomicBoolean n = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3823a;
    private final Context b;
    private final y0 e;
    private h1 g;
    private t6 h;
    private int i;
    private boolean j;
    private long k;
    private boolean l;
    private final List c = new ArrayList(10);
    private final Object d = new Object();
    private WeakReference f = new WeakReference(null);

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends com.applovin.impl.b {
        public a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxCreativeDebuggerActivity) {
                com.applovin.impl.sdk.o.g("AppLovinSdk", "Started Creative Debugger");
                if (!z0.this.h() || z0.m.get() != activity) {
                    MaxCreativeDebuggerActivity maxCreativeDebuggerActivity = (MaxCreativeDebuggerActivity) activity;
                    WeakReference unused = z0.m = new WeakReference(maxCreativeDebuggerActivity);
                    maxCreativeDebuggerActivity.a(z0.this.e, z0.this.f3823a.e());
                }
                z0.n.set(false);
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof MaxCreativeDebuggerActivity) {
                com.applovin.impl.sdk.o.g("AppLovinSdk", "Creative Debugger destroyed");
                WeakReference unused = z0.m = null;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements d.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f3825a;

        public b(Object obj) {
            this.f3825a = obj;
        }

        @Override // com.applovin.impl.d.b
        public void a(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
            maxCreativeDebuggerDisplayedAdActivity.a(new l1(this.f3825a, z0.this.f3823a.I().b()), z0.this.f3823a);
            z0.n.set(false);
        }
    }

    public z0(com.applovin.impl.sdk.k kVar) {
        this.f3823a = kVar;
        Context o = com.applovin.impl.sdk.k.o();
        this.b = o;
        this.e = new y0(o);
    }

    private void e(Object obj) {
        com.applovin.impl.sdk.o.g("AppLovinSdk", "Starting Creative Debugger for current fullscreen ad...");
        d.a(this.b, MaxCreativeDebuggerDisplayedAdActivity.class, this.f3823a.e(), new b(obj));
    }

    private Drawable f() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(5, 131, 170));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(Color.rgb(2, 98, 127));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        WeakReference weakReference = m;
        if (weakReference != null && weakReference.get() != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        long seconds = TimeUnit.MILLISECONDS.toSeconds(SystemClock.elapsedRealtime() - this.k);
        if (this.k != 0 && seconds >= 10) {
            this.f3823a.E().a(y1.d, "showingMediationDebuggerFromHoldingCreativeDebuggerButton");
            this.f3823a.X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        this.i = 0;
    }

    private void m() {
        this.f3823a.e().a(new a());
    }

    public boolean g() {
        if (((Boolean) this.f3823a.a(l4.i1)).booleanValue() && this.f3823a.n0().isCreativeDebuggerEnabled()) {
            return true;
        }
        return false;
    }

    public void k() {
        h1 h1Var = this.g;
        if (h1Var != null) {
            h1Var.b();
        }
    }

    public void l() {
        if (!g()) {
            return;
        }
        this.j = ((Boolean) this.f3823a.a(l4.j1)).booleanValue();
        if (this.g == null) {
            this.g = new h1(this.f3823a, this);
        }
        this.g.a();
    }

    public void n() {
        ArrayList arrayList;
        if (!h() && n.compareAndSet(false, true)) {
            Object a2 = this.f3823a.I().a();
            if (a2 != null) {
                e(a2);
                return;
            }
            synchronized (this.d) {
                arrayList = new ArrayList(this.c);
            }
            this.e.a(arrayList, this.f3823a);
            if (!this.l) {
                m();
                this.l = true;
            }
            com.applovin.impl.sdk.o.g("AppLovinSdk", "Starting Creative Debugger...");
            d.a(this.b, MaxCreativeDebuggerActivity.class);
            return;
        }
        com.applovin.impl.sdk.o.h("AppLovinSdk", "Creative Debugger is already showing");
    }

    @Override // com.applovin.impl.h1.a
    public void b() {
        if (this.i == 0) {
            this.h = t6.a(TimeUnit.SECONDS.toMillis(3L), this.f3823a, new Runnable() { // from class: com.applovin.impl.Mmmmmmmmmm
                @Override // java.lang.Runnable
                public final void run() {
                    z0.this.j();
                }
            });
        }
        int i = this.i;
        if (i % 2 == 0) {
            this.i = i + 1;
        }
    }

    public void d(Object obj) {
        if (g() && obj != null) {
            if (!l3.a(obj) || c(obj)) {
                if (l3.b(obj) && c(obj)) {
                    return;
                }
                synchronized (this.d) {
                    try {
                        this.c.add(0, new l1(obj, System.currentTimeMillis()));
                        if (this.c.size() > 10) {
                            List list = this.c;
                            list.remove(list.size() - 1);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    private boolean c(Object obj) {
        MaxAdFormat format;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            format = ((com.applovin.impl.sdk.ad.b) obj).getAdZone().d();
        } else {
            format = obj instanceof q2 ? ((q2) obj).getFormat() : null;
        }
        return format != null && format.isFullscreenAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (g() && this.f.get() == null && !h()) {
            Activity b2 = this.f3823a.e().b();
            if (b2 == null) {
                this.f3823a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3823a.O().b("AppLovinSdk", "Failed to display Creative Debugger button");
                }
            } else {
                View findViewById = b2.findViewById(16908290);
                if (findViewById instanceof FrameLayout) {
                    final FrameLayout frameLayout = (FrameLayout) findViewById;
                    final View a2 = a(frameLayout, b2);
                    frameLayout.addView(a2);
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(150L);
                    a2.startAnimation(alphaAnimation);
                    final ViewTreeObserver viewTreeObserver = findViewById.getViewTreeObserver();
                    final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.applovin.impl.Mmmmmmmmm
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public final void onGlobalLayout() {
                            z0.this.a(a2, frameLayout);
                        }
                    };
                    viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.Mmmmmmmm
                        @Override // java.lang.Runnable
                        public final void run() {
                            z0.this.a(a2, frameLayout, viewTreeObserver, onGlobalLayoutListener);
                        }
                    }, TimeUnit.SECONDS.toMillis(5L));
                    this.f = new WeakReference(a2);
                }
            }
        }
    }

    @Override // com.applovin.impl.h1.a
    public void a() {
        int i = this.i;
        if (i % 2 == 1) {
            this.i = i + 1;
        }
        if (this.i / 2 == 2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Mmmmmm
                @Override // java.lang.Runnable
                public final void run() {
                    z0.this.e();
                }
            });
            this.i = 0;
            this.h.a();
        }
    }

    private void b(View view, FrameLayout frameLayout) {
        if (this.j) {
            view.setOnTouchListener(null);
            this.k = 0L;
        }
        frameLayout.removeView(view);
        this.f = new WeakReference(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout) {
        if (view.getParent() != null || this.f.get() == null) {
            return;
        }
        frameLayout.addView(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (this.k > 0 && this.j) {
            view.setVisibility(4);
        } else {
            b(view, frameLayout);
        }
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public String b(Object obj) {
        JSONObject a2;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            return ((com.applovin.impl.sdk.ad.b) obj).getOriginalFullResponse().toString();
        }
        if (obj instanceof q2) {
            String E = ((q2) obj).E();
            return (!l3.b(obj) || (a2 = new j(E, this.f3823a).a()) == null) ? E : a2.toString();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.widget.ImageButton, android.widget.ImageView, android.view.View] */
    private View a(final FrameLayout frameLayout, Activity activity) {
        Button button;
        int dpToPx = AppLovinSdkUtils.dpToPx(activity, 40);
        int i = dpToPx / 10;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, 8388629);
        layoutParams.setMargins(i, i, i, i);
        try {
            ?? imageButton = new ImageButton(activity);
            imageButton.setImageDrawable(activity.getResources().getDrawable(R.drawable.applovin_ic_white_small));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i, i, i, i * 2);
            button = imageButton;
        } catch (Throwable unused) {
            Button button2 = new Button(activity);
            button2.setText("ⓘ");
            button2.setTextColor(-1);
            button2.setAllCaps(false);
            button2.setTextSize(2, 20.0f);
            button2.setPadding(0, 0, 0, 0);
            button = button2;
        }
        button.setLayoutParams(layoutParams);
        button.setBackground(f());
        if (this.j) {
            button.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.Cc
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = z0.this.a(frameLayout, view, motionEvent);
                    return a2;
                }
            });
        } else {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.Mmmmmmmmmmm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    z0.this.a(view);
                }
            });
        }
        if (k0.d()) {
            button.setElevation(AppLovinSdkUtils.dpToPx(activity, 5));
        }
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(FrameLayout frameLayout, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.k = SystemClock.elapsedRealtime();
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.Mmmmmmm
                @Override // java.lang.Runnable
                public final void run() {
                    z0.this.i();
                }
            }, TimeUnit.SECONDS.toMillis(10L));
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (view.getVisibility() == 0) {
                this.k = 0L;
                n();
            } else {
                b(view, frameLayout);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void a(View view) {
        n();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[], java.io.Serializable] */
    public void a(l1 l1Var, Context context, boolean z) {
        Object a2 = l1Var.a();
        String a3 = a(l1Var);
        n2 n2Var = new n2();
        if (z) {
            n2Var.b("Please describe the issue you had with this ad:\n\n\n\n");
        }
        n2Var.b(a3);
        String b2 = this.f3823a.z().b(a2);
        if (b2 != null) {
            n2Var.a("\nBid Response:\n");
            n2Var.a(b2);
        }
        Intent createChooser = Intent.createChooser(new Intent("android.intent.action.SEND").setType(AssetHelper.DEFAULT_MIME_TYPE).putExtra("android.intent.extra.SUBJECT", a2 instanceof com.applovin.impl.sdk.ad.b ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", n2Var.toString()).setPackage(null), "Share Ad Report");
        if (z) {
            try {
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(MailTo.MAILTO_SCHEME)).putExtra("android.intent.extra.SUBJECT", a2 instanceof com.applovin.impl.sdk.ad.b ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", n2Var.toString()).setPackage("com.google.android.gm");
                String str = this.f3823a.n0().getExtraParameters().get("creative_debugger_email_recipients");
                if (StringUtils.isValidString(str)) {
                    intent.putExtra("android.intent.extra.EMAIL", (Serializable) CollectionUtils.explode(str).toArray());
                }
                context.startActivity(intent);
                return;
            } catch (ActivityNotFoundException unused) {
                context.startActivity(createChooser);
                return;
            }
        }
        context.startActivity(createChooser);
    }

    public String a(l1 l1Var) {
        Object a2 = l1Var.a();
        n2 n2Var = new n2();
        n2Var.b("Ad Info:\n");
        if (a2 instanceof com.applovin.impl.sdk.ad.b) {
            com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) a2;
            n2Var.a(AndroidInitializeBoldSDK.MSG_NETWORK, "APPLOVIN").a(bVar).b(bVar);
        } else if (a2 instanceof q2) {
            n2Var.a((q2) a2);
        }
        n2Var.a(this.f3823a);
        n2Var.a("Epoch Timestamp (ms)", Long.valueOf(l1Var.b()));
        n2Var.a("\nDebug Info:\n").a("Platform", "fireos".equals(this.f3823a.B().x()) ? "Fire OS" : "Android").a("AppLovin SDK Version", AppLovinSdk.VERSION).a("Plugin Version", this.f3823a.a(l4.B3)).a("App Package Name", this.b.getPackageName()).a("Device", String.format("%s %s (%s)", Build.BRAND, Build.MODEL, Build.DEVICE)).a("OS Version", Build.VERSION.RELEASE).a("AppLovin Random Token", this.f3823a.h0()).a("Ad Review Version", i.b()).a(a(a2)).a("User ID", this.f3823a.w0().e() != null ? this.f3823a.w0().e() : "None").a("MD", this.f3823a.a(l4.t));
        return n2Var.toString();
    }

    private Bundle a(Object obj) {
        this.f3823a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3823a.O();
            O.a("CreativeDebuggerService", "Retrieving Ad Review info for ad: " + obj);
        }
        String a2 = z6.a(obj);
        Bundle a3 = this.f3823a.j().a(a2);
        this.f3823a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = this.f3823a.O();
            O2.a("CreativeDebuggerService", "Serve id: " + a2);
        }
        this.f3823a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O3 = this.f3823a.O();
            O3.a("CreativeDebuggerService", "Public data: " + a3);
        }
        if (a3 != null) {
            for (String str : a3.keySet()) {
                Object obj2 = a3.get(str);
                a3.remove(str);
                BundleUtils.put(StringUtils.toHumanReadableString(str), obj2, a3);
            }
            return a3;
        }
        return null;
    }
}
