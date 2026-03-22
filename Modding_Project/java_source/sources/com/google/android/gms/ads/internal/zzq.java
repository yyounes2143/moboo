package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzavk;
import com.google.android.gms.internal.ads.zzavl;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzq implements Callable {
    final /* synthetic */ zzu zza;

    public zzq(zzu zzuVar) {
        this.zza = zzuVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        VersionInfoParcel versionInfoParcel;
        Context context;
        zzu zzuVar = this.zza;
        versionInfoParcel = zzuVar.zza;
        String str = versionInfoParcel.afmaVersion;
        context = zzuVar.zzd;
        int i = zzavk.zzw;
        return new zzavl(zzavk.zzt(context, new zzavi(str, false)));
    }
}
