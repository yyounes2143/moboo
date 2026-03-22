package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzyx {
    @Nullable
    private zzyw zza;
    @Nullable
    private zzzf zzb;

    @Nullable
    public zzlx zze() {
        throw null;
    }

    @CallSuper
    public void zzj() {
        this.zza = null;
        this.zzb = null;
    }

    public void zzk(zze zzeVar) {
        throw null;
    }

    public boolean zzn() {
        throw null;
    }

    public abstract zzyy zzo(zzly[] zzlyVarArr, zzxe zzxeVar, zzvb zzvbVar, zzbl zzblVar) throws zzik;

    public abstract void zzp(@Nullable Object obj);

    public final zzzf zzq() {
        zzzf zzzfVar = this.zzb;
        zzdc.zzb(zzzfVar);
        return zzzfVar;
    }

    @CallSuper
    public final void zzr(zzyw zzywVar, zzzf zzzfVar) {
        this.zza = zzywVar;
        this.zzb = zzzfVar;
    }

    public final void zzs() {
        zzyw zzywVar = this.zza;
        if (zzywVar != null) {
            zzywVar.zzl();
        }
    }
}
