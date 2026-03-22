package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class bf extends bm {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f7708a;
    final /* synthetic */ TaskCompletionSource b;
    final /* synthetic */ bn c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(bn bnVar, TaskCompletionSource taskCompletionSource, int i, long j, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.c = bnVar;
        this.f7708a = j;
        this.b = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        com.google.android.play.integrity.internal.s sVar;
        if (!bn.k(this.c)) {
            try {
                bn bnVar = this.c;
                ((com.google.android.play.integrity.internal.i) bnVar.f7713a.e()).e(bn.b(bnVar, this.f7708a, 0), new bl(this.c, this.b));
                return;
            } catch (RemoteException e) {
                bn bnVar2 = this.c;
                long j = this.f7708a;
                sVar = bnVar2.b;
                sVar.c(e, "warmUpIntegrityToken(%s)", Long.valueOf(j));
                this.b.trySetException(new StandardIntegrityException(-100, e));
                return;
            }
        }
        super.a(new StandardIntegrityException(-2, null));
    }
}
