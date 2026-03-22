package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.window.layout.WindowInfoTracker;
import kotlin.NotImplementedError;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        WindowInfoTracker.Companion companion = WindowInfoTracker.Companion;
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        WindowInfoTracker.Companion.reset();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WindowInfoTrackerDecorator windowInfoTrackerDecorator) {
        WindowInfoTracker.Companion.overrideDecorator(windowInfoTrackerDecorator);
    }

    @JvmStatic
    @JvmName(name = "getOrCreate")
    @NotNull
    public static WindowInfoTracker Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return WindowInfoTracker.Companion.getOrCreate(context);
    }

    @NotNull
    public static Flow Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WindowInfoTracker windowInfoTracker, @NotNull Context context) {
        Activity activity;
        Flow<WindowLayoutInfo> flow = null;
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else {
            activity = null;
        }
        if (activity != null) {
            flow = windowInfoTracker.windowLayoutInfo(activity);
        }
        if (flow != null) {
            return flow;
        }
        throw new NotImplementedError("Must override windowLayoutInfo(context) and provide an implementation.");
    }
}
