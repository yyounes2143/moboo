package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesa implements zzetu {
    private final zzfcp zza;
    @Nullable
    private final PackageInfo zzb;
    private final com.google.android.gms.ads.internal.util.zzg zzc;

    public zzesa(zzfcp zzfcpVar, @Nullable PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzfcpVar;
        this.zzb = packageInfo;
        this.zzc = zzgVar;
    }

    private final void zzc(Bundle bundle) {
        int i;
        zzbfv zzbfvVar = this.zza.zzi;
        if (zzbfvVar != null && (i = zzbfvVar.zzi) != 0) {
            bundle.putBoolean("sccg_tap", zzbfvVar.zzj);
            bundle.putInt("sccg_dir", i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ArrayList arrayList = this.zza.zzg;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (arrayList != null && !arrayList.isEmpty()) {
            zzc(zzcuvVar.zzb);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00df, code lost:
        if (r0 == 3) goto L63;
     */
    @Override // com.google.android.gms.internal.ads.zzetu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzb(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzesa.zzb(java.lang.Object):void");
    }
}
