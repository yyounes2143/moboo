package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesd implements zzetv {
    @Nullable
    private static String zza;
    private final zzgdj zzb;
    private final Context zzc;

    public zzesd(zzgdj zzgdjVar, Context context) {
        this.zzb = zzgdjVar;
        this.zzc = context;
    }

    public static /* synthetic */ zzese zzc(zzesd zzesdVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfF)).booleanValue()) {
                if (zza == null) {
                    zza = com.google.android.gms.ads.internal.zzv.zzC().zzf(zzesdVar.zzc);
                }
                return new zzese(zza);
            }
            return new zzese(com.google.android.gms.ads.internal.zzv.zzC().zzf(zzesdVar.zzc));
        }
        return new zzese(null);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 27;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzesd.zzc(zzesd.this);
            }
        });
    }
}
