package com.google.android.material.internal;

import android.widget.Checkable;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.internal.MaterialCheckable;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public interface MaterialCheckable<T extends MaterialCheckable<T>> extends Checkable {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface OnCheckedChangeListener<C> {
        void onCheckedChanged(C c, boolean z);
    }

    @IdRes
    int getId();

    void setInternalOnCheckedChangeListener(@Nullable OnCheckedChangeListener<T> onCheckedChangeListener);
}
