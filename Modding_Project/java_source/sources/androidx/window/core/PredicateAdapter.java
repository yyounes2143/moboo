package androidx.window.core;

import android.annotation.SuppressLint;
import android.util.Pair;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClasses;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0003\u0015\u0016\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JP\u0010\u0005\u001a\u00020\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0001\"\b\b\u0001\u0010\u0007*\u00020\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00070\t2\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\r0\fJ2\u0010\u000e\u001a\u00020\u0001\"\b\b\u0000\u0010\u0006*\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00060\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\r0\u0010J\u0013\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012H\u0000¢\u0006\u0002\b\u0013J\f\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/window/core/PredicateAdapter;", "", "loader", "Ljava/lang/ClassLoader;", "(Ljava/lang/ClassLoader;)V", "buildPairPredicate", "T", "U", "firstClazz", "Lkotlin/reflect/KClass;", "secondClazz", "predicate", "Lkotlin/Function2;", "", "buildPredicate", "clazz", "Lkotlin/Function1;", "predicateClassOrNull", "Ljava/lang/Class;", "predicateClassOrNull$window_release", "predicateClassOrThrow", "BaseHandler", "PairPredicateStubHandler", "PredicateStubHandler", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"BanUncheckedReflection"})
/* loaded from: classes3.dex */
public final class PredicateAdapter {
    @NotNull
    private final ClassLoader loader;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\"\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0002\u0010\u0006J0\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0010\u0010\u000b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\fH\u0096\u0002¢\u0006\u0002\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0011J#\u0010\u0012\u001a\u00020\u000f*\u00020\n2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\fH\u0004¢\u0006\u0002\u0010\u0014J#\u0010\u0015\u001a\u00020\u000f*\u00020\n2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\fH\u0004¢\u0006\u0002\u0010\u0014J#\u0010\u0016\u001a\u00020\u000f*\u00020\n2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\fH\u0004¢\u0006\u0002\u0010\u0014J#\u0010\u0017\u001a\u00020\u000f*\u00020\n2\u0010\u0010\u0013\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\fH\u0004¢\u0006\u0002\u0010\u0014R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/window/core/PredicateAdapter$BaseHandler;", "T", "", "Ljava/lang/reflect/InvocationHandler;", "clazz", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "invoke", "obj", FirebaseAnalytics.Param.METHOD, "Ljava/lang/reflect/Method;", "parameters", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "invokeTest", "", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "isEquals", "args", "(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z", "isHashCode", "isTest", "isToString", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class BaseHandler<T> implements InvocationHandler {
        @NotNull
        private final KClass<T> clazz;

        public BaseHandler(@NotNull KClass<T> kClass) {
            this.clazz = kClass;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.reflect.InvocationHandler
        @NotNull
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
            Object obj2 = null;
            boolean z = false;
            if (isTest(method, objArr)) {
                KClass<T> kClass = this.clazz;
                if (objArr != null) {
                    obj2 = objArr[0];
                }
                return Boolean.valueOf(invokeTest(obj, KClasses.cast(kClass, obj2)));
            } else if (isEquals(method, objArr)) {
                if (objArr != null) {
                    obj2 = objArr[0];
                }
                if (obj == obj2) {
                    z = true;
                }
                return Boolean.valueOf(z);
            } else if (isHashCode(method, objArr)) {
                return Integer.valueOf(hashCode());
            } else {
                if (isToString(method, objArr)) {
                    return toString();
                }
                throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
            }
        }

        public abstract boolean invokeTest(@NotNull Object obj, @NotNull T t);

        public final boolean isEquals(@NotNull Method method, @Nullable Object[] objArr) {
            if (Intrinsics.areEqual(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1) {
                return true;
            }
            return false;
        }

        public final boolean isHashCode(@NotNull Method method, @Nullable Object[] objArr) {
            if (Intrinsics.areEqual(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null) {
                return true;
            }
            return false;
        }

        public final boolean isTest(@NotNull Method method, @Nullable Object[] objArr) {
            if (Intrinsics.areEqual(method.getName(), "test") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1) {
                return true;
            }
            return false;
        }

        public final boolean isToString(@NotNull Method method, @Nullable Object[] objArr) {
            if (Intrinsics.areEqual(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00050\u0004B;\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00022\u000e\u0010\u0011\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0005H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;", "T", "", "U", "Landroidx/window/core/PredicateAdapter$BaseHandler;", "Landroid/util/Pair;", "clazzT", "Lkotlin/reflect/KClass;", "clazzU", "predicate", "Lkotlin/Function2;", "", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V", "hashCode", "", "invokeTest", "obj", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "toString", "", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PairPredicateStubHandler<T, U> extends BaseHandler<Pair<?, ?>> {
        @NotNull
        private final KClass<T> clazzT;
        @NotNull
        private final KClass<U> clazzU;
        @NotNull
        private final Function2<T, U, Boolean> predicate;

        /* JADX WARN: Multi-variable type inference failed */
        public PairPredicateStubHandler(@NotNull KClass<T> kClass, @NotNull KClass<U> kClass2, @NotNull Function2<? super T, ? super U, Boolean> function2) {
            super(Reflection.getOrCreateKotlinClass(Pair.class));
            this.clazzT = kClass;
            this.clazzU = kClass2;
            this.predicate = function2;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        @NotNull
        public String toString() {
            return this.predicate.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.window.core.PredicateAdapter.BaseHandler
        public boolean invokeTest(@NotNull Object obj, @NotNull Pair<?, ?> pair) {
            return ((Boolean) this.predicate.invoke(KClasses.cast(this.clazzT, pair.first), KClasses.cast(this.clazzU, pair.second))).booleanValue();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\u001d\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/window/core/PredicateAdapter$PredicateStubHandler;", "T", "", "Landroidx/window/core/PredicateAdapter$BaseHandler;", "clazzT", "Lkotlin/reflect/KClass;", "predicate", "Lkotlin/Function1;", "", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V", "hashCode", "", "invokeTest", "obj", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "toString", "", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PredicateStubHandler<T> extends BaseHandler<T> {
        @NotNull
        private final Function1<T, Boolean> predicate;

        /* JADX WARN: Multi-variable type inference failed */
        public PredicateStubHandler(@NotNull KClass<T> kClass, @NotNull Function1<? super T, Boolean> function1) {
            super(kClass);
            this.predicate = function1;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        @Override // androidx.window.core.PredicateAdapter.BaseHandler
        public boolean invokeTest(@NotNull Object obj, @NotNull T t) {
            return this.predicate.invoke(t).booleanValue();
        }

        @NotNull
        public String toString() {
            return this.predicate.toString();
        }
    }

    public PredicateAdapter(@NotNull ClassLoader classLoader) {
        this.loader = classLoader;
    }

    private final Class<?> predicateClassOrThrow() {
        return this.loader.loadClass("java.util.function.Predicate");
    }

    @NotNull
    public final <T, U> Object buildPairPredicate(@NotNull KClass<T> kClass, @NotNull KClass<U> kClass2, @NotNull Function2<? super T, ? super U, Boolean> function2) {
        return Proxy.newProxyInstance(this.loader, new Class[]{predicateClassOrThrow()}, new PairPredicateStubHandler(kClass, kClass2, function2));
    }

    @NotNull
    public final <T> Object buildPredicate(@NotNull KClass<T> kClass, @NotNull Function1<? super T, Boolean> function1) {
        return Proxy.newProxyInstance(this.loader, new Class[]{predicateClassOrThrow()}, new PredicateStubHandler(kClass, function1));
    }

    @Nullable
    public final Class<?> predicateClassOrNull$window_release() {
        try {
            return predicateClassOrThrow();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
