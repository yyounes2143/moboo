package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Date;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflv implements zzfly {
    private static final zzflv zza = new zzflv(new zzflz());
    private Date zzb;
    private boolean zzc;
    private final zzflz zzd;
    private boolean zze;

    private zzflv(zzflz zzflzVar) {
        this.zzd = zzflzVar;
    }

    public static zzflv zza() {
        return zza;
    }

    public final Date zzb() {
        Date date = this.zzb;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final void zzc(boolean z) {
        if (!this.zze && z) {
            Date date = new Date();
            Date date2 = this.zzb;
            if (date2 == null || date.after(date2)) {
                this.zzb = date;
                if (this.zzc) {
                    for (zzflf zzflfVar : zzflx.zza().zzb()) {
                        zzflfVar.zzg().zzg(zzb());
                    }
                }
            }
        }
        this.zze = z;
    }

    public final void zzd(@NonNull Context context) {
        if (!this.zzc) {
            zzflz zzflzVar = this.zzd;
            zzflzVar.zzd(context);
            zzflzVar.zze(this);
            zzflzVar.zzf();
            this.zze = zzflzVar.zza;
            this.zzc = true;
        }
    }
}
