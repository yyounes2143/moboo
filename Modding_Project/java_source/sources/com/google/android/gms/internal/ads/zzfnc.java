package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfnc implements Runnable {
    final /* synthetic */ zzfnh zza;

    public zzfnc(zzfnh zzfnhVar) {
        this.zza = zzfnhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfnb zzfnbVar;
        zzfnbVar = this.zza.zzl;
        zzfnbVar.zzb();
    }
}
