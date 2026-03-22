package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxy extends zzayb {
    private final View zzh;

    public zzaxy(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, View view) {
        super(zzawoVar, "h7NW4UTeHoapcAfHjNS1jSIEsdu+S9XbBUhqH3zqKlRoFqG3FEF52d6iyzd+cmzU", "UQVAYGHTy6RzP6i5dxbs04Nz2BVdis2XDzzm3D3JwpQ=", zzaskVar, i, 57);
        this.zzh = view;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        View view = this.zzh;
        if (view != null) {
            Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdI);
            Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzll);
            zzaws zzawsVar = new zzaws((String) this.zze.invoke(null, view, this.zza.zzb().getResources().getDisplayMetrics(), bool, bool2));
            zzatf zza = zzatg.zza();
            zza.zzb(zzawsVar.zza.longValue());
            zza.zzd(zzawsVar.zzb.longValue());
            zza.zze(zzawsVar.zzc.longValue());
            if (bool2.booleanValue()) {
                zza.zzc(zzawsVar.zze.longValue());
            }
            if (bool.booleanValue()) {
                zza.zza(zzawsVar.zzd.longValue());
            }
            this.zzd.zzW((zzatg) zza.zzbr());
        }
    }
}
