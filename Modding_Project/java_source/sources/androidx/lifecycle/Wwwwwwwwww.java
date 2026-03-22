package androidx.lifecycle;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwww {
    static {
        ViewModelProvider.Factory.Companion companion = ViewModelProvider.Factory.Companion;
    }

    @JvmStatic
    @NotNull
    public static ViewModelProvider.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ViewModelInitializer<?>... viewModelInitializerArr) {
        return ViewModelProvider.Factory.Companion.from(viewModelInitializerArr);
    }

    @NotNull
    public static ViewModel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewModelProvider.Factory factory, @NotNull KClass kClass, @NotNull CreationExtras creationExtras) {
        return factory.create(JvmClassMappingKt.getJavaClass(kClass), creationExtras);
    }

    @NotNull
    public static ViewModel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewModelProvider.Factory factory, @NotNull Class cls, @NotNull CreationExtras creationExtras) {
        return factory.create(cls);
    }

    @NotNull
    public static ViewModel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewModelProvider.Factory factory, @NotNull Class cls) {
        return androidx.lifecycle.viewmodel.internal.ViewModelProviders.INSTANCE.unsupportedCreateViewModel$lifecycle_viewmodel_release();
    }
}
