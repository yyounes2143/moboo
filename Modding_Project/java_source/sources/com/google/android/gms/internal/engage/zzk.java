package com.google.android.gms.internal.engage;

import android.os.IBinder;
import com.google.android.engage.protocol.IAppEngageService;
import j$.util.Objects;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzk extends zze {
    final /* synthetic */ IBinder zza;
    final /* synthetic */ zzm zzb;

    public zzk(zzm zzmVar, IBinder iBinder) {
        this.zza = iBinder;
        Objects.requireNonNull(zzmVar);
        this.zzb = zzmVar;
    }

    @Override // com.google.android.gms.internal.engage.zze
    public final void zza() {
        List<Runnable> list;
        List list2;
        IAppEngageService asInterface = IAppEngageService.Stub.asInterface(this.zza);
        zzo zzoVar = this.zzb.zza;
        zzoVar.zzn = asInterface;
        zzo.zzr(zzoVar);
        zzoVar.zzh = false;
        list = zzoVar.zze;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = zzoVar.zze;
        list2.clear();
    }
}
