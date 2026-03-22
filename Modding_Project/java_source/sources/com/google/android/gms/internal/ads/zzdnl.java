package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdnl implements zzgcu {
    final /* synthetic */ String zza = "sendMessageToNativeJs";
    final /* synthetic */ Map zzb;

    public zzdnl(zzdns zzdnsVar, String str, Map map) {
        this.zzb = map;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ((zzcfb) obj).zzd(this.zza, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
