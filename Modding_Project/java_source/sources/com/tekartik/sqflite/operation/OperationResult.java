package com.tekartik.sqflite.operation;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface OperationResult {
    void error(String str, String str2, Object obj);

    void success(@Nullable Object obj);
}
