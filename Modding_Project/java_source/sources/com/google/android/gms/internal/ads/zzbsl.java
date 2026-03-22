package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbsl implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbsm zza;

    public zzbsl(zzbsm zzbsmVar) {
        this.zza = zzbsmVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzh("User canceled the download.");
    }
}
