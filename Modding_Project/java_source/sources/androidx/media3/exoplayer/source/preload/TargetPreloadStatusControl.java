package androidx.media3.exoplayer.source.preload;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface TargetPreloadStatusControl<T> {

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface PreloadStatus {
        int getStage();

        long getValue();
    }

    @Nullable
    PreloadStatus getTargetPreloadStatus(T t);
}
