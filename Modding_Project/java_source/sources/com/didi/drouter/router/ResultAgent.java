package com.didi.drouter.router;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.didi.drouter.api.DRouter;
import com.didi.drouter.utils.RouterExecutor;
import com.didi.drouter.utils.RouterLogger;
import com.didi.drouter.utils.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ResultAgent {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, Result> f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final IRouterResult f5743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RouterCallback f5744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Request f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Request> f5747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, String> f5746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LifecycleObserver f5742Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LifecycleEventObserver() { // from class: com.didi.drouter.router.ResultAgent.1
        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_DESTROY && ResultAgent.f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(ResultAgent.this.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww())) {
                RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\" lifecycleOwner destroy and complete", ResultAgent.this.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ResultAgent.this.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "request_cancel");
            }
        }
    };

    public ResultAgent(@NonNull final Request request, @NonNull Collection<Request> collection, @NonNull Result result, RouterCallback routerCallback) {
        f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(request.Wwwwwwwwwwwwwwwwwwwwwwwwww(), result);
        this.f5743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (IRouterResult) DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IRouterResult.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Object[0]);
        this.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f5744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = routerCallback;
        for (Request request2 : collection) {
            f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(request2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), result);
            this.f5747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(request2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), request2);
        }
        if (request.f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            RouterExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.didi.drouter.router.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResultAgent.this, request);
                }
            });
        }
    }

    public static synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, String str) {
        synchronized (ResultAgent.class) {
            if (request == null) {
                return;
            }
            try {
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().equals(Wwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 1) {
                            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("be careful, all request \"%s\" will be cleared", Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                        for (String str2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
                            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(str2)) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, str);
                            }
                        }
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, str);
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() == Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public static Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            return null;
        }
        return f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }

    public static synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull final Result result) {
        synchronized (ResultAgent.class) {
            try {
                RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("primary request \"%s\" complete, router uri \"%s\", all reason %s", result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(), result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(), result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
                f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                RouterCallback routerCallback = result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (routerCallback != null) {
                    routerCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                }
                if (result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    RouterExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.didi.drouter.router.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.this);
                        }
                    });
                }
                RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Request finish ------------------------------------------------------------", new Object[0]);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        synchronized (ResultAgent.class) {
            try {
                Map<String, Result> map = f5741Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Result result = map.get(str);
                if (result != null) {
                    if ("timeout".equals(str2)) {
                        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\" time out and force-complete", str);
                    }
                    result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, str2);
                    ResultAgent resultAgent = result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    resultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwww(resultAgent.f5747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str), str2);
                    map.remove(str);
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("==== request \"%s\" complete, reason \"%s\" ====", str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
        ResultAgent resultAgent = result.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        resultAgent.f5745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.removeObserver(resultAgent.f5742Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResultAgent resultAgent, Request request) {
        resultAgent.getClass();
        request.f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.addObserver(resultAgent.f5742Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, String str) {
        int i;
        try {
            if (this.f5743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && request != null) {
                if ("not_found".equals(str)) {
                    i = 1;
                } else {
                    if (!"stop_by_interceptor".equals(str) && !"stop_by_router_target".equals(str)) {
                        i = 0;
                    }
                    i = 2;
                }
                this.f5743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, i);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
