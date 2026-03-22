package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
class bi extends com.google.android.play.integrity.internal.j {

    /* renamed from: a  reason: collision with root package name */
    final TaskCompletionSource f7711a;
    final /* synthetic */ bn b;

    public bi(bn bnVar, TaskCompletionSource taskCompletionSource) {
        this.b = bnVar;
        this.f7711a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.k
    public final void b(Bundle bundle) throws RemoteException {
        this.b.f7713a.v(this.f7711a);
    }

    @Override // com.google.android.play.integrity.internal.k
    public void c(Bundle bundle) throws RemoteException {
        this.b.f7713a.v(this.f7711a);
    }

    @Override // com.google.android.play.integrity.internal.k
    public final void d(Bundle bundle) throws RemoteException {
        this.b.f7713a.v(this.f7711a);
    }

    @Override // com.google.android.play.integrity.internal.k
    public void e(Bundle bundle) throws RemoteException {
        this.b.f7713a.v(this.f7711a);
    }
}
