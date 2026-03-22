package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.CallSuper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzf {
    private final int zza;

    public zzf(int i) {
        this.zza = i;
    }

    @CallSuper
    public Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putInt("C_T", this.zza);
        return bundle;
    }
}
