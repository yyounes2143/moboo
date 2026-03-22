package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaas {
    private final Context zza;
    private boolean zzb;
    private zztl zzc = zztl.zza;
    private final zzsx zzd;
    @Nullable
    private Handler zze;
    @Nullable
    private zzacc zzf;

    public zzaas(Context context) {
        this.zza = context;
        this.zzd = new zzsr(context, null, null);
    }

    public final zzaas zze(@Nullable Handler handler) {
        this.zze = handler;
        return this;
    }

    public final zzaas zzf(@Nullable zzacc zzaccVar) {
        this.zzf = zzaccVar;
        return this;
    }

    public final zzaas zzg(zztl zztlVar) {
        this.zzc = zztlVar;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
        if (r3.zzf != null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzaau zzh() {
        /*
            r3 = this;
            boolean r0 = r3.zzb
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.gms.internal.ads.zzdc.zzf(r0)
            android.os.Handler r0 = r3.zze
            if (r0 != 0) goto L12
            com.google.android.gms.internal.ads.zzacc r2 = r3.zzf
            if (r2 == 0) goto L10
            goto L12
        L10:
            r2 = r1
            goto L1a
        L12:
            r2 = 0
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzacc r0 = r3.zzf
            if (r0 == 0) goto L1a
            goto L10
        L1a:
            com.google.android.gms.internal.ads.zzdc.zzf(r2)
            r3.zzb = r1
            com.google.android.gms.internal.ads.zzaau r0 = new com.google.android.gms.internal.ads.zzaau
            r0.<init>(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaas.zzh():com.google.android.gms.internal.ads.zzaau");
    }
}
