package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbaf implements Comparator {
    public zzbaf(zzbag zzbagVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzazu zzazuVar = (zzazu) obj;
        zzazu zzazuVar2 = (zzazu) obj2;
        if (zzazuVar.zzd() < zzazuVar2.zzd()) {
            return -1;
        }
        if (zzazuVar.zzd() > zzazuVar2.zzd()) {
            return 1;
        }
        if (zzazuVar.zzb() < zzazuVar2.zzb()) {
            return -1;
        }
        if (zzazuVar.zzb() > zzazuVar2.zzb()) {
            return 1;
        }
        float zza = (zzazuVar.zza() - zzazuVar.zzd()) * (zzazuVar.zzc() - zzazuVar.zzb());
        float zza2 = (zzazuVar2.zza() - zzazuVar2.zzd()) * (zzazuVar2.zzc() - zzazuVar2.zzb());
        if (zza > zza2) {
            return -1;
        }
        if (zza < zza2) {
            return 1;
        }
        return 0;
    }
}
