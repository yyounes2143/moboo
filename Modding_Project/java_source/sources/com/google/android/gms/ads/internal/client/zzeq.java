package com.google.android.gms.ads.internal.client;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeq extends zzdj {
    private zzeq() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdk
    public final void zze(@Nullable zze zzeVar) {
        OnAdInspectorClosedListener onAdInspectorClosedListener;
        AdInspectorError adInspectorError;
        onAdInspectorClosedListener = zzet.zzf().zzj;
        if (onAdInspectorClosedListener != null) {
            if (zzeVar == null) {
                adInspectorError = null;
            } else {
                adInspectorError = new AdInspectorError(zzeVar.zza, zzeVar.zzb, zzeVar.zzc);
            }
            onAdInspectorClosedListener.onAdInspectorClosed(adInspectorError);
        }
    }

    public /* synthetic */ zzeq(zzes zzesVar) {
    }
}
