package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public interface StatusExceptionMapper {
    @NonNull
    @KeepForSdk
    Exception getException(@NonNull Status status);
}
