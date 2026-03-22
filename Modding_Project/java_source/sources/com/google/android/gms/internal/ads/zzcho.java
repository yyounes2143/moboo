package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.net.Uri;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcho implements zzhfv {
    public zzcho(zzche zzcheVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setPackage("com.android.vending");
        intent.setData(Uri.parse("https://play.google.com/d"));
        return intent;
    }
}
