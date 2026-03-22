package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbji implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        try {
            zzfrt.zzj(zzcfbVar.getContext()).zzk();
            zzfru.zzi(zzcfbVar.getContext()).zzj();
            zzfrv.zza(zzcfbVar.getContext()).zzb(null);
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "DefaultGmsgHandlers.ResetPaid");
        }
    }
}
