package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyf implements zzayu {
    private final Context zza;
    private final Object zzb;
    private final String zzc;
    private boolean zzd;

    public zzbyf(Context context, String str) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = str;
        this.zzd = false;
        this.zzb = new Object();
    }

    public final String zza() {
        return this.zzc;
    }

    public final void zzb(boolean z) {
        zzbyj zzo = com.google.android.gms.ads.internal.zzv.zzo();
        Context context = this.zza;
        if (!zzo.zzp(context)) {
            return;
        }
        synchronized (this.zzb) {
            try {
                if (this.zzd == z) {
                    return;
                }
                this.zzd = z;
                String str = this.zzc;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (this.zzd) {
                    com.google.android.gms.ads.internal.zzv.zzo().zzf(context, str);
                } else {
                    com.google.android.gms.ads.internal.zzv.zzo().zzg(context, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzdr(zzayt zzaytVar) {
        zzb(zzaytVar.zzj);
    }
}
