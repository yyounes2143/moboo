package androidx.window;

import androidx.annotation.IntRange;
import androidx.window.core.ExtensionsUtil;
import com.unity3d.services.core.fid.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\nR\u0016\u0010\u0003\u001a\u00020\u00048WX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Landroidx/window/WindowSdkExtensions;", "", "()V", "extensionVersion", "", "getExtensionVersion", "()I", "requireExtensionVersion", "", "version", "requireExtensionVersion$window_release", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class WindowSdkExtensions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static WindowSdkExtensionsDecorator decorator = EmptyDecoratorWindowSdk.INSTANCE;
    private final int extensionVersion = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\nJ\r\u0010\u000b\u001a\u00020\bH\u0000¢\u0006\u0002\b\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/window/WindowSdkExtensions$Companion;", "", "()V", "decorator", "Landroidx/window/WindowSdkExtensionsDecorator;", Constants.GET_INSTANCE, "Landroidx/window/WindowSdkExtensions;", "overrideDecorator", "", "overridingDecorator", "overrideDecorator$window_release", "reset", "reset$window_release", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final WindowSdkExtensions getInstance() {
            return WindowSdkExtensions.decorator.decorate(new WindowSdkExtensions() { // from class: androidx.window.WindowSdkExtensions$Companion$getInstance$1
            });
        }

        public final void overrideDecorator$window_release(@NotNull WindowSdkExtensionsDecorator windowSdkExtensionsDecorator) {
            WindowSdkExtensions.decorator = windowSdkExtensionsDecorator;
        }

        public final void reset$window_release() {
            WindowSdkExtensions.decorator = EmptyDecoratorWindowSdk.INSTANCE;
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final WindowSdkExtensions getInstance() {
        return Companion.getInstance();
    }

    @IntRange(from = 0)
    public int getExtensionVersion() {
        return this.extensionVersion;
    }

    public final void requireExtensionVersion$window_release(@IntRange(from = 1) int i) {
        if (getExtensionVersion() >= i) {
            return;
        }
        throw new UnsupportedOperationException("This API requires extension version " + i + ", but the device is on " + getExtensionVersion());
    }
}
