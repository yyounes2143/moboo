package com.google.android.gms.measurement.internal;

import j$.util.Objects;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhn implements com.google.android.gms.internal.measurement.zzr {
    final /* synthetic */ zzht zza;

    public zzhn(zzht zzhtVar) {
        Objects.requireNonNull(zzhtVar);
        this.zza = zzhtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void zza(int i, String str, List list, boolean z, boolean z2) {
        zzgs zzj;
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        zzj = this.zza.zzu.zzaV().zzi();
                    } else if (z) {
                        zzj = this.zza.zzu.zzaV().zzf();
                    } else if (!z2) {
                        zzj = this.zza.zzu.zzaV().zzh();
                    } else {
                        zzj = this.zza.zzu.zzaV().zze();
                    }
                } else {
                    zzj = this.zza.zzu.zzaV().zzk();
                }
            } else if (z) {
                zzj = this.zza.zzu.zzaV().zzc();
            } else if (!z2) {
                zzj = this.zza.zzu.zzaV().zzd();
            } else {
                zzj = this.zza.zzu.zzaV().zzb();
            }
        } else {
            zzj = this.zza.zzu.zzaV().zzj();
        }
        int size = list.size();
        if (size != 1) {
            if (size != 2) {
                if (size != 3) {
                    zzj.zza(str);
                    return;
                } else {
                    zzj.zzd(str, list.get(0), list.get(1), list.get(2));
                    return;
                }
            }
            zzj.zzc(str, list.get(0), list.get(1));
            return;
        }
        zzj.zzb(str, list.get(0));
    }
}
