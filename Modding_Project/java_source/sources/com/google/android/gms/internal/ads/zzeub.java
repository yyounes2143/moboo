package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeub implements zzetv {
    private final Context zza;
    private final zzgdj zzb;

    public zzeub(Context context, zzgdj zzgdjVar) {
        this.zza = context;
        this.zzb = zzgdjVar;
    }

    public static /* synthetic */ zzeuc zzc(zzeub zzeubVar) {
        Context context = zzeubVar.zza;
        return new zzeuc(zzbcf.zzb(context), zzbcf.zza(context));
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 59;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        if (((Boolean) zzben.zzb.zze()).booleanValue()) {
            return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeua
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzeub.zzc(zzeub.this);
                }
            });
        }
        return zzgcy.zzh(new zzeuc(-1, -1));
    }
}
