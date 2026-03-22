package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaba {
    private final Context zza;
    private final zzabl zzb;
    private zzby zzc;
    private zzca zzd;
    private boolean zzg;
    private boolean zzi;
    private final List zze = zzfyc.zzn();
    private final zzbv zzf = zzbv.zza;
    private zzdg zzh = zzdg.zza;

    public zzaba(Context context, zzabl zzablVar) {
        this.zza = context.getApplicationContext();
        this.zzb = zzablVar;
    }

    public final zzaba zze(zzdg zzdgVar) {
        this.zzh = zzdgVar;
        return this;
    }

    public final zzaba zzf(boolean z) {
        this.zzg = true;
        return this;
    }

    public final zzabh zzg() {
        zzdc.zzf(!this.zzi);
        if (this.zzd == null) {
            if (this.zzc == null) {
                this.zzc = new zzabd(false);
            }
            this.zzd = new zzabe(this.zzc);
        }
        zzabh zzabhVar = new zzabh(this, null);
        this.zzi = true;
        return zzabhVar;
    }
}
