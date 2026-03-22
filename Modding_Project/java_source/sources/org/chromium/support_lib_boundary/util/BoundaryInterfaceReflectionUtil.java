package org.chromium.support_lib_boundary.util;

import android.os.Build;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collection;
import org.jspecify.annotations.NullMarked;
/* compiled from: Proguard */
@NullMarked
/* loaded from: classes7.dex */
public class BoundaryInterfaceReflectionUtil {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class InvocationHandlerWithDelegateGetter implements InvocationHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f13481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InvocationHandlerWithDelegateGetter(Object obj) {
            this.f13481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(method, this.f13481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass().getClassLoader()).invoke(this.f13481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, objArr);
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            } catch (ReflectiveOperationException e2) {
                throw new RuntimeException("Reflection failed for method " + method, e2);
            }
        }
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = Build.TYPE;
        if (!"eng".equals(str) && !"userdebug".equals(str)) {
            return false;
        }
        return true;
    }

    @Contract
    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return ((InvocationHandlerWithDelegateGetter) invocationHandler).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Method method, ClassLoader classLoader) throws ClassNotFoundException, NoSuchMethodException {
        return Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
    }

    @Contract
    public static InvocationHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (obj == null) {
            return null;
        }
        return new InvocationHandlerWithDelegateGetter(obj);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Collection<String> collection, String str) {
        if (!collection.contains(str)) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (!collection.contains(str + ":dev")) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Contract
    public static <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(BoundaryInterfaceReflectionUtil.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
