package androidx.work.impl.foreground;

import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public interface ForegroundProcessor {
    void startForeground(String str, ForegroundInfo foregroundInfo);
}
