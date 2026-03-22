package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgck extends zzgdg {
    private final Executor zza;
    final /* synthetic */ zzgcl zzb;

    public zzgck(zzgcl zzgclVar, Executor executor) {
        this.zzb = zzgclVar;
        executor.getClass();
        this.zza = executor;
    }

    public abstract void zzc(Object obj);

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final void zzd(Throwable th) {
        zzgcl zzgclVar = this.zzb;
        zzgclVar.zza = null;
        if (th instanceof ExecutionException) {
            zzgclVar.zzd(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            zzgclVar.cancel(false);
        } else {
            zzgclVar.zzd(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final void zze(Object obj) {
        this.zzb.zza = null;
        zzc(obj);
    }

    public final void zzf() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e) {
            this.zzb.zzd(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final boolean zzg() {
        return this.zzb.isDone();
    }
}
