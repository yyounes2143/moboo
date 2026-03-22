package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbsi implements View.OnClickListener {
    final /* synthetic */ zzbsj zza;

    public zzbsi(zzbsj zzbsjVar) {
        this.zza = zzbsjVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zza.zzb(true);
    }
}
