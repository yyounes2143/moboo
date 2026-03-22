package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.webkit.Profile;
import java.lang.Throwable;
/* compiled from: Proguard */
@Profile.ExperimentalUrlPrefetch
/* loaded from: classes3.dex */
public interface OutcomeReceiverCompat<T, E extends Throwable> {
    void onError(@NonNull E e);

    void onResult(T t);
}
