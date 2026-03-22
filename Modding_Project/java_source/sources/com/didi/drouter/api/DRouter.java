package com.didi.drouter.api;

import android.app.Application;
import androidx.annotation.NonNull;
import com.didi.drouter.router.IRouterHandler;
import com.didi.drouter.router.Request;
import com.didi.drouter.service.ServiceLoader;
import com.didi.drouter.store.IRegister;
import com.didi.drouter.store.RouterKey;
import com.didi.drouter.store.RouterStore;
import com.didi.drouter.store.ServiceKey;
import com.didi.drouter.utils.SystemUtil;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DRouter {
    @NonNull
    public static <T> IRegister Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ServiceKey<T> serviceKey, T t) {
        return RouterStore.Wwwwwwwwwwwwwwwwwwww(serviceKey, t);
    }

    @NonNull
    public static IRegister Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterKey routerKey, IRouterHandler iRouterHandler) {
        return RouterStore.Wwwwwwwwwwwwwwwwwwwww(routerKey, iRouterHandler);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Application application) {
        SystemUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(application);
        RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("host", true);
    }

    public static Application Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return SystemUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NonNull
    public static <T> ServiceLoader<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls) {
        return ServiceLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
    }

    @NonNull
    public static Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }
}
