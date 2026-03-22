package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgye extends zzgyd {
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final void zza(Object obj) {
        ((zzgyo) obj).zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final void zzb(zzhbx zzhbxVar, Map.Entry entry) throws IOException {
        zzgyp zzgypVar = (zzgyp) entry.getKey();
        if (zzgypVar.zzc) {
            zzhbv zzhbvVar = zzhbv.zza;
            switch (zzgypVar.zzb.ordinal()) {
                case 0:
                    zzhay.zzt(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 1:
                    zzhay.zzx(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 2:
                    zzhay.zzA(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 3:
                    zzhay.zzI(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 4:
                    zzhay.zzz(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 5:
                    zzhay.zzw(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 6:
                    zzhay.zzv(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 7:
                    zzhay.zzr(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 8:
                    zzhay.zzG(zzgypVar.zza, (List) entry.getValue(), zzhbxVar);
                    return;
                case 9:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        zzhay.zzy(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzhan.zza().zzb(list.get(0).getClass()));
                        return;
                    }
                    return;
                case 10:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        zzhay.zzB(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzhan.zza().zzb(list2.get(0).getClass()));
                        return;
                    }
                    return;
                case 11:
                    zzhay.zzs(zzgypVar.zza, (List) entry.getValue(), zzhbxVar);
                    return;
                case 12:
                    zzhay.zzH(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 13:
                    zzhay.zzz(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 14:
                    zzhay.zzC(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 15:
                    zzhay.zzD(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 16:
                    zzhay.zzE(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                case 17:
                    zzhay.zzF(zzgypVar.zza, (List) entry.getValue(), zzhbxVar, zzgypVar.zzd);
                    return;
                default:
                    return;
            }
        }
        zzhbv zzhbvVar2 = zzhbv.zza;
        switch (zzgypVar.zzb.ordinal()) {
            case 0:
                zzhbxVar.zzf(zzgypVar.zza, ((Double) entry.getValue()).doubleValue());
                return;
            case 1:
                zzhbxVar.zzo(zzgypVar.zza, ((Float) entry.getValue()).floatValue());
                return;
            case 2:
                zzhbxVar.zzt(zzgypVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 3:
                zzhbxVar.zzK(zzgypVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                zzhbxVar.zzr(zzgypVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 5:
                zzhbxVar.zzm(zzgypVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 6:
                zzhbxVar.zzk(zzgypVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 7:
                zzhbxVar.zzb(zzgypVar.zza, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 8:
                zzhbxVar.zzG(zzgypVar.zza, (String) entry.getValue());
                return;
            case 9:
                zzhbxVar.zzq(zzgypVar.zza, entry.getValue(), zzhan.zza().zzb(entry.getValue().getClass()));
                return;
            case 10:
                zzhbxVar.zzv(zzgypVar.zza, entry.getValue(), zzhan.zza().zzb(entry.getValue().getClass()));
                return;
            case 11:
                zzhbxVar.zzd(zzgypVar.zza, (zzgxk) entry.getValue());
                return;
            case 12:
                zzhbxVar.zzI(zzgypVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                zzhbxVar.zzr(zzgypVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 14:
                zzhbxVar.zzx(zzgypVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                zzhbxVar.zzz(zzgypVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 16:
                zzhbxVar.zzB(zzgypVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 17:
                zzhbxVar.zzD(zzgypVar.zza, ((Long) entry.getValue()).longValue());
                return;
            default:
                return;
        }
    }
}
