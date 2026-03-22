package com.applovin.adview;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.applovin.impl.h2;
import com.applovin.impl.r1;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinFullscreenAdViewObserver implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Lifecycle f2635a;
    private h2 b;
    private final AtomicBoolean c = new AtomicBoolean(true);
    private r1 d;

    public AppLovinFullscreenAdViewObserver(Lifecycle lifecycle, h2 h2Var) {
        this.f2635a = lifecycle;
        this.b = h2Var;
        lifecycle.addObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        this.f2635a.removeObserver(this);
        h2 h2Var = this.b;
        if (h2Var != null) {
            h2Var.a();
            this.b = null;
        }
        r1 r1Var = this.d;
        if (r1Var != null) {
            r1Var.a("lifecycle_on_destroy");
            this.d.s();
            this.d = null;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        r1 r1Var = this.d;
        if (r1Var != null) {
            r1Var.t();
            this.d.w();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        r1 r1Var;
        if (!this.c.getAndSet(false) && (r1Var = this.d) != null) {
            r1Var.u();
            this.d.b(0L);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        r1 r1Var = this.d;
        if (r1Var != null) {
            r1Var.v();
        }
    }

    public void setPresenter(r1 r1Var) {
        this.d = r1Var;
    }
}
