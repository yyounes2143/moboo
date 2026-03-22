package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.t2;
import com.applovin.impl.z6;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a extends com.applovin.impl.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.c f3352a;
    private final o b;
    private final String c;
    private InterfaceC0015a d;
    private t2 e;
    private String f;

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.mediation.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0015a {
        void a(t2 t2Var);
    }

    public a(k kVar) {
        this.b = kVar.O();
        this.f3352a = kVar.e();
        this.c = z6.a(k.o(), "AdActivityObserver", kVar);
    }

    public void a(t2 t2Var, InterfaceC0015a interfaceC0015a) {
        if (o.a()) {
            o oVar = this.b;
            oVar.a("AdActivityObserver", "Starting for ad " + t2Var.getAdUnitId() + "...");
        }
        a();
        this.d = interfaceC0015a;
        this.e = t2Var;
        this.f3352a.a(this);
    }

    @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity.getClass().getName().equals(this.c) && this.e.p0()) {
            if (o.a()) {
                this.b.a("AdActivityObserver", "App relaunched via launcher without an ad hidden callback, manually invoking ad hidden");
            }
            if (this.d != null) {
                if (o.a()) {
                    this.b.a("AdActivityObserver", "Invoking callback...");
                }
                this.d.a(this.e);
            }
            a();
        } else if (this.f == null) {
            this.f = activity.getClass().getName();
            if (o.a()) {
                o oVar = this.b;
                oVar.a("AdActivityObserver", "Started tracking ad Activity: " + this.f);
            }
        }
    }

    @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity.getClass().getName().equals(this.f)) {
            if (o.a()) {
                o oVar = this.b;
                oVar.a("AdActivityObserver", "Ad Activity destroyed: " + this.f);
            }
            if (this.d != null) {
                if (o.a()) {
                    this.b.a("AdActivityObserver", "Invoking callback...");
                }
                this.d.a(this.e);
            }
            a();
        }
    }

    public void a() {
        if (o.a()) {
            this.b.a("AdActivityObserver", "Cancelling...");
        }
        this.f3352a.b(this);
        this.d = null;
        this.e = null;
        this.f = null;
    }
}
