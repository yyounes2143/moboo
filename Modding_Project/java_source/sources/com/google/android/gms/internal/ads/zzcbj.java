package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcbj implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcbk zzb;

    public zzcbj(zzcbk zzcbkVar, boolean z) {
        this.zza = z;
        this.zzb = zzcbkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzK("windowVisibilityChanged", "isVisible", String.valueOf(this.zza));
    }
}
