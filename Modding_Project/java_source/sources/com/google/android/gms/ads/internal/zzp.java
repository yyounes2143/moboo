package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzavl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzp implements View.OnTouchListener {
    final /* synthetic */ zzu zza;

    public zzp(zzu zzuVar) {
        this.zza = zzuVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzavl zzavlVar;
        zzavl zzavlVar2;
        zzu zzuVar = this.zza;
        zzavlVar = zzuVar.zzh;
        if (zzavlVar != null) {
            zzavlVar2 = zzuVar.zzh;
            zzavlVar2.zzd(motionEvent);
            return false;
        }
        return false;
    }
}
