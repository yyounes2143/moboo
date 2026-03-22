package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zziq implements zzix {
    private final zzim zza;
    private final zzjj zzb;
    private final boolean zzc;
    private final zzgx zzd;

    private zziq(zzjj zzjjVar, zzgx zzgxVar, zzim zzimVar) {
        this.zzb = zzjjVar;
        this.zzc = zzimVar instanceof zzhh;
        this.zzd = zzgxVar;
        this.zza = zzimVar;
    }

    public static zziq zzc(zzjj zzjjVar, zzgx zzgxVar, zzim zzimVar) {
        return new zziq(zzjjVar, zzgxVar, zzimVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zza(Object obj) {
        int zzb = ((zzhk) obj).zzc.zzb();
        if (this.zzc) {
            return zzb + ((zzhh) obj).zzb.zzc();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zzb(Object obj) {
        int hashCode = ((zzhk) obj).zzc.hashCode();
        if (this.zzc) {
            return (hashCode * 53) + ((zzhh) obj).zzb.zza.hashCode();
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final Object zze() {
        zzim zzimVar = this.zza;
        if (zzimVar instanceof zzhk) {
            return ((zzhk) zzimVar).zzp();
        }
        return zzimVar.zzI().zzh();
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzf(Object obj) {
        this.zzb.zza(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzg(Object obj, Object obj2) {
        zziz.zzp(this.zzb, obj, obj2);
        if (this.zzc) {
            zziz.zzo(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzfz zzfzVar) throws IOException {
        zzhk zzhkVar = (zzhk) obj;
        if (zzhkVar.zzc == zzjk.zzc()) {
            zzhkVar.zzc = zzjk.zzf();
        }
        zzhh zzhhVar = (zzhh) obj;
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzi(Object obj, zzjw zzjwVar) throws IOException {
        Iterator zze = ((zzhh) obj).zzb.zze();
        while (zze.hasNext()) {
            Map.Entry entry = (Map.Entry) zze.next();
            zzha zzhaVar = (zzha) entry.getKey();
            if (zzhaVar.zzc() == zzjv.MESSAGE && !zzhaVar.zze() && !zzhaVar.zzd()) {
                if (entry instanceof zzht) {
                    zzjwVar.zzw(zzhaVar.zza(), ((zzht) entry).zza().zzb());
                } else {
                    zzjwVar.zzw(zzhaVar.zza(), entry.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        ((zzhk) obj).zzc.zzk(zzjwVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzj(Object obj, Object obj2) {
        if (!((zzhk) obj).zzc.equals(((zzhk) obj2).zzc)) {
            return false;
        }
        if (this.zzc) {
            return ((zzhh) obj).zzb.equals(((zzhh) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzk(Object obj) {
        return ((zzhh) obj).zzb.zzh();
    }
}
