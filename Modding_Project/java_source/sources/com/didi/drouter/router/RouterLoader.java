package com.didi.drouter.router;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.didi.drouter.api.DRouter;
import com.didi.drouter.router.IRequestProxy;
import com.didi.drouter.router.IRouterInterceptor;
import com.didi.drouter.store.RouterMeta;
import com.didi.drouter.store.RouterStore;
import com.didi.drouter.utils.RouterLogger;
import com.didi.drouter.utils.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RouterLoader {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RouterCallback f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Request f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class RouterComparator implements Comparator<RouterMeta> {
        public RouterComparator() {
        }

        @Override // java.util.Comparator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compare(RouterMeta routerMeta, RouterMeta routerMeta2) {
            int Wwwwwwwwwwwwwwwwwwwww2 = routerMeta2.Wwwwwwwwwwwwwwwwwwwww() - routerMeta.Wwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwww2 == 0 && !routerMeta.Wwwwwww() && routerMeta2.Wwwwwww()) {
                return -1;
            }
            if (Wwwwwwwwwwwwwwwwwwwww2 == 0 && routerMeta.Wwwwwww() && !routerMeta2.Wwwwwww()) {
                return 1;
            }
            return Wwwwwwwwwwwwwwwwwwwww2;
        }
    }

    public static Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, boolean z, int i, int i2) {
        int i3;
        if (z) {
            i3 = -1;
        } else {
            i3 = i;
        }
        request.f5729Wwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        if (z) {
            Request Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwww().toString());
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.f5712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.f5732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5730Wwwwwwwwwwwwwwwwwwwwwwwwwwww = request.f5730Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5728Wwwwwwwwwwwwwwwwwwwwwwwwww = request.f5728Wwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5727Wwwwwwwwwwwwwwwwwwwwwwwww = request.Wwwwwwwwwwwwwwwwwwwwwwwwww() + "_" + i2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5729Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return request;
    }

    @NonNull
    public static RouterLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, RouterCallback routerCallback) {
        RouterLoader routerLoader = new RouterLoader();
        routerLoader.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        routerLoader.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = routerCallback;
        return routerLoader;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        IRequestProxy.RemoteCallback remoteCallback;
        IRequestProxy iRequestProxy = (IRequestProxy) DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IRequestProxy.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Object[0]);
        if (iRequestProxy == null) {
            return;
        }
        Request request = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        final Result result = new Result(request, Collections.singleton(request), -1, this.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (this.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            remoteCallback = new IRequestProxy.RemoteCallback() { // from class: com.didi.drouter.router.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            };
        } else {
            RouterHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            remoteCallback = null;
        }
        Request request2 = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        iRequestProxy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request2, request2.f5730Wwwwwwwwwwwwwwwwwwwwwwwwwwww, remoteCallback);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        InterceptorHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new IRouterInterceptor.IInterceptor() { // from class: com.didi.drouter.router.RouterLoader.1
            @Override // com.didi.drouter.router.IRouterInterceptor.IInterceptor
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5725Wwwwwwwwwwwwwwwwwwwwwww = false;
                TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww()));
                Map Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterLoader.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("warning: there is no request target match", new Object[0]);
                    new Result(RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Collections.singleton(RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), 0, RouterLoader.this.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).f5734Wwwwwwwwwwwwwwwwwwwwwwwww = 404;
                    ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "not_found");
                    return;
                }
                final Result result = new Result(RouterLoader.this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet(), Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.size(), RouterLoader.this.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() > 1) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("warning: request match %s targets", Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.size()));
                }
                final boolean[] zArr = {false};
                for (final Map.Entry entry : Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.entrySet()) {
                    if (zArr[0]) {
                        ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((Request) entry.getKey(), "stop_by_router_target");
                    } else {
                        InterceptorHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Request) entry.getKey(), (RouterMeta) entry.getValue(), new IRouterInterceptor.IInterceptor() { // from class: com.didi.drouter.router.RouterLoader.1.1
                            @Override // com.didi.drouter.router.IRouterInterceptor.IInterceptor
                            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                                ((Request) entry.getKey()).f5726Wwwwwwwwwwwwwwwwwwwwwwww = new IRouterInterceptor.IInterceptor() { // from class: com.didi.drouter.router.RouterLoader.1.1.1
                                    @Override // com.didi.drouter.router.IRouterInterceptor.IInterceptor
                                    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                                    }
                                };
                                RouterDispatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Request) entry.getKey(), (RouterMeta) entry.getValue(), result, RouterLoader.this.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                ((Request) entry.getKey()).f5726Wwwwwwwwwwwwwwwwwwwwwwww = null;
                            }
                        });
                    }
                }
            }
        });
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Request start -------------------------------------------------------------", new Object[0]);
        RouterLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        Uri Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f5749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            z = true;
        } else {
            z = false;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("primary request \"%s\", router uri \"%s\", need callback \"%s\"", Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwww2, Boolean.valueOf(z));
        if (this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5730Wwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @NonNull
    public final Map<Request, RouterMeta> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        char c = 3;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Parcelable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("router_start_activity_via_intent");
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Intent) {
            this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().remove("router_start_activity_via_intent");
            Intent intent = (Intent) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("request %s, intent \"%s\"", this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(), intent);
            List<ResolveInfo> queryIntentActivities = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().getPackageManager().queryIntentActivities(intent, 65536);
            if (!queryIntentActivities.isEmpty()) {
                this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5729Wwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
                RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\" find target class \"%s\", type \"%s\"", this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(), queryIntentActivities.get(0).activityInfo.name, Integer.valueOf(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5729Wwwwwwwwwwwwwwwwwwwwwwwwwww));
                linkedHashMap.put(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent));
                return linkedHashMap;
            }
        } else {
            List<RouterMeta> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int i = 0;
            for (RouterMeta routerMeta : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (!routerMeta.Wwwwwwwwwwww(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(), this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("inject placeholder key value to bundle error, class=%s, uri=%s", routerMeta.Wwwwwwwwwwwwwwww(), this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww());
                } else {
                    Request request = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() > 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i2 = i + 1;
                    Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, z, routerMeta.Wwwwwwwwwwwwwwwwww(), i);
                    RouterLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    String Wwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwww();
                    Integer valueOf = Integer.valueOf(routerMeta.Wwwwwwwwwwwwwwwwww());
                    Integer valueOf2 = Integer.valueOf(routerMeta.Wwwwwwwwwwwwwwwwwwwww());
                    char c2 = c;
                    Object[] objArr = new Object[4];
                    objArr[0] = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                    objArr[1] = Wwwwwwwwwwwwwwww2;
                    objArr[2] = valueOf;
                    objArr[c2] = valueOf2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\" find target class \"%s\", type \"%s\", priority \"%s\"", objArr);
                    linkedHashMap.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, routerMeta);
                    i = i2;
                    c = c2;
                }
            }
        }
        return linkedHashMap;
    }

    @NonNull
    public final List<RouterMeta> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww()));
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("router_start_activity_with_default_scheme_host");
        if (!TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww().toString().startsWith(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            for (RouterMeta routerMeta : RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwww(Uri.parse(this.f5750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww().getPath()))) {
                if (routerMeta.Wwwwwwwwwwwwwwwwww() == 1) {
                    arrayList2.add(routerMeta);
                }
            }
        }
        Collections.sort(arrayList2, new RouterComparator());
        SparseArray sparseArray = new SparseArray();
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            RouterMeta routerMeta2 = (RouterMeta) obj;
            if (routerMeta2.Wwwwwwwwwwwwwwwwww() == 1) {
                if (sparseArray.get(0) != null) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("warning: request match more than one activity and this \"%s\" will be ignored", routerMeta2.Wwwwwwwwwwwwwwww());
                } else {
                    sparseArray.put(0, routerMeta2);
                }
            } else if (routerMeta2.Wwwwwwwwwwwwwwwwww() == 2) {
                if (sparseArray.get(1) != null) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("warning: request match more than one fragment and this \"%s\" will be ignored", routerMeta2.Wwwwwwwwwwwwwwww());
                } else {
                    sparseArray.put(1, routerMeta2);
                }
            } else if (routerMeta2.Wwwwwwwwwwwwwwwwww() == 3) {
                if (sparseArray.get(2) != null) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("warning: request match more than one view and this \"%s\" will be ignored", routerMeta2.Wwwwwwwwwwwwwwww());
                } else {
                    sparseArray.put(2, routerMeta2);
                }
            } else if (routerMeta2.Wwwwwwwwwwwwwwwwww() == 4) {
                arrayList.add(routerMeta2);
            }
        }
        if (sparseArray.get(0) != null) {
            arrayList.add(sparseArray.get(0));
            return arrayList;
        } else if (sparseArray.get(1) != null) {
            arrayList.add(sparseArray.get(1));
            return arrayList;
        } else {
            if (sparseArray.get(2) != null) {
                arrayList.add(sparseArray.get(2));
            }
            return arrayList;
        }
    }
}
