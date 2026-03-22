package com.didi.drouter.router;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface RouterCallback {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Result result);

    /* compiled from: Proguard */
    @Deprecated
    /* loaded from: classes3.dex */
    public static abstract class ActivityCallback implements RouterCallback {
        public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @Nullable Intent intent);

        @Override // com.didi.drouter.router.RouterCallback
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Result result) {
        }
    }
}
