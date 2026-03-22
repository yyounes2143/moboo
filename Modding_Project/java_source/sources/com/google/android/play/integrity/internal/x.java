package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class x extends t {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7749a;

    public x(ae aeVar) {
        this.f7749a = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        s sVar;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        s sVar2;
        obj = this.f7749a.g;
        synchronized (obj) {
            try {
                atomicInteger = this.f7749a.m;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = this.f7749a.m;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        sVar2 = this.f7749a.c;
                        sVar2.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                        return;
                    }
                }
                ae aeVar = this.f7749a;
                iInterface = aeVar.o;
                if (iInterface != null) {
                    sVar = aeVar.c;
                    sVar.d("Unbind from service.", new Object[0]);
                    ae aeVar2 = this.f7749a;
                    context = aeVar2.b;
                    serviceConnection = aeVar2.n;
                    context.unbindService(serviceConnection);
                    this.f7749a.h = false;
                    this.f7749a.o = null;
                    this.f7749a.n = null;
                }
                this.f7749a.x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
