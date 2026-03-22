package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Arrays;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzema implements zzetv {
    private final zzgdj zza;
    private final zzfcp zzb;
    private final int zzc;

    public zzema(zzgdj zzgdjVar, zzfcp zzfcpVar, zzfde zzfdeVar, int i) {
        this.zza = zzgdjVar;
        this.zzb = zzfcpVar;
        this.zzc = i;
    }

    public static /* synthetic */ zzemb zzc(zzema zzemaVar) {
        boolean equals;
        String str = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhi)).booleanValue()) {
            zzfcp zzfcpVar = zzemaVar.zzb;
            if (zzemaVar.zzc != 2) {
                String zzc = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcpVar.zzd);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhj)).booleanValue()) {
                    equals = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhk)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(zzc));
                } else {
                    equals = Objects.equals(zzc, "requester_type_2");
                }
                if (equals) {
                    str = zzfde.zza();
                }
            }
        }
        return new zzemb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 5;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzema.zzc(zzema.this);
            }
        });
    }
}
