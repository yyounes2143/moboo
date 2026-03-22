package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzara implements zzaqp {
    final /* synthetic */ Context zza;
    private File zzb = null;

    public zzara(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaqp
    public final File zza() {
        if (this.zzb == null) {
            this.zzb = new File(this.zza.getCacheDir(), "volley");
        }
        return this.zzb;
    }
}
