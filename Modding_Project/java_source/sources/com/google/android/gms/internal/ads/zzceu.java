package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzceu implements DialogInterface.OnClickListener {
    final /* synthetic */ JsResult zza;

    public zzceu(JsResult jsResult) {
        this.zza = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.cancel();
    }
}
