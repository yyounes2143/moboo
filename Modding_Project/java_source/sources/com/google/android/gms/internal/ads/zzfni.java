package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfni extends zzfnj {
    protected final HashSet zza;
    protected final JSONObject zzb;
    protected final long zzc;

    public zzfni(zzfnb zzfnbVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfnbVar);
        this.zza = new HashSet(hashSet);
        this.zzb = jSONObject;
        this.zzc = j;
    }
}
