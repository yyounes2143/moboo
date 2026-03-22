package com.changdu.component.core.googleadid;

import android.content.Context;
import android.os.Handler;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object[] f5302a;
    public final /* synthetic */ Handler b;
    public final /* synthetic */ c c;

    public b(d dVar, Object[] objArr, Handler handler) {
        this.c = dVar;
        this.f5302a = objArr;
        this.b = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.c;
        Object[] objArr = this.f5302a;
        ((d) cVar).getClass();
        this.b.post(new a(this, GoogleAdId.getGoogleAdId(((Context[]) objArr)[0])));
    }
}
