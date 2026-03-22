package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzddy;
import com.google.android.gms.internal.ads.zzdsd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzn {
    public static final void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z, @Nullable zzdsd zzdsdVar) {
        Activity activity;
        zzaa zzaaVar;
        if (adOverlayInfoParcel.zzk == 4 && adOverlayInfoParcel.zzc == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzddy zzddyVar = adOverlayInfoParcel.zzu;
            if (zzddyVar != null) {
                zzddyVar.zzdf();
            }
            Activity zzi = adOverlayInfoParcel.zzd.zzi();
            zzc zzcVar = adOverlayInfoParcel.zza;
            if (zzcVar != null && zzcVar.zzj && zzi != null) {
                activity = zzi;
            } else {
                activity = context;
            }
            com.google.android.gms.ads.internal.zzv.zzi();
            zzad zzadVar = adOverlayInfoParcel.zzi;
            if (zzcVar != null) {
                zzaaVar = zzcVar.zzi;
            } else {
                zzaaVar = null;
            }
            zza.zzb(activity, zzcVar, zzadVar, zzaaVar, zzdsdVar, adOverlayInfoParcel.zzq);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzm.isClientJar);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
        if (!PlatformVersion.isAtLeastLollipop()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzno)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            com.google.android.gms.ads.internal.util.zzs.zzY(context, intent, zzdsdVar, adOverlayInfoParcel.zzq);
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        com.google.android.gms.ads.internal.util.zzs.zzU(context, intent);
    }
}
