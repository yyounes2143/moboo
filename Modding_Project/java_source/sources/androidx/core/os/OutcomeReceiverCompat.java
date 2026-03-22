package androidx.core.os;

import java.lang.Throwable;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public interface OutcomeReceiverCompat<R, E extends Throwable> {
    void onError(E e);

    void onResult(R r);
}
