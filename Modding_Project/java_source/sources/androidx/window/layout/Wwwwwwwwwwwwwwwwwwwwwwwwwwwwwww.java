package androidx.window.layout;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.window.layout.WindowMetricsCalculator;
import kotlin.NotImplementedError;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion;
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        WindowMetricsCalculator.Companion.reset();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WindowMetricsCalculatorDecorator windowMetricsCalculatorDecorator) {
        WindowMetricsCalculator.Companion.overrideDecorator(windowMetricsCalculatorDecorator);
    }

    @JvmStatic
    @NotNull
    public static WindowMetricsCalculator Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return WindowMetricsCalculator.Companion.getOrCreate();
    }

    @NotNull
    public static WindowMetrics Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WindowMetricsCalculator windowMetricsCalculator, @NotNull Context context) {
        throw new NotImplementedError("Must override computeMaximumWindowMetrics(context) and provide an implementation.");
    }

    @NotNull
    public static WindowMetrics Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WindowMetricsCalculator windowMetricsCalculator, @NotNull Context context) {
        throw new NotImplementedError("Must override computeCurrentWindowMetrics(context) and provide an implementation.");
    }
}
