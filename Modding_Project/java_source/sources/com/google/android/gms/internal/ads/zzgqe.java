package com.google.android.gms.internal.ads;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgqe implements zzgoh {
    private static final zzgqe zza = new zzgqe();
    private static final zzgob zzb = zzgob.zzb(new zzgnz() { // from class: com.google.android.gms.internal.ads.zzgqa
        @Override // com.google.android.gms.internal.ads.zzgnz
        public final Object zza(zzgek zzgekVar) {
            return zzgqy.zza((zzgmo) zzgekVar);
        }
    }, zzgmo.class, zzgew.class);

    public static void zzc() throws GeneralSecurityException {
        zzgng.zza().zzd(zza);
        zzgng.zza().zzc(zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final Class zza() {
        return zzgew.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final Class zzb() {
        return zzgew.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgoh
    public final /* bridge */ /* synthetic */ Object zze(zzgmj zzgmjVar, zzgms zzgmsVar, zzgoc zzgocVar) throws GeneralSecurityException {
        zzgmt zzgmtVar;
        zzgmt zzgmtVar2;
        zzgwp zzc;
        zzgnu zzgnuVar = new zzgnu();
        for (int i = 0; i < zzgmjVar.zza(); i++) {
            zzger zzb2 = ((zzget) zzgmjVar).zzb(i);
            if (zzb2.zzc().equals(zzgem.zza)) {
                zzgew zzgewVar = (zzgew) zzgocVar.zza(zzb2);
                zzgek zzb3 = zzb2.zzb();
                if (zzb3 instanceof zzgpy) {
                    zzc = ((zzgpy) zzb3).zzd();
                } else if (zzb3 instanceof zzgmo) {
                    zzc = ((zzgmo) zzb3).zzc();
                } else {
                    String name = zzb3.getClass().getName();
                    String valueOf = String.valueOf(zzb3.zza());
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + name + " with parameters " + valueOf);
                }
                zzgnuVar.zza(zzc, new zzgqb(zzgewVar, zzb2.zza()));
            }
        }
        if (!zzgmsVar.zza()) {
            zzgmu zza2 = zzgne.zzb().zza();
            zzgmt zza3 = zza2.zza(zzgmjVar, zzgmsVar, TPDownloadProxyEnum.USER_MAC, "compute");
            zzgmtVar2 = zza2.zza(zzgmjVar, zzgmsVar, TPDownloadProxyEnum.USER_MAC, "verify");
            zzgmtVar = zza3;
        } else {
            zzgmtVar = zzgmw.zza;
            zzgmtVar2 = zzgmtVar;
        }
        zzget zzgetVar = (zzget) zzgmjVar;
        return new zzgqc(new zzgqb((zzgew) zzgocVar.zza(zzgetVar.zzc()), zzgetVar.zzc().zza()), zzgnuVar.zzb(), zzgmtVar, zzgmtVar2, null);
    }
}
