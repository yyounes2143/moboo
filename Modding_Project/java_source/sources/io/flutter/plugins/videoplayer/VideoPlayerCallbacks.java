package io.flutter.plugins.videoplayer;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface VideoPlayerCallbacks {
    void onBufferingEnd();

    void onBufferingStart();

    void onBufferingUpdate(long j);

    void onCompleted();

    void onError(@NonNull String str, @Nullable String str2, @Nullable Object obj);

    void onInitialized(int i, int i2, long j, int i3);

    void onIsPlayingStateUpdate(boolean z);
}
