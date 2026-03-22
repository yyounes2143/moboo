package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzerz implements zzetv {
    private final zzgdj zza;
    private final zzfcp zzb;
    @Nullable
    private final PackageInfo zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;

    public zzerz(zzgdj zzgdjVar, zzfcp zzfcpVar, @Nullable PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzgdjVar;
        this.zzb = zzfcpVar;
        this.zzc = packageInfo;
        this.zzd = zzgVar;
    }

    public static /* synthetic */ zzesa zzc(zzerz zzerzVar) {
        return new zzesa(zzerzVar.zzb, zzerzVar.zzc, zzerzVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 26;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzery
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerz.zzc(zzerz.this);
            }
        });
    }
}
