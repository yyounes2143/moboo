package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcva {
    private Context zza;
    private zzfcp zzb;
    private Bundle zzc;
    @Nullable
    private zzfch zzd;
    @Nullable
    private zzcut zze;
    @Nullable
    private zzedk zzf;
    private int zzg = 0;

    public final zzcva zze(@Nullable zzedk zzedkVar) {
        this.zzf = zzedkVar;
        return this;
    }

    public final zzcva zzf(Context context) {
        this.zza = context;
        return this;
    }

    public final zzcva zzg(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzcva zzh(@Nullable zzcut zzcutVar) {
        this.zze = zzcutVar;
        return this;
    }

    public final zzcva zzi(int i) {
        this.zzg = i;
        return this;
    }

    public final zzcva zzj(zzfch zzfchVar) {
        this.zzd = zzfchVar;
        return this;
    }

    public final zzcva zzk(zzfcp zzfcpVar) {
        this.zzb = zzfcpVar;
        return this;
    }

    public final zzcvc zzl() {
        return new zzcvc(this, null);
    }
}
