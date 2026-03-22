package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public abstract class RecommendationReason {
    private final int zza;

    public RecommendationReason(int i) {
        this.zza = i;
    }

    @NonNull
    public Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putInt("R_T", this.zza);
        return bundle;
    }
}
