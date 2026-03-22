package io.flutter.plugin.common;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface PluginRegistry {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ActivityResultListener {
        boolean onActivityResult(int i, int i2, @Nullable Intent intent);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface NewIntentListener {
        boolean onNewIntent(@NonNull Intent intent);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface RequestPermissionsResultListener {
        boolean onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface UserLeaveHintListener {
        void onUserLeaveHint();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface WindowFocusChangedListener {
        void onWindowFocusChanged(boolean z);
    }
}
