package retrofit2;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.CallAdapter;
import retrofit2.Converter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class Platform {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Platform f14272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Constructor<MethodHandles.Lookup> f14273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Android extends Platform {

        /* compiled from: Proguard */
        /* loaded from: classes7.dex */
        public static final class MainThreadExecutor implements Executor {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final Handler f14275Wwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f14275Wwwwwwwwwwwwwwwwwwwwwwwww.post(runnable);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Android() {
            /*
                r2 = this;
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 24
                if (r0 < r1) goto L8
                r0 = 1
                goto L9
            L8:
                r0 = 0
            L9:
                r2.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: retrofit2.Platform.Android.<init>():void");
        }

        @Override // retrofit2.Platform
        @Nullable
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwww(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return super.Wwwwwwwwwwwwwwwwwwwwwwwwwww(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }

        @Override // retrofit2.Platform
        public Executor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new MainThreadExecutor();
        }
    }

    public Platform(boolean z) {
        this.f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        Constructor<MethodHandles.Lookup> constructor = null;
        if (z) {
            try {
                constructor = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getDeclaredConstructor(Class.class, Integer.TYPE);
                constructor.setAccessible(true);
            } catch (NoClassDefFoundError | NoSuchMethodException unused) {
            }
        }
        this.f14273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = constructor;
    }

    public static Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f14272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if ("Dalvik".equals(System.getProperty("java.vm.name"))) {
            return new Android();
        }
        return new Platform(true);
    }

    @IgnoreJRERequirement
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(Method method) {
        boolean isDefault;
        if (this.f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            isDefault = method.isDefault();
            if (isDefault) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    @IgnoreJRERequirement
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwww(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        MethodHandles.Lookup lookup;
        MethodHandle unreflectSpecial;
        MethodHandle bindTo;
        Object invokeWithArguments;
        Constructor<MethodHandles.Lookup> constructor = this.f14273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (constructor == null) {
            lookup = MethodHandles.lookup();
        } else {
            lookup = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(constructor.newInstance(cls, -1));
        }
        unreflectSpecial = lookup.unreflectSpecial(method, cls);
        bindTo = unreflectSpecial.bindTo(obj);
        invokeWithArguments = bindTo.invokeWithArguments(objArr);
        return invokeWithArguments;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ? 1 : 0;
    }

    public List<? extends Converter.Factory> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return Collections.singletonList(OptionalConverterFactory.INSTANCE);
        }
        return Collections.EMPTY_LIST;
    }

    @Nullable
    public Executor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return null;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return 2;
        }
        return 1;
    }

    public List<? extends CallAdapter.Factory> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Executor executor) {
        DefaultCallAdapterFactory defaultCallAdapterFactory = new DefaultCallAdapterFactory(executor);
        if (this.f14274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return Arrays.asList(CompletableFutureCallAdapterFactory.INSTANCE, defaultCallAdapterFactory);
        }
        return Collections.singletonList(defaultCallAdapterFactory);
    }
}
