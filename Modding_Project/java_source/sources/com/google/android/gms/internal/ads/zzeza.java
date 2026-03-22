package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeza implements zzezl {
    @Nullable
    private zzcuz zza;

    @Override // com.google.android.gms.internal.ads.zzezl
    @Nullable
    /* renamed from: zza */
    public final synchronized zzcuz zzd() {
        return this.zza;
    }

    public final synchronized ListenableFuture zzb(zzezm zzezmVar, zzezk zzezkVar, @Nullable zzcuz zzcuzVar) {
        zzcsb zzb;
        try {
            if (zzcuzVar != null) {
                this.zza = zzcuzVar;
            } else {
                this.zza = (zzcuz) zzezkVar.zza(zzezmVar.zzb).zzh();
            }
            zzb = this.zza.zzb();
        } catch (Throwable th) {
            throw th;
        }
        return zzb.zzh(zzb.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezm zzezmVar, zzezk zzezkVar, @Nullable Object obj) {
        return zzb(zzezmVar, zzezkVar, null);
    }
}
