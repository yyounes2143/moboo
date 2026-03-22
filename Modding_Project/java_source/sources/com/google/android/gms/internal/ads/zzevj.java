package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevj implements zzetv {
    final zzgdj zza;

    public zzevj(zzbbi zzbbiVar, zzgdj zzgdjVar, Context context) {
        this.zza = zzgdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 45;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzevi
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevk(new JSONObject());
            }
        });
    }
}
