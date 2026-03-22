package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzapl {
    private final Executor zza;

    public zzapl(Handler handler) {
        this.zza = new zzapj(this, handler);
    }

    public final void zza(zzapu zzapuVar, zzaqd zzaqdVar) {
        zzapuVar.zzm("post-error");
        ((zzapj) this.zza).zza.post(new zzapk(zzapuVar, zzaqa.zza(zzaqdVar), null));
    }

    public final void zzb(zzapu zzapuVar, zzaqa zzaqaVar, Runnable runnable) {
        zzapuVar.zzq();
        zzapuVar.zzm("post-response");
        ((zzapj) this.zza).zza.post(new zzapk(zzapuVar, zzaqaVar, runnable));
    }
}
