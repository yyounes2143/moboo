package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevb implements zzetv {
    private final Executor zza;
    private final String zzb;

    public zzevb(zzbze zzbzeVar, Executor executor, String str, @Nullable PackageInfo packageInfo, int i) {
        this.zza = executor;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        ListenableFuture zzh = zzgcy.zzh(this.zzb);
        zzfur zzfurVar = new zzfur() { // from class: com.google.android.gms.internal.ads.zzeuz
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return new zzevc((String) obj);
            }
        };
        Executor executor = this.zza;
        return zzgcy.zzf(zzgcy.zzm(zzh, zzfurVar, executor), Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeva
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                ListenableFuture zzh2;
                Throwable th = (Throwable) obj;
                zzh2 = zzgcy.zzh(new zzevc(zzevb.this.zzb));
                return zzh2;
            }
        }, executor);
    }
}
