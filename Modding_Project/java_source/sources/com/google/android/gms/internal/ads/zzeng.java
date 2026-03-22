package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeng implements zzetv {
    private final Executor zza;
    private final zzbzn zzb;

    public zzeng(Executor executor, zzbzn zzbznVar) {
        this.zza = executor;
        this.zzb = zzbznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 10;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdg)).booleanValue()) {
            return zzgcy.zzh(new zzenh(null));
        }
        return zzgcy.zzm(this.zzb.zzk(), new zzfur() { // from class: com.google.android.gms.internal.ads.zzenf
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                ArrayList arrayList = (ArrayList) obj;
                if (true == arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new zzenh(arrayList);
            }
        }, this.zza);
    }
}
