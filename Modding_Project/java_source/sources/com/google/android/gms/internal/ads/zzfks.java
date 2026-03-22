package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfks implements Runnable {
    final /* synthetic */ zzfkt zza;

    public zzfks(zzfkt zzfktVar) {
        this.zza = zzfktVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfkc zzfkcVar;
        zzfkc zzfkcVar2;
        Clock clock;
        zzfkk zzfkkVar;
        zzfkt zzfktVar = this.zza;
        zzfkcVar = zzfktVar.zzn;
        if (zzfkcVar != null) {
            zzfkcVar2 = zzfktVar.zzn;
            clock = zzfktVar.zzo;
            long currentTimeMillis = clock.currentTimeMillis();
            zzfkkVar = zzfktVar.zzp;
            zzfkcVar2.zzd(currentTimeMillis, zzfkkVar);
        }
    }
}
