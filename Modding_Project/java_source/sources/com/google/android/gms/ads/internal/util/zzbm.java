package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzapu;
import com.google.android.gms.internal.ads.zzaqa;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzcaf;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbm extends zzapu {
    private final zzcaf zza;
    private final com.google.android.gms.ads.internal.util.client.zzl zzb;

    public zzbm(String str, Map map, zzcaf zzcafVar) {
        super(0, str, new zzbl(zzcafVar));
        this.zza = zzcafVar;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        this.zzb = zzlVar;
        zzlVar.zzd(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzapu
    public final zzaqa zzh(zzapq zzapqVar) {
        return zzaqa.zzb(zzapqVar, zzaqr.zzb(zzapqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzapu
    public final /* bridge */ /* synthetic */ void zzo(Object obj) {
        zzapq zzapqVar = (zzapq) obj;
        Map map = zzapqVar.zzc;
        int i = zzapqVar.zza;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = this.zzb;
        zzlVar.zzf(map, i);
        byte[] bArr = zzapqVar.zzb;
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk() && bArr != null) {
            zzlVar.zzh(bArr);
        }
        this.zza.zzc(zzapqVar);
    }
}
