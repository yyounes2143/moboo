package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjn implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        if (zzcfbVar.zzJ() != null) {
            zzcfbVar.zzJ().zza();
        }
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzcfbVar.zzL();
        if (zzL != null) {
            zzL.zzb();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzm zzM = zzcfbVar.zzM();
        if (zzM != null) {
            zzM.zzb();
            return;
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("A GMSG tried to close something that wasn't an overlay.");
    }
}
