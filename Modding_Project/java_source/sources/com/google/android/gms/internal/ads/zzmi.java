package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzmi {
    private boolean zza;

    public zzmi(Context context, Looper looper, zzdg zzdgVar) {
        context.getApplicationContext();
        zzdgVar.zzd(looper, null);
    }

    public final void zza(boolean z) {
        if (this.zza == z) {
            return;
        }
        this.zza = z;
    }
}
