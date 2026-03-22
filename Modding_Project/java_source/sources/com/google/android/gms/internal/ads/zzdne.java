package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdne implements zzbjw {
    @Nullable
    private final zzbhk zza;
    private final zzdns zzb;
    private final zzhfp zzc;

    public zzdne(zzdiz zzdizVar, zzdio zzdioVar, zzdns zzdnsVar, zzhfp zzhfpVar) {
        this.zza = zzdizVar.zzc(zzdioVar.zzA());
        this.zzb = zzdnsVar;
        this.zzc = zzhfpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("asset");
        try {
            this.zza.zze((zzbha) this.zzc.zzb(), str);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call onCustomClick for asset " + str + ".", e);
        }
    }

    public final void zzb() {
        if (this.zza == null) {
            return;
        }
        this.zzb.zzl("/nativeAdCustomClick", this);
    }
}
