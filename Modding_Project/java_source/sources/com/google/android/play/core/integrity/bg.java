package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class bg extends bm {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7709a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ TaskCompletionSource d;
    final /* synthetic */ bn e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bn bnVar, TaskCompletionSource taskCompletionSource, int i, String str, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.e = bnVar;
        this.f7709a = str;
        this.b = j;
        this.c = j2;
        this.d = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        com.google.android.play.integrity.internal.s sVar;
        if (!bn.k(this.e)) {
            try {
                bn bnVar = this.e;
                ((com.google.android.play.integrity.internal.i) bnVar.f7713a.e()).d(bn.a(bnVar, this.f7709a, this.b, this.c, 0), new bk(this.e, this.d, this.b));
                return;
            } catch (RemoteException e) {
                bn bnVar2 = this.e;
                String str = this.f7709a;
                sVar = bnVar2.b;
                sVar.c(e, "requestExpressIntegrityToken(%s, %s)", str, Long.valueOf(this.b));
                this.d.trySetException(new StandardIntegrityException(-100, e));
                return;
            }
        }
        super.a(new StandardIntegrityException(-2, null));
    }
}
