package com.google.android.gms.internal.ads;

import android.app.AppOpsManager$OnOpActiveChangedListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaww implements AppOpsManager$OnOpActiveChangedListener {
    final /* synthetic */ zzawx zza;

    public zzaww(zzawx zzawxVar) {
        this.zza = zzawxVar;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        long j;
        long j2;
        long j3;
        if (z) {
            zzawx zzawxVar = this.zza;
            zzawxVar.zzb = System.currentTimeMillis();
            zzawxVar.zze = true;
            return;
        }
        zzawx zzawxVar2 = this.zza;
        long currentTimeMillis = System.currentTimeMillis();
        j = zzawxVar2.zzc;
        if (j > 0) {
            j2 = zzawxVar2.zzc;
            if (currentTimeMillis >= j2) {
                j3 = zzawxVar2.zzc;
                zzawxVar2.zzd = currentTimeMillis - j3;
            }
        }
        zzawxVar2.zze = false;
    }
}
