package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class ag extends com.google.android.play.integrity.internal.t {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f7687a;
    final /* synthetic */ Activity b;
    final /* synthetic */ TaskCompletionSource c;
    final /* synthetic */ int d;
    final /* synthetic */ aj e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(aj ajVar, TaskCompletionSource taskCompletionSource, Bundle bundle, Activity activity, TaskCompletionSource taskCompletionSource2, int i) {
        super(taskCompletionSource);
        this.e = ajVar;
        this.f7687a = bundle;
        this.b = activity;
        this.c = taskCompletionSource2;
        this.d = i;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        com.google.android.play.integrity.internal.s sVar;
        at atVar;
        try {
            Bundle bundle = this.f7687a;
            aj ajVar = this.e;
            atVar = ajVar.d;
            ((com.google.android.play.integrity.internal.n) this.e.f7690a.e()).c(bundle, atVar.a(this.b, this.c, ajVar.f7690a));
        } catch (RemoteException e) {
            aj ajVar2 = this.e;
            int i = this.d;
            sVar = ajVar2.b;
            sVar.c(e, "requestAndShowDialog(%s)", Integer.valueOf(i));
            this.c.trySetException(new IntegrityServiceException(-100, e));
        }
    }
}
