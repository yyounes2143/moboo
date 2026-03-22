package com.applovin.impl.sdk;

import com.applovin.impl.l4;
import com.applovin.impl.o1;
import com.applovin.impl.sdk.a;
import com.applovin.impl.t6;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final k f3671a;
    private final WeakReference b;
    private final WeakReference c;
    private t6 d;

    private b(o1 o1Var, a.InterfaceC0020a interfaceC0020a, k kVar) {
        this.b = new WeakReference(o1Var);
        this.c = new WeakReference(interfaceC0020a);
        this.f3671a = kVar;
    }

    public static b a(o1 o1Var, a.InterfaceC0020a interfaceC0020a, k kVar) {
        b bVar = new b(o1Var, interfaceC0020a, kVar);
        bVar.a(o1Var.getTimeToLiveMillis());
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        d();
        this.f3671a.f().a(this);
    }

    public o1 b() {
        return (o1) this.b.get();
    }

    public void d() {
        a();
        o1 b = b();
        if (b != null) {
            b.setExpired();
            a.InterfaceC0020a interfaceC0020a = (a.InterfaceC0020a) this.c.get();
            if (interfaceC0020a == null) {
                return;
            }
            interfaceC0020a.onAdExpired(b);
        }
    }

    public void a(long j) {
        a();
        if (((Boolean) this.f3671a.a(l4.X0)).booleanValue() || !this.f3671a.m0().isApplicationPaused()) {
            this.d = t6.a(j, this.f3671a, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.c();
                }
            });
        }
    }

    public void a() {
        t6 t6Var = this.d;
        if (t6Var != null) {
            t6Var.a();
            this.d = null;
        }
    }
}
