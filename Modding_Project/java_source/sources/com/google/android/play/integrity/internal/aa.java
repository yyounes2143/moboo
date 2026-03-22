package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class aa extends t {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ IBinder f7735a;
    final /* synthetic */ ad b;

    public aa(ad adVar, IBinder iBinder) {
        this.b = adVar;
        this.f7735a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        z zVar;
        List<Runnable> list;
        List list2;
        zVar = this.b.f7737a.j;
        this.b.f7737a.o = (IInterface) zVar.a(this.f7735a);
        ae.r(this.b.f7737a);
        this.b.f7737a.h = false;
        list = this.b.f7737a.e;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.b.f7737a.e;
        list2.clear();
    }
}
