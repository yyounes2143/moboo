package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface ProgressUpdater {
    ListenableFuture<Void> updateProgress(Context context, UUID uuid, Data data);
}
