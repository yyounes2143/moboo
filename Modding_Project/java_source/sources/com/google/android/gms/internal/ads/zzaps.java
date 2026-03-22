package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaps implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzapu zzc;

    public zzaps(zzapu zzapuVar, String str, long j) {
        this.zza = str;
        this.zzb = j;
        this.zzc = zzapuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaqf zzaqfVar;
        zzaqf zzaqfVar2;
        zzapu zzapuVar = this.zzc;
        zzaqfVar = zzapuVar.zza;
        zzaqfVar.zza(this.zza, this.zzb);
        zzaqfVar2 = zzapuVar.zza;
        zzaqfVar2.zzb(zzapuVar.toString());
    }
}
