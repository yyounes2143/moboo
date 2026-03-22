package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzftk extends zzfsd {
    final /* synthetic */ zzftl zza;
    private final zzftq zzb;

    public zzftk(zzftl zzftlVar, zzftq zzftqVar) {
        this.zza = zzftlVar;
        this.zzb = zzftqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfse
    public final void zzb(Bundle bundle) {
        int i = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        zzfto zzc = zzftp.zzc();
        zzc.zzb(i);
        if (string != null) {
            zzc.zza(string);
        }
        this.zzb.zza(zzc.zzc());
        if (i == 8157) {
            this.zza.zzd();
        }
    }
}
