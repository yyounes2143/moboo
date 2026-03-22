package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgcl extends zzgby {
    private zzgck zza;

    public zzgcl(zzfxx zzfxxVar, boolean z, Executor executor, Callable callable) {
        super(zzfxxVar, z, false);
        this.zza = new zzgcj(this, callable, executor);
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final void zzA(int i) {
        super.zzA(i);
        if (i == 1) {
            this.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgbm
    public final void zzk() {
        zzgck zzgckVar = this.zza;
        if (zzgckVar != null) {
            zzgckVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final void zzy() {
        zzgck zzgckVar = this.zza;
        if (zzgckVar != null) {
            zzgckVar.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final void zzx(int i, Object obj) {
    }
}
