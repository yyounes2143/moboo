package com.applovin.impl;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class s7 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f3539a;
    private final Runnable e;
    private final ViewTreeObserver.OnPreDrawListener f;
    private final WeakReference g;
    private final long h;
    private int k;
    private float l;
    private float m;
    private long n;
    private final Object b = new Object();
    private final Rect c = new Rect();
    private WeakReference i = new WeakReference(null);
    private WeakReference j = new WeakReference(null);
    private long o = Long.MIN_VALUE;
    private final Handler d = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void onLogVisibilityImpression();
    }

    public s7(final View view, com.applovin.impl.sdk.k kVar, a aVar) {
        this.f3539a = kVar.O();
        this.h = ((Long) kVar.a(l4.w1)).longValue();
        this.g = new WeakReference(view);
        final WeakReference weakReference = new WeakReference(aVar);
        this.e = new Runnable() { // from class: com.applovin.impl.Llllllll
            @Override // java.lang.Runnable
            public final void run() {
                s7.this.a(weakReference);
            }
        };
        this.f = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.Lllllll
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean a2;
                a2 = s7.this.a(view);
                return a2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WeakReference weakReference) {
        View view = (View) this.g.get();
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        View view2 = (View) this.j.get();
        if (viewGroup == null || view2 == null) {
            return;
        }
        if (a(viewGroup, view2)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f3539a.a("VisibilityTracker", "View met visibility requirements. Logging visibility impression..");
            }
            b();
            a aVar = (a) weakReference.get();
            if (aVar != null) {
                aVar.onLogVisibilityImpression();
                return;
            }
            return;
        }
        a();
    }

    private void c(View view) {
        View b = q7.b((View) this.g.get());
        if (b == null) {
            b = q7.b(view);
        }
        if (b == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f3539a.a("VisibilityTracker", "Unable to set view tree observer due to no root view.");
                return;
            }
            return;
        }
        ViewTreeObserver viewTreeObserver = b.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f3539a.k("VisibilityTracker", "Unable to set view tree observer since the view tree observer is not alive.");
                return;
            }
            return;
        }
        this.i = new WeakReference(viewTreeObserver);
        viewTreeObserver.addOnPreDrawListener(this.f);
    }

    public void b() {
        synchronized (this.b) {
            this.d.removeMessages(0);
            b((View) this.g.get());
            this.o = Long.MIN_VALUE;
            this.j.clear();
        }
    }

    private boolean b(View view, View view2) {
        if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || view2.getWidth() <= 0 || view2.getHeight() <= 0 || !view2.getGlobalVisibleRect(this.c)) {
            return false;
        }
        long pxToDp = AppLovinSdkUtils.pxToDp(view2.getContext(), this.c.width()) * AppLovinSdkUtils.pxToDp(view2.getContext(), this.c.height());
        if (pxToDp < this.k) {
            return false;
        }
        if ((((float) pxToDp) / (AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getWidth()) * AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getHeight()))) * 100.0f < this.l) {
            return false;
        }
        return (((float) ((long) (this.c.width() * this.c.height()))) / ((float) ((long) (view2.getWidth() * view2.getHeight())))) * 100.0f >= this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        a();
        b(view);
        return true;
    }

    public void a(y2 y2Var) {
        View l0;
        if (y2Var instanceof s2) {
            l0 = y2Var.y();
        } else if (!(y2Var instanceof u2)) {
            return;
        } else {
            l0 = ((u2) y2Var).l0();
        }
        a(y2Var.d0(), y2Var.f0(), y2Var.g0(), y2Var.h0(), l0);
    }

    private void b(View view) {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.i.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f);
        } else if (view != null) {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnPreDrawListener(this.f);
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f3539a.a("VisibilityTracker", "Could not remove on pre-draw listener. View tree observer is not alive.");
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f3539a.a("VisibilityTracker", "Could not remove on pre-draw listener. Root view is null.");
        }
        this.i.clear();
    }

    public void a(int i, float f, float f2, long j, View view) {
        synchronized (this.b) {
            try {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f3539a;
                    oVar.a("VisibilityTracker", "Tracking visibility for " + view);
                }
                b();
                WeakReference weakReference = new WeakReference(view);
                this.j = weakReference;
                this.k = i;
                this.l = f;
                this.m = f2;
                this.n = j;
                c((View) weakReference.get());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a() {
        this.d.postDelayed(this.e, this.h);
    }

    private boolean a(View view, View view2) {
        if (b(view, view2)) {
            if (this.o == Long.MIN_VALUE) {
                this.o = SystemClock.uptimeMillis();
            }
            if (SystemClock.uptimeMillis() - this.o >= this.n) {
                return true;
            }
        }
        return false;
    }
}
