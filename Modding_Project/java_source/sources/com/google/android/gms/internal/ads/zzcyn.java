package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcyn implements Runnable {
    private final WeakReference zza;

    @Override // java.lang.Runnable
    public final void run() {
        zzcyq zzcyqVar = (zzcyq) this.zza.get();
        if (zzcyqVar != null) {
            zzcyqVar.zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcyl
                @Override // com.google.android.gms.internal.ads.zzdbn
                public final void zza(Object obj) {
                    ((zzcyk) obj).zza();
                }
            });
        }
    }
}
