package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyc {
    private Context zza;
    private Clock zzb;
    private com.google.android.gms.ads.internal.util.zzg zzc;
    private zzbyj zzd;

    private zzbyc() {
        throw null;
    }

    public final zzbyc zza(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zzc = zzgVar;
        return this;
    }

    public final zzbyc zzb(Context context) {
        context.getClass();
        this.zza = context;
        return this;
    }

    public final zzbyc zzc(Clock clock) {
        clock.getClass();
        this.zzb = clock;
        return this;
    }

    public final zzbyc zzd(zzbyj zzbyjVar) {
        this.zzd = zzbyjVar;
        return this;
    }

    public final zzbyk zze() {
        zzhgd.zzc(this.zza, Context.class);
        zzhgd.zzc(this.zzb, Clock.class);
        zzhgd.zzc(this.zzc, com.google.android.gms.ads.internal.util.zzg.class);
        zzhgd.zzc(this.zzd, zzbyj.class);
        return new zzbyd(this.zza, this.zzb, this.zzc, this.zzd);
    }

    public /* synthetic */ zzbyc(zzbye zzbyeVar) {
    }
}
