package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzeff implements zzdgi {
    private final zzfbu zza;
    private final zzbrk zzb;
    private final AdFormat zzc;
    @Nullable
    private zzcwl zzd = null;

    public zzeff(zzfbu zzfbuVar, zzbrk zzbrkVar, AdFormat adFormat) {
        this.zza = zzfbuVar;
        this.zzb = zzbrkVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, @Nullable zzcwg zzcwgVar) throws zzdgh {
        boolean zzs;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int ordinal = this.zzc.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        zzs = this.zzb.zzr(ObjectWrapper.wrap(context));
                    }
                    throw new zzdgh("Adapter failed to show.");
                }
                zzs = this.zzb.zzt(ObjectWrapper.wrap(context));
            } else {
                zzs = this.zzb.zzs(ObjectWrapper.wrap(context));
            }
            if (zzs) {
                zzcwl zzcwlVar = this.zzd;
                if (zzcwlVar != null) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbI)).booleanValue() && this.zza.zzY == 2) {
                        zzcwlVar.zza();
                        return;
                    }
                    return;
                }
                return;
            }
            throw new zzdgh("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdgh(th);
        }
    }

    public final void zzc(zzcwl zzcwlVar) {
        this.zzd = zzcwlVar;
    }
}
