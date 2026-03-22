package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public abstract class Entity {
    private final int zza;

    public Entity(int i) {
        this.zza = i;
    }

    public int getEntityType() {
        return this.zza;
    }

    @NonNull
    @CallSuper
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("E_T", getEntityType());
        return bundle;
    }
}
