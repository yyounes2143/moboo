package androidx.work.impl;

import androidx.work.WorkInfo;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwww {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkLauncher workLauncher, @NotNull StartStopToken startStopToken, int i) {
        workLauncher.stopWork(startStopToken, i);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkLauncher workLauncher, @NotNull StartStopToken startStopToken) {
        workLauncher.stopWork(startStopToken, WorkInfo.STOP_REASON_UNKNOWN);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkLauncher workLauncher, @NotNull StartStopToken startStopToken) {
        workLauncher.startWork(startStopToken, null);
    }
}
