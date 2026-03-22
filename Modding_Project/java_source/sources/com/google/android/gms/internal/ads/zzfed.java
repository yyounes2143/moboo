package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbca;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfed implements zzfec {
    private final ConcurrentHashMap zza;
    private final zzfej zzb;
    private final zzfef zzc = new zzfef();

    public zzfed(zzfej zzfejVar) {
        this.zza = new ConcurrentHashMap(zzfejVar.zzd);
        this.zzb = zzfejVar;
    }

    private final void zzf() {
        Parcelable.Creator<zzfej> creator = zzfej.CREATOR;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgy)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            zzfej zzfejVar = this.zzb;
            sb.append(zzfejVar.zzb);
            sb.append(" PoolCollection");
            sb.append(this.zzc.zzb());
            int i = 0;
            for (Map.Entry entry : this.zza.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzfem) entry.getKey()).hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < ((zzfeb) entry.getValue()).zzb(); i2++) {
                    sb.append("[O]");
                }
                for (int zzb = ((zzfeb) entry.getValue()).zzb(); zzb < zzfejVar.zzd; zzb++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((zzfeb) entry.getValue()).zzg());
                sb.append("\n");
            }
            while (i < zzfejVar.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            String sb2 = sb.toString();
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze(sb2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final zzfej zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    @Nullable
    public final synchronized zzfel zzb(zzfem zzfemVar) {
        zzfel zzfelVar;
        try {
            zzfeb zzfebVar = (zzfeb) this.zza.get(zzfemVar);
            if (zzfebVar != null) {
                zzfelVar = zzfebVar.zze();
                if (zzfelVar == null) {
                    this.zzc.zze();
                }
                zzfez zzf = zzfebVar.zzf();
                if (zzfelVar != null) {
                    zzbca.zzb.zzc zzd = zzbca.zzb.zzd();
                    zzbca.zzb.zza.C0043zza zza = zzbca.zzb.zza.zza();
                    zza.zzf(zzbca.zzb.zzd.IN_MEMORY);
                    zzbca.zzb.zze.zza zzb = zzbca.zzb.zze.zzb();
                    zzb.zzd(zzf.zza);
                    zzb.zze(zzf.zzb);
                    zza.zzg(zzb);
                    zzd.zzd(zza);
                    zzfelVar.zza.zzb().zzc().zzi(zzd.zzbr());
                }
                zzf();
            } else {
                this.zzc.zzf();
                zzf();
                zzfelVar = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzfelVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    @Deprecated
    public final zzfem zzc(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, com.google.android.gms.ads.internal.client.zzx zzxVar) {
        zzfej zzfejVar = this.zzb;
        return new zzfen(zzmVar, str, new zzbvo(zzfejVar.zza).zza().zzj, zzfejVar.zzf, zzxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final synchronized boolean zzd(zzfem zzfemVar, zzfel zzfelVar) {
        boolean zzh;
        try {
            ConcurrentHashMap concurrentHashMap = this.zza;
            zzfeb zzfebVar = (zzfeb) concurrentHashMap.get(zzfemVar);
            zzfelVar.zzd = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            if (zzfebVar == null) {
                zzfej zzfejVar = this.zzb;
                zzfeb zzfebVar2 = new zzfeb(zzfejVar.zzd, zzfejVar.zze * 1000);
                if (concurrentHashMap.size() == zzfejVar.zzc) {
                    int i = zzfejVar.zzg;
                    int i2 = i - 1;
                    zzfem zzfemVar2 = null;
                    if (i != 0) {
                        long j = Long.MAX_VALUE;
                        if (i2 != 0) {
                            if (i2 != 1) {
                                if (i2 == 2) {
                                    int i3 = Integer.MAX_VALUE;
                                    for (Map.Entry entry : concurrentHashMap.entrySet()) {
                                        if (((zzfeb) entry.getValue()).zza() < i3) {
                                            i3 = ((zzfeb) entry.getValue()).zza();
                                            zzfemVar2 = (zzfem) entry.getKey();
                                        }
                                    }
                                    if (zzfemVar2 != null) {
                                        concurrentHashMap.remove(zzfemVar2);
                                    }
                                }
                            } else {
                                for (Map.Entry entry2 : concurrentHashMap.entrySet()) {
                                    if (((zzfeb) entry2.getValue()).zzd() < j) {
                                        j = ((zzfeb) entry2.getValue()).zzd();
                                        zzfemVar2 = (zzfem) entry2.getKey();
                                    }
                                }
                                if (zzfemVar2 != null) {
                                    concurrentHashMap.remove(zzfemVar2);
                                }
                            }
                        } else {
                            for (Map.Entry entry3 : concurrentHashMap.entrySet()) {
                                if (((zzfeb) entry3.getValue()).zzc() < j) {
                                    j = ((zzfeb) entry3.getValue()).zzc();
                                    zzfemVar2 = (zzfem) entry3.getKey();
                                }
                            }
                            if (zzfemVar2 != null) {
                                concurrentHashMap.remove(zzfemVar2);
                            }
                        }
                        this.zzc.zzg();
                    } else {
                        throw null;
                    }
                }
                concurrentHashMap.put(zzfemVar, zzfebVar2);
                this.zzc.zzd();
                zzfebVar = zzfebVar2;
            }
            zzh = zzfebVar.zzh(zzfelVar);
            zzfef zzfefVar = this.zzc;
            zzfefVar.zzc();
            zzfee zza = zzfefVar.zza();
            zzfez zzf = zzfebVar.zzf();
            zzbca.zzb.zzc zzd = zzbca.zzb.zzd();
            zzbca.zzb.zza.C0043zza zza2 = zzbca.zzb.zza.zza();
            zza2.zzf(zzbca.zzb.zzd.IN_MEMORY);
            zzbca.zzb.zzg.zza zzb = zzbca.zzb.zzg.zzb();
            zzb.zze(zza.zza);
            zzb.zzf(zza.zzb);
            zzb.zzg(zzf.zzb);
            zza2.zzi(zzb);
            zzd.zzd(zza2);
            zzfelVar.zza.zzb().zzc().zzj(zzd.zzbr());
            zzf();
        } catch (Throwable th) {
            throw th;
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final synchronized boolean zze(zzfem zzfemVar) {
        zzfeb zzfebVar = (zzfeb) this.zza.get(zzfemVar);
        if (zzfebVar == null) {
            return true;
        }
        zzfej zzfejVar = this.zzb;
        if (zzfebVar.zzb() < zzfejVar.zzd) {
            return true;
        }
        return false;
    }
}
