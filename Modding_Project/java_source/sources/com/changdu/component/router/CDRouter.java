package com.changdu.component.router;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.changdu.component.router.biz.ISensorsDataModuleService;
import com.didi.drouter.api.DRouter;
import com.didi.drouter.router.IRouterHandler;
import com.didi.drouter.router.RouterCallback;
import com.didi.drouter.store.IRegister;
import com.didi.drouter.store.RouterKey;
import com.didi.drouter.store.ServiceKey;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ#\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\b\u0000\u0010\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0013H\u0007¢\u0006\u0002\u0010\u0014J7\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\b\u0000\u0010\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u00132\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0017J\"\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0019\"\u0004\b\u0000\u0010\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0013H\u0007J;\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0019\"\u0004\b\u0000\u0010\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u00132\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001bJ$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000e\u001a\u00020 H\u0007J5\u0010!\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u00132\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\"\u001a\u0002H\u0011H\u0007¢\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u001dJ\u000e\u0010&\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/changdu/component/router/CDRouter;", "", "()V", "mHasInitialized", "", "getSensorsDataService", "Lcom/changdu/component/router/biz/ISensorsDataModuleService;", "init", "", "application", "Landroid/app/Application;", "invokeRouterHandler", "targetUrl", "", "routerHandlerCallback", "Lcom/didi/drouter/router/RouterCallback;", "invokeRouterService", "T", "targetServiceInterface", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "constructorParameters", "", "(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;", "invokeRouterServiceList", "", "constructorsParameters", "(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/List;", "registerDynamicRouterHandler", "Lcom/didi/drouter/store/IRegister;", "lifecycleOwner", "Landroidx/lifecycle/Lifecycle;", "Lcom/didi/drouter/router/IRouterHandler;", "registerDynamicService", "targetServiceImpl", "(Ljava/lang/Class;Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Lcom/didi/drouter/store/IRegister;", "unregisterDynamicRouterHandler", "register", "unregisterDynamicService", "router_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDRouter {
    @NotNull
    public static final CDRouter INSTANCE = new CDRouter();
    private static boolean mHasInitialized;

    private CDRouter() {
    }

    @NonNull
    @JvmStatic
    @NotNull
    @JvmOverloads
    public static final IRegister registerDynamicRouterHandler(@NotNull String str, @NotNull IRouterHandler iRouterHandler) {
        return registerDynamicRouterHandler$default(str, null, iRouterHandler, 2, null);
    }

    public static /* synthetic */ IRegister registerDynamicRouterHandler$default(String str, Lifecycle lifecycle, IRouterHandler iRouterHandler, int i, Object obj) {
        if ((i & 2) != 0) {
            lifecycle = null;
        }
        return registerDynamicRouterHandler(str, lifecycle, iRouterHandler);
    }

    @NonNull
    @JvmStatic
    @NotNull
    @JvmOverloads
    public static final <T> IRegister registerDynamicService(@NotNull Class<T> cls, T t) {
        return registerDynamicService$default(cls, null, t, 2, null);
    }

    public static /* synthetic */ IRegister registerDynamicService$default(Class cls, Lifecycle lifecycle, Object obj, int i, Object obj2) {
        if ((i & 2) != 0) {
            lifecycle = null;
        }
        return registerDynamicService(cls, lifecycle, obj);
    }

    @Nullable
    public final ISensorsDataModuleService getSensorsDataService() {
        return (ISensorsDataModuleService) invokeRouterService(ISensorsDataModuleService.class);
    }

    public final void init(@NotNull Application application) {
        if (mHasInitialized) {
            return;
        }
        mHasInitialized = true;
        DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(application);
    }

    public final void invokeRouterHandler(@NotNull String str, @Nullable RouterCallback routerCallback) {
        try {
            if (routerCallback == null) {
                DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwww(null, routerCallback);
            }
        } catch (Throwable unused) {
        }
    }

    @androidx.annotation.Nullable
    @Nullable
    public final <T> T invokeRouterService(@NotNull Class<T> cls) {
        try {
            return (T) DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    @NonNull
    @NotNull
    public final <T> List<T> invokeRouterServiceList(@NotNull Class<T> cls) {
        try {
            return DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Object[0]);
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    public final void unregisterDynamicRouterHandler(@NotNull IRegister iRegister) {
        iRegister.unregister();
    }

    public final void unregisterDynamicService(@NotNull IRegister iRegister) {
        iRegister.unregister();
    }

    @NonNull
    @JvmStatic
    @NotNull
    @JvmOverloads
    public static final IRegister registerDynamicRouterHandler(@NotNull String str, @Nullable Lifecycle lifecycle, @NotNull IRouterHandler iRouterHandler) {
        RouterKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterKey.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (lifecycle != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(lifecycle);
        }
        return DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, iRouterHandler);
    }

    @NonNull
    @JvmStatic
    @NotNull
    @JvmOverloads
    public static final <T> IRegister registerDynamicService(@NotNull Class<T> cls, @Nullable Lifecycle lifecycle, T t) {
        ServiceKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ServiceKey.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (lifecycle != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(lifecycle);
        }
        return DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, t);
    }

    @androidx.annotation.Nullable
    @Nullable
    public final <T> T invokeRouterService(@NotNull Class<T> cls, @NotNull Object... objArr) {
        try {
            return (T) DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    @NonNull
    @NotNull
    public final <T> List<T> invokeRouterServiceList(@NotNull Class<T> cls, @NotNull Object... objArr) {
        try {
            return DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr);
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }
}
