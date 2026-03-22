package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Glide implements ComponentCallbacks2 {

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile boolean f3973Wwwwwwwwwwwwww;
    @GuardedBy("Glide.class")

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile Glide f3974Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestOptionsFactory f3976Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConnectivityMonitorFactory f3978Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManagerRetriever f3979Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f3980Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideContext f3981Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MemoryCache f3982Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f3983Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Engine f3984Wwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("managers")

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<RequestManager> f3977Wwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public MemoryCategory f3975Wwwwwwwwwwwwwwww = MemoryCategory.NORMAL;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface RequestOptionsFactory {
        @NonNull
        RequestOptions build();
    }

    public Glide(@NonNull Context context, @NonNull Engine engine, @NonNull MemoryCache memoryCache, @NonNull BitmapPool bitmapPool, @NonNull ArrayPool arrayPool, @NonNull RequestManagerRetriever requestManagerRetriever, @NonNull ConnectivityMonitorFactory connectivityMonitorFactory, int i, @NonNull RequestOptionsFactory requestOptionsFactory, @NonNull Map<Class<?>, TransitionOptions<?, ?>> map, @NonNull List<RequestListener<Object>> list, @NonNull List<GlideModule> list2, @Nullable AppGlideModule appGlideModule, @NonNull GlideExperiments glideExperiments) {
        this.f3984Wwwwwwwwwwwwwwwwwwwwwwwww = engine;
        this.f3983Wwwwwwwwwwwwwwwwwwwwwwww = bitmapPool;
        this.f3980Wwwwwwwwwwwwwwwwwwwww = arrayPool;
        this.f3982Wwwwwwwwwwwwwwwwwwwwwww = memoryCache;
        this.f3979Wwwwwwwwwwwwwwwwwwww = requestManagerRetriever;
        this.f3978Wwwwwwwwwwwwwwwwwww = connectivityMonitorFactory;
        this.f3976Wwwwwwwwwwwwwwwww = requestOptionsFactory;
        this.f3981Wwwwwwwwwwwwwwwwwwwwww = new GlideContext(context, arrayPool, RegistryFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, list2, appGlideModule), new ImageViewTargetFactory(), requestOptionsFactory, map, list, engine, glideExperiments, i);
    }

    @NonNull
    public static RequestManager Wwwwwwwwwwwwww(@NonNull Context context) {
        return Wwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public static void Wwwwwwwwwwwwwwwww(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @GuardedBy("Glide.class")
    public static void Wwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull GlideBuilder glideBuilder, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        RequestManagerRetriever.RequestManagerFactory requestManagerFactory;
        Context applicationContext = context.getApplicationContext();
        List<GlideModule> list = Collections.EMPTY_LIST;
        if (generatedAppGlideModule == null || generatedAppGlideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            list = new ManifestParser(applicationContext).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
            Set<Class<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = generatedAppGlideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Iterator<GlideModule> it = list.iterator();
            while (it.hasNext()) {
                GlideModule next = it.next();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        next.toString();
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (GlideModule glideModule : list) {
                glideModule.getClass().toString();
            }
        }
        if (generatedAppGlideModule != null) {
            requestManagerFactory = generatedAppGlideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            requestManagerFactory = null;
        }
        glideBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestManagerFactory);
        for (GlideModule glideModule2 : list) {
            glideModule2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, glideBuilder);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, glideBuilder);
        }
        Glide Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = glideBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, list, generatedAppGlideModule);
        applicationContext.registerComponentCallbacks(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        f3974Wwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @GuardedBy("Glide.class")
    public static void Wwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        Wwwwwwwwwwwwwwwwwwww(context, new GlideBuilder(), generatedAppGlideModule);
    }

    @NonNull
    public static RequestManagerRetriever Wwwwwwwwwwwwwwwwwwwwww(@Nullable Context context) {
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public static GeneratedAppGlideModule Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        try {
            return (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (IllegalAccessException e) {
            Wwwwwwwwwwwwwwwww(e);
            return null;
        } catch (InstantiationException e2) {
            Wwwwwwwwwwwwwwwww(e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Wwwwwwwwwwwwwwwww(e3);
            return null;
        } catch (InvocationTargetException e4) {
            Wwwwwwwwwwwwwwwww(e4);
            return null;
        }
    }

    @NonNull
    public static Glide Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (f3974Wwwwwwwwwwwwwww == null) {
            GeneratedAppGlideModule Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getApplicationContext());
            synchronized (Glide.class) {
                try {
                    if (f3974Wwwwwwwwwwwwwww == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                } finally {
                }
            }
        }
        return f3974Wwwwwwwwwwwwwww;
    }

    @GuardedBy("Glide.class")
    @VisibleForTesting
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f3973Wwwwwwwwwwwwww) {
            f3973Wwwwwwwwwwwwww = true;
            try {
                Wwwwwwwwwwwwwwwwwwwww(context, generatedAppGlideModule);
                return;
            } finally {
                f3973Wwwwwwwwwwwwww = false;
            }
        }
        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
    }

    public void Wwwwwwwwwwwwwww(RequestManager requestManager) {
        synchronized (this.f3977Wwwwwwwwwwwwwwwwww) {
            try {
                if (this.f3977Wwwwwwwwwwwwwwwwww.contains(requestManager)) {
                    this.f3977Wwwwwwwwwwwwwwwwww.remove(requestManager);
                } else {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void Wwwwwwwwwwwwwwww(int i) {
        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        synchronized (this.f3977Wwwwwwwwwwwwwwwwww) {
            try {
                for (RequestManager requestManager : this.f3977Wwwwwwwwwwwwwwwwww) {
                    requestManager.onTrimMemory(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3982Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        this.f3983Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        this.f3980Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
    }

    public boolean Wwwwwwwwwwwwwwwwww(@NonNull Target<?> target) {
        synchronized (this.f3977Wwwwwwwwwwwwwwwwww) {
            try {
                for (RequestManager requestManager : this.f3977Wwwwwwwwwwwwwwwwww) {
                    if (requestManager.Wwwwwwwwwwwwww(target)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwww(RequestManager requestManager) {
        synchronized (this.f3977Wwwwwwwwwwwwwwwwww) {
            try {
                if (!this.f3977Wwwwwwwwwwwwwwwwww.contains(requestManager)) {
                    this.f3977Wwwwwwwwwwwwwwwwww.add(requestManager);
                } else {
                    throw new IllegalStateException("Cannot register already registered manager");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public RequestManagerRetriever Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3979Wwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public Registry Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3981Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NonNull
    public GlideContext Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3981Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public Context Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3981Wwwwwwwwwwwwwwwwwwwwww.getBaseContext();
    }

    public ConnectivityMonitorFactory Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3978Wwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public BitmapPool Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3983Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public ArrayPool Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f3980Wwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f3982Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f3983Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f3980Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f3984Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        Wwwwwwwwwwwwwwww(i);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }
}
