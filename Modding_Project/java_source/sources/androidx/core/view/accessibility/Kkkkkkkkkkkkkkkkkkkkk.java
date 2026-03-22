package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
import j$.time.Duration;
import j$.time.TimeConversions;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Kkkkkkkkkkkkkkkkkkkkk {
    public static /* synthetic */ Duration Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessibilityNodeInfo accessibilityNodeInfo) {
        return TimeConversions.convert(accessibilityNodeInfo.getMinDurationBetweenContentChanges());
    }
}
