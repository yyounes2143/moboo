package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzezb implements zzezl {
    private final zzezl zza;
    @Nullable
    private zzcuz zzb;

    public zzezb(zzezl zzezlVar) {
        this.zza = zzezlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    @Nullable
    /* renamed from: zza */
    public final synchronized zzcuz zzd() {
        return this.zzb;
    }

    public final synchronized ListenableFuture zzb(zzezm zzezmVar, zzezk zzezkVar, @Nullable zzcuz zzcuzVar) {
        zzbvl zzbvlVar;
        this.zzb = zzcuzVar;
        if (zzcuzVar != null && (zzbvlVar = zzezmVar.zza) != null) {
            zzcsb zzb = zzcuzVar.zzb();
            return zzb.zzh(zzb.zzj(zzgcy.zzh(zzbvlVar)));
        }
        return ((zzeza) this.zza).zzb(zzezmVar, zzezkVar, zzcuzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezm zzezmVar, zzezk zzezkVar, @Nullable Object obj) {
        return zzb(zzezmVar, zzezkVar, null);
    }
}
