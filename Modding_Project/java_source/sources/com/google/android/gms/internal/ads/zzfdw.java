package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfdw implements zzcvw {
    private final HashSet zza = new HashSet();
    private final Context zzb;
    private final zzbzr zzc;

    public zzfdw(Context context, zzbzr zzbzrVar) {
        this.zzb = context;
        this.zzc = zzbzrVar;
    }

    public final Bundle zzb() {
        return this.zzc.zzn(this.zzb, this);
    }

    public final synchronized void zzc(HashSet hashSet) {
        HashSet hashSet2 = this.zza;
        hashSet2.clear();
        hashSet2.addAll(hashSet);
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final synchronized void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar.zza != 3) {
            this.zzc.zzl(this.zza);
        }
    }
}
