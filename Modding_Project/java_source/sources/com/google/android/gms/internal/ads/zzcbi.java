package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcbi implements Runnable {
    final /* synthetic */ zzcbk zza;

    public zzcbi(zzcbk zzcbkVar) {
        this.zza = zzcbkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzK("surfaceDestroyed", new String[0]);
    }
}
