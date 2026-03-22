package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhs implements zzhfv {
    private final zzhge zza;

    public zzdhs(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        VersionInfoParcel zza = ((zzchw) this.zza).zza();
        com.google.android.gms.ads.internal.zzv.zzr();
        return new zzayq(UUID.randomUUID().toString(), zza, "native", new JSONObject(), false, true);
    }
}
