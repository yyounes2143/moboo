package com.didi.drouter.service;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.didi.drouter.api.DRouter;
import com.didi.drouter.api.Strategy;
import com.didi.drouter.service.ICallService;
import com.didi.drouter.store.RouterMeta;
import com.didi.drouter.store.RouterStore;
import com.didi.drouter.utils.ReflectUtil;
import com.didi.drouter.utils.RouterLogger;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ServiceAgent<T> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public T f5771Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Lifecycle f5772Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Strategy f5773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f5774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<T> f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Class<?>, Object> f5770Wwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Class<?>, WeakReference<Object>> f5769Wwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<RouterMeta> f5777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class CallHandler implements InvocationHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f5778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CallHandler(Object obj) {
            this.f5778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
            if (!(obj instanceof ICallService.Type0) && !(obj instanceof ICallService.Type1) && !(obj instanceof ICallService.Type2) && !(obj instanceof ICallService.Type3) && !(obj instanceof ICallService.Type4) && !(obj instanceof ICallService.Type5) && !(obj instanceof ICallService.TypeN)) {
                return false;
            }
            return true;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object[] objArr2 = (Object[]) objArr[0];
            if (objArr2 == null) {
                objArr2 = new Object[]{null};
            }
            Object obj2 = this.f5778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if ((obj2 instanceof ICallService.Type0) && objArr2.length == 0) {
                return ((ICallService.Type0) obj2).call();
            }
            if ((obj2 instanceof ICallService.Type1) && objArr2.length == 1) {
                return ((ICallService.Type1) obj2).call(objArr2[0]);
            }
            if ((obj2 instanceof ICallService.Type2) && objArr2.length == 2) {
                return ((ICallService.Type2) obj2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr2[0], objArr2[1]);
            }
            if ((obj2 instanceof ICallService.Type3) && objArr2.length == 3) {
                return ((ICallService.Type3) obj2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr2[0], objArr2[1], objArr2[2]);
            }
            if ((obj2 instanceof ICallService.Type4) && objArr2.length == 4) {
                return ((ICallService.Type4) obj2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr2[0], objArr2[1], objArr2[2], objArr2[3]);
            }
            if ((obj2 instanceof ICallService.Type5) && objArr2.length == 5) {
                return ((ICallService.Type5) obj2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr2[0], objArr2[1], objArr2[2], objArr2[3], objArr2[4]);
            }
            if (obj2 instanceof ICallService.TypeN) {
                return ((ICallService.TypeN) obj2).call(objArr2);
            }
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("%s not match with argument length %s ", this.f5778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass().getSimpleName(), Integer.valueOf(objArr2.length));
            return null;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ServiceComparator implements Comparator<RouterMeta> {
        public ServiceComparator() {
        }

        @Override // java.util.Comparator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compare(RouterMeta routerMeta, RouterMeta routerMeta2) {
            return routerMeta2.Wwwwwwwwwwwwwwwwwwwww() - routerMeta.Wwwwwwwwwwwwwwwwwwwww();
        }
    }

    public ServiceAgent(Class<T> cls) {
        this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        for (RouterMeta routerMeta : RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
            if (routerMeta.Wwwwwwwwwwwwwwwwww() == RouterMeta.f5789Wwwwwwwwwww) {
                this.f5777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(routerMeta);
            }
        }
        Collections.sort(this.f5777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new ServiceComparator());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, IFeatureMatcher<Object> iFeatureMatcher) {
        if (this.f5775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(str)) {
            if (iFeatureMatcher == null || iFeatureMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta routerMeta, Object... objArr) {
        Class<?> Wwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwww();
        Object obj = null;
        if (Wwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        Map<Class<?>, Object> map = f5770Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        Object obj2 = map.get(Wwwwwwwwwwwwwwwwwwww2);
        if (obj2 == null) {
            Map<Class<?>, WeakReference<Object>> map2 = f5769Wwwwwwwwwwwwwwwwwwwwwwwwww;
            if (map2.containsKey(Wwwwwwwwwwwwwwwwwwww2)) {
                obj2 = map2.get(Wwwwwwwwwwwwwwwwwwww2).get();
            }
        }
        if (obj2 == null) {
            synchronized (ServiceAgent.class) {
                try {
                    Object obj3 = map.get(Wwwwwwwwwwwwwwwwwwww2);
                    if (obj3 == null) {
                        Map<Class<?>, WeakReference<Object>> map3 = f5769Wwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (map3.containsKey(Wwwwwwwwwwwwwwwwwwww2)) {
                            obj3 = map3.get(Wwwwwwwwwwwwwwwwwwww2).get();
                        }
                    }
                    if (obj3 == null) {
                        if (objArr != null && objArr.length == 0 && routerMeta.Wwwwwwwwwwwwwwwwwww() != null) {
                            obj = routerMeta.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                        }
                        if (obj == null) {
                            obj3 = ReflectUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, objArr);
                        } else {
                            obj3 = obj;
                        }
                        if (obj3 != null) {
                            if (routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 2) {
                                map.put(Wwwwwwwwwwwwwwwwwwww2, obj3);
                            } else if (routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 1) {
                                f5769Wwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwww2, new WeakReference<>(obj3));
                            }
                            return obj3;
                        }
                    }
                    return obj3;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return obj2;
    }

    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object... objArr) {
        String str = null;
        if (this.f5773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            IRemoteBridge iRemoteBridge = (IRemoteBridge) DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IRemoteBridge.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Object[0]);
            if (iRemoteBridge == null) {
                return null;
            }
            return (T) iRemoteBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5772Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, objArr);
        }
        for (RouterMeta routerMeta : this.f5777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerMeta.Wwwwwwwwwwwwwwwww(), routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwww())) {
                if (routerMeta.Wwwwwwwwwww()) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[Local] Get dynamic service \"%s\" with impl \"%s\"", this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSimpleName(), routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwww().getClass().getName());
                    return (T) routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                T t = (T) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerMeta, objArr);
                if (t != null) {
                    if (this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == ICallService.class && CallHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t)) {
                        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[Local] Get ICallService \"%s\" with impl \"%s\"", this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSimpleName(), t.getClass().getSimpleName());
                        return (T) Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww}, new CallHandler(t));
                    }
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[Local] Get service \"%s\" with impl \"%s\"", this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSimpleName(), t.getClass().getSimpleName());
                    return t;
                }
            }
        }
        RouterLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String simpleName = this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSimpleName();
        T t2 = this.f5771Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (t2 != null) {
            str = t2.getClass().getName();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("[Local] Get service \"%s\" fail with default \"%s\"", simpleName, str);
        return this.f5771Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public List<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object... objArr) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ArrayList arrayList = new ArrayList();
        if (this.f5776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            for (RouterMeta routerMeta : this.f5777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerMeta.Wwwwwwwwwwwwwwwww(), routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwww())) {
                    if (routerMeta.Wwwwwwwwwww()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerMeta, objArr);
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                }
            }
        }
        return arrayList;
    }
}
