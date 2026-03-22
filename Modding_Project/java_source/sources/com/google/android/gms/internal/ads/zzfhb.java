package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzfhb {
    public static zzfhc zza(Context context, int i) {
        boolean booleanValue;
        if (zzfhq.zza()) {
            int i2 = i - 2;
            if (i2 != 20 && i2 != 21) {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        booleanValue = ((Boolean) zzbeo.zzc.zze()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        booleanValue = ((Boolean) zzbeo.zzd.zze()).booleanValue();
                        break;
                    case 5:
                        booleanValue = ((Boolean) zzbeo.zzb.zze()).booleanValue();
                        break;
                }
            } else {
                booleanValue = ((Boolean) zzbeo.zze.zze()).booleanValue();
            }
            if (booleanValue) {
                return new zzfhe(context, i);
            }
        }
        return new zzfij();
    }

    public static zzfhc zzb(Context context, int i, int i2, com.google.android.gms.ads.internal.client.zzm zzmVar) {
        zzfhc zza = zza(context, i);
        if (zza instanceof zzfhe) {
            zza.zzi();
            zza.zzn(i2);
            zza.zzf(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zza(zzmVar.zzm));
            String str = zzmVar.zzp;
            if (zzfhm.zze(str)) {
                zza.zze(str);
            }
        }
        return zza;
    }
}
