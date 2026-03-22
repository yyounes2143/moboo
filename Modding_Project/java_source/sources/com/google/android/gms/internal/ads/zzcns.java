package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcns implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzcns(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton;
        zzcnk zzcnkVar = (zzcnk) this.zza.zzb();
        zzgdj zzc = zzffn.zzc();
        if (((JSONObject) this.zzb.zzb()) == null) {
            singleton = Collections.EMPTY_SET;
        } else {
            singleton = Collections.singleton(new zzddq(zzcnkVar, zzc));
        }
        zzhgd.zzb(singleton);
        return singleton;
    }
}
