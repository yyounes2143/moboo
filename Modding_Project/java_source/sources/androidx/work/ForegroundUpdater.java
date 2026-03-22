package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface ForegroundUpdater {
    ListenableFuture<Void> setForegroundAsync(Context context, UUID uuid, ForegroundInfo foregroundInfo);
}
