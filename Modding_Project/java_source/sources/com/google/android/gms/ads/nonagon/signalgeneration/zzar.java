package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbua;
import com.google.android.gms.internal.ads.zzfjr;
import com.google.android.gms.internal.ads.zzgcu;
import java.util.ArrayList;
import javax.annotation.Nonnull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzar implements zzgcu {
    final /* synthetic */ zzbua zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzau zzc;

    public zzar(zzau zzauVar, zzbua zzbuaVar, boolean z) {
        this.zza = zzbuaVar;
        this.zzb = z;
        this.zzc = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        try {
            zzbua zzbuaVar = this.zza;
            String message = th.getMessage();
            zzbuaVar.zze("Internal error: " + message);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(@Nonnull Object obj) {
        boolean z;
        String str;
        Uri zzaa;
        zzfjr zzfjrVar;
        zzfjr zzfjrVar2;
        ArrayList arrayList = (ArrayList) obj;
        try {
            this.zza.zzf(arrayList);
            zzau zzauVar = this.zzc;
            z = zzauVar.zzr;
            if (!z && !this.zzb) {
                return;
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                Uri uri = (Uri) obj2;
                if (zzauVar.zzQ(uri)) {
                    str = zzauVar.zzA;
                    zzaa = zzau.zzaa(uri, str, "1");
                    zzfjrVar = zzauVar.zzq;
                    zzfjrVar.zzd(zzaa.toString(), null, null, null);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhF)).booleanValue()) {
                        zzfjrVar2 = zzauVar.zzq;
                        zzfjrVar2.zzd(uri.toString(), null, null, null);
                    }
                }
            }
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
        }
    }
}
