package androidx.media3.exoplayer.offline;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface Downloader {

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface ProgressListener {
        void onProgress(long j, long j2, float f);
    }

    void cancel();

    void download(@Nullable ProgressListener progressListener) throws IOException, InterruptedException;

    void remove();
}
