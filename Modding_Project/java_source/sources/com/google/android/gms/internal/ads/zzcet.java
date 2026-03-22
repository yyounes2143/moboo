package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcet implements DialogInterface.OnCancelListener {
    final /* synthetic */ JsResult zza;

    public zzcet(JsResult jsResult) {
        this.zza = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zza.cancel();
    }
}
