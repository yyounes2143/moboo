package androidx.work.impl;

import androidx.work.impl.StartStopTokens;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        StartStopTokens.Companion companion = StartStopTokens.Companion;
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static StartStopTokens Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        return StartStopTokens.Companion.create(z);
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static StartStopTokens Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return StartStopTokens.Companion.create();
    }

    @NotNull
    public static StartStopToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StartStopTokens startStopTokens, @NotNull WorkSpec workSpec) {
        return startStopTokens.tokenFor(WorkSpecKt.generationalId(workSpec));
    }

    @Nullable
    public static StartStopToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StartStopTokens startStopTokens, @NotNull WorkSpec workSpec) {
        return startStopTokens.remove(WorkSpecKt.generationalId(workSpec));
    }
}
