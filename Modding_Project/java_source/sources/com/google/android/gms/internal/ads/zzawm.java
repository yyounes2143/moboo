package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzawm implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzawo zzb;

    public zzawm(zzawo zzawoVar, int i, boolean z) {
        this.zza = i;
        this.zzb = zzawoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzath zzathVar;
        int i = this.zza;
        zzawo zzawoVar = this.zzb;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            Context context = zzawoVar.zza;
            zzathVar = zzfof.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
        } catch (Throwable unused2) {
            zzathVar = null;
        }
        zzawo zzawoVar2 = this.zzb;
        zzawoVar2.zzk = zzathVar;
        int i2 = this.zza;
        if (i2 < 4) {
            if (zzathVar == null || !zzathVar.zzaf() || zzathVar.zzg().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzathVar.zzag() || !zzathVar.zzf().zzg() || zzathVar.zzf().zza() == -2) {
                zzawoVar2.zzn(i2 + 1, true);
            }
        }
    }
}
