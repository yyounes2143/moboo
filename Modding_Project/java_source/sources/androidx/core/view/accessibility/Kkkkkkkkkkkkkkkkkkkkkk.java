package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
import j$.time.Duration;
import j$.time.TimeConversions;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Kkkkkkkkkkkkkkkkkkkkkk {
    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessibilityNodeInfo accessibilityNodeInfo, Duration duration) {
        accessibilityNodeInfo.setMinDurationBetweenContentChanges(TimeConversions.convert(duration));
    }
}
