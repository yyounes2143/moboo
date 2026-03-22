package com.didi.drouter.router;

import androidx.annotation.NonNull;
import com.didi.drouter.router.IRouterInterceptor;
import com.didi.drouter.store.RouterMeta;
import com.didi.drouter.store.RouterStore;
import com.didi.drouter.utils.RouterLogger;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class InterceptorHandler {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, RouterMeta routerMeta, IRouterInterceptor.IInterceptor iInterceptor) {
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(">> Enter request \"%s\" (related) interceptors", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InterceptorLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerMeta), request, iInterceptor);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull final Queue<IRouterInterceptor> queue, final Request request, final IRouterInterceptor.IInterceptor iInterceptor) {
        final IRouterInterceptor poll = queue.poll();
        if (poll == null) {
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("<< Pass request \"%s\" interceptors", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            iInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return;
        }
        RouterMeta routerMeta = RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(poll.getClass());
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("interceptor \"%s\" execute, for request \"%s\", global:%s, priority:%s", poll.getClass().getSimpleName(), request.Wwwwwwwwwwwwwwwwwwwwwwwwww(), Boolean.valueOf(routerMeta.Wwwwwwwwww()), Integer.valueOf(routerMeta.Wwwwwwwwwwwwwwwwwwwww()));
        request.f5726Wwwwwwwwwwwwwwwwwwwwwwww = new IRouterInterceptor.IInterceptor() { // from class: com.didi.drouter.router.InterceptorHandler.1
            @Override // com.didi.drouter.router.IRouterInterceptor.IInterceptor
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                InterceptorHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(queue, request, iInterceptor);
            }
        };
        poll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, IRouterInterceptor.IInterceptor iInterceptor) {
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(">> Enter request \"%s\" (global) interceptors", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InterceptorLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), request, iInterceptor);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Default implements IRouterInterceptor.IInterceptor {
        @Override // com.didi.drouter.router.IRouterInterceptor.IInterceptor
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }
}
