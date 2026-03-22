package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzabe implements zzca {
    private final zzby zza;

    public zzabe(zzby zzbyVar) {
        this.zza = zzbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzca
    public final zzcc zza(Context context, zzk zzkVar, zzn zznVar, zzcb zzcbVar, Executor executor, zzbv zzbvVar, List list, long j, boolean z) {
        try {
            return ((zzca) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(zzby.class).newInstance(this.zza)).zza(context, zzkVar, zznVar, zzcbVar, executor, zzbvVar, list, 0L, false);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }
}
