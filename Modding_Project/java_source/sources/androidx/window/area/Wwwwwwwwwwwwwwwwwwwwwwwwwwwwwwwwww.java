package androidx.window.area;

import androidx.annotation.RestrictTo;
import androidx.window.area.WindowAreaController;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        WindowAreaController.Companion companion = WindowAreaController.Companion;
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        WindowAreaController.Companion.reset();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WindowAreaControllerDecorator windowAreaControllerDecorator) {
        WindowAreaController.Companion.overrideDecorator(windowAreaControllerDecorator);
    }

    @JvmStatic
    @JvmName(name = "getOrCreate")
    @NotNull
    public static WindowAreaController Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return WindowAreaController.Companion.getOrCreate();
    }
}
