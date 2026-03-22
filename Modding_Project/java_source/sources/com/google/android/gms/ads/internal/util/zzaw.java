package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaw implements DialogInterface.OnClickListener {
    final /* synthetic */ Context zza;

    public zzaw(zzax zzaxVar, Context context) {
        this.zza = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzv.zzr();
        zzs.zzV(this.zza, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
