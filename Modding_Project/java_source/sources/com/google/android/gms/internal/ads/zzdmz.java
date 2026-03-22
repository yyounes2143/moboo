package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdmz implements zzbfu {
    final /* synthetic */ String zza = NativeCustomFormatAd.ASSET_NAME_VIDEO;
    final /* synthetic */ zzdna zzb;

    public zzdmz(zzdna zzdnaVar, String str) {
        this.zzb = zzdnaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final JSONObject zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzc() {
        zzdij zzdijVar;
        zzdij zzdijVar2;
        zzdna zzdnaVar = this.zzb;
        zzdijVar = zzdnaVar.zzd;
        if (zzdijVar != null) {
            String str = this.zza;
            zzdijVar2 = zzdnaVar.zzd;
            zzdijVar2.zzF(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzd(MotionEvent motionEvent) {
    }
}
