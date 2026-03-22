package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzepe implements zzhfv {
    public static zzepe zza() {
        return zzepd.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        List arrayList = new ArrayList();
        zzbcm zzbcmVar = zzbcv.zzlZ;
        if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).isEmpty()) {
            arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).split(","));
        }
        zzhgd.zzb(arrayList);
        return arrayList;
    }
}
