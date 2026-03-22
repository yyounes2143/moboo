package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.internal.ads.zzbma;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzer extends zzbma {
    final /* synthetic */ zzet zza;

    public /* synthetic */ zzer(zzet zzetVar, zzes zzesVar) {
        this.zza = zzetVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmb
    public final void zzb(List list) throws RemoteException {
        int i;
        ArrayList arrayList;
        zzet zzetVar = this.zza;
        synchronized (zzet.zzi(zzetVar)) {
            zzet.zzo(zzetVar, false);
            zzet.zzn(zzetVar, true);
            arrayList = new ArrayList(zzet.zzk(zzetVar));
            zzet.zzk(zzetVar).clear();
        }
        InitializationStatus zzd = zzet.zzd(list);
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(zzd);
        }
    }
}
