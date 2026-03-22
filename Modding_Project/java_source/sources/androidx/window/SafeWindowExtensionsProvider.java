package androidx.window;

import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\r\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\t\u001a\u0006\u0012\u0002\b\u00030\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0006\u0012\u0002\b\u00030\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\f¨\u0006\u0013"}, d2 = {"Landroidx/window/SafeWindowExtensionsProvider;", "", "loader", "Ljava/lang/ClassLoader;", "(Ljava/lang/ClassLoader;)V", "windowExtensions", "Landroidx/window/extensions/WindowExtensions;", "getWindowExtensions", "()Landroidx/window/extensions/WindowExtensions;", "windowExtensionsClass", "Ljava/lang/Class;", "getWindowExtensionsClass$window_release", "()Ljava/lang/Class;", "windowExtensionsProviderClass", "getWindowExtensionsProviderClass", "isWindowExtensionsPresent", "", "isWindowExtensionsValid", "isWindowExtensionsValid$window_release", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SafeWindowExtensionsProvider {
    @NotNull
    private final ClassLoader loader;

    public SafeWindowExtensionsProvider(@NotNull ClassLoader classLoader) {
        this.loader = classLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class<?> getWindowExtensionsProviderClass() {
        return this.loader.loadClass(WindowExtensionsConstants.WINDOW_EXTENSIONS_PROVIDER_CLASS);
    }

    private final boolean isWindowExtensionsPresent() {
        return ReflectionUtils.INSTANCE.checkIsPresent$window_release(new Function0<Class<?>>() { // from class: androidx.window.SafeWindowExtensionsProvider$isWindowExtensionsPresent$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Class<?> invoke() {
                ClassLoader classLoader;
                classLoader = SafeWindowExtensionsProvider.this.loader;
                return classLoader.loadClass(WindowExtensionsConstants.WINDOW_EXTENSIONS_PROVIDER_CLASS);
            }
        });
    }

    @Nullable
    public final WindowExtensions getWindowExtensions() {
        try {
            if (!isWindowExtensionsPresent() || !isWindowExtensionsValid$window_release()) {
                return null;
            }
            return WindowExtensionsProvider.getWindowExtensions();
        } catch (Exception unused) {
            return null;
        }
    }

    @NotNull
    public final Class<?> getWindowExtensionsClass$window_release() {
        return this.loader.loadClass(WindowExtensionsConstants.WINDOW_EXTENSIONS_CLASS);
    }

    public final boolean isWindowExtensionsValid$window_release() {
        if (isWindowExtensionsPresent() && ReflectionUtils.validateReflection$window_release("WindowExtensionsProvider#getWindowExtensions is not valid", new Function0<Boolean>() { // from class: androidx.window.SafeWindowExtensionsProvider$isWindowExtensionsValid$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                Class windowExtensionsProviderClass;
                windowExtensionsProviderClass = SafeWindowExtensionsProvider.this.getWindowExtensionsProviderClass();
                Method declaredMethod = windowExtensionsProviderClass.getDeclaredMethod("getWindowExtensions", null);
                Class<?> windowExtensionsClass$window_release = SafeWindowExtensionsProvider.this.getWindowExtensionsClass$window_release();
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                return Boolean.valueOf(reflectionUtils.doesReturn$window_release(declaredMethod, windowExtensionsClass$window_release) && reflectionUtils.isPublic$window_release(declaredMethod));
            }
        })) {
            return true;
        }
        return false;
    }
}
