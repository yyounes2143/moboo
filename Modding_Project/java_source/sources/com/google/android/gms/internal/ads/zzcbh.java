package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcbh implements Runnable {
    final /* synthetic */ zzcbk zza;

    public zzcbh(zzcbk zzcbkVar) {
        this.zza = zzcbkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzK("surfaceCreated", new String[0]);
    }
}
