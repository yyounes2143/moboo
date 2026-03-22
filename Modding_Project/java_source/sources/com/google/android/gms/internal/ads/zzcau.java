package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcau implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzcba zzc;

    public zzcau(zzcba zzcbaVar, String str, String str2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzcbaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbb zzcbbVar;
        zzcbb zzcbbVar2;
        zzcba zzcbaVar = this.zzc;
        zzcbbVar = zzcbaVar.zzr;
        if (zzcbbVar != null) {
            String str = this.zza;
            String str2 = this.zzb;
            zzcbbVar2 = zzcbaVar.zzr;
            zzcbbVar2.zzb(str, str2);
        }
    }
}
