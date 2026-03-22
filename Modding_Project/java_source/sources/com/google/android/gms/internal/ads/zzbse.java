package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbse implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbsg zza;

    public zzbse(zzbsg zzbsgVar) {
        this.zza = zzbsgVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        zzbsg zzbsgVar = this.zza;
        Intent zzb = zzbsgVar.zzb();
        com.google.android.gms.ads.internal.zzv.zzr();
        context = zzbsgVar.zzb;
        com.google.android.gms.ads.internal.util.zzs.zzU(context, zzb);
    }
}
