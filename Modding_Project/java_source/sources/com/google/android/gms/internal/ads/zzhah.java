package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhah implements zzhaw {
    private final zzhad zza;
    private final zzhbi zzb;
    private final boolean zzc;
    private final zzgyd zzd;

    private zzhah(zzhbi zzhbiVar, zzgyd zzgydVar, zzhad zzhadVar) {
        this.zzb = zzhbiVar;
        this.zzc = zzhadVar instanceof zzgyo;
        this.zzd = zzgydVar;
        this.zza = zzhadVar;
    }

    public static zzhah zzc(zzhbi zzhbiVar, zzgyd zzgydVar, zzhad zzhadVar) {
        return new zzhah(zzhbiVar, zzgydVar, zzhadVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final int zza(Object obj) {
        int zzb = ((zzgys) obj).zzt.zzb();
        if (this.zzc) {
            return zzb + ((zzgyo) obj).zza.zzd();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final int zzb(Object obj) {
        int hashCode = ((zzgys) obj).zzt.hashCode();
        if (this.zzc) {
            return (hashCode * 53) + ((zzgyo) obj).zza.zza.hashCode();
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final Object zze() {
        zzhad zzhadVar = this.zza;
        if (zzhadVar instanceof zzgys) {
            return ((zzgys) zzhadVar).zzbj();
        }
        return zzhadVar.zzcY().zzbs();
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzf(Object obj) {
        this.zzb.zzi(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzg(Object obj, Object obj2) {
        zzhay.zzq(this.zzb, obj, obj2);
        if (this.zzc) {
            zzhay.zzp(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzh(Object obj, zzhaq zzhaqVar, zzgyc zzgycVar) throws IOException {
        this.zzb.zza(obj);
        zzgyo zzgyoVar = (zzgyo) obj;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgwy zzgwyVar) throws IOException {
        zzgys zzgysVar = (zzgys) obj;
        if (zzgysVar.zzt == zzhbj.zzc()) {
            zzgysVar.zzt = zzhbj.zzf();
        }
        zzgyo zzgyoVar = (zzgyo) obj;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzj(Object obj, zzhbx zzhbxVar) throws IOException {
        Iterator zzf = ((zzgyo) obj).zza.zzf();
        while (zzf.hasNext()) {
            Map.Entry entry = (Map.Entry) zzf.next();
            zzgyg zzgygVar = (zzgyg) entry.getKey();
            if (zzgygVar.zzc() == zzhbw.MESSAGE && !zzgygVar.zze() && !zzgygVar.zzd()) {
                if (entry instanceof zzgzk) {
                    zzhbxVar.zzw(zzgygVar.zza(), ((zzgzk) entry).zza().zzb());
                } else {
                    zzhbxVar.zzw(zzgygVar.zza(), entry.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        ((zzgys) obj).zzt.zzk(zzhbxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final boolean zzk(Object obj, Object obj2) {
        if (!((zzgys) obj).zzt.equals(((zzgys) obj2).zzt)) {
            return false;
        }
        if (this.zzc) {
            return ((zzgyo) obj).zza.equals(((zzgyo) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final boolean zzl(Object obj) {
        return ((zzgyo) obj).zza.zzi();
    }
}
