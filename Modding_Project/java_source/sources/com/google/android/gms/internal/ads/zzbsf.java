package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbsf implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbsg zza;

    public zzbsf(zzbsg zzbsgVar) {
        this.zza = zzbsgVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzh("Operation denied by user.");
    }
}
