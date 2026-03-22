package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzyp {
    public final zzbm zza;
    public final int[] zzb;

    public zzyp(zzbm zzbmVar, int[] iArr, int i) {
        if (iArr.length == 0) {
            zzdx.zzd("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
        }
        this.zza = zzbmVar;
        this.zzb = iArr;
    }
}
