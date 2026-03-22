package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class ActiveResources {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile DequeuedResourceCallback f4231Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f4232Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public EngineResource.ResourceListener f4233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReferenceQueue<EngineResource<?>> f4234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @VisibleForTesting

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Key, ResourceWeakReference> f4235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Executor f4236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f4237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface DequeuedResourceCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class ResourceWeakReference extends WeakReference<EngineResource<?>> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Resource<?> f4241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f4242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Key f4243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ResourceWeakReference(@NonNull Key key, @NonNull EngineResource<?> engineResource, @NonNull ReferenceQueue<? super EngineResource<?>> referenceQueue, boolean z) {
            super(engineResource, referenceQueue);
            Resource<?> resource;
            this.f4243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Key) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
            if (engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && z) {
                resource = (Resource) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else {
                resource = null;
            }
            this.f4241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resource;
            this.f4242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            clear();
        }
    }

    public ActiveResources(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.bumptech.glide.load.engine.ActiveResources.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull final Runnable runnable) {
                return new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Process.setThreadPriority(10);
                        runnable.run();
                    }
                }, "glide-active-resources");
            }
        }));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(EngineResource.ResourceListener resourceListener) {
        synchronized (resourceListener) {
            synchronized (this) {
                this.f4233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceListener;
            }
        }
    }

    @Nullable
    public synchronized EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        ResourceWeakReference resourceWeakReference = this.f4235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(key);
        if (resourceWeakReference == null) {
            return null;
        }
        EngineResource<?> engineResource = resourceWeakReference.get();
        if (engineResource == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceWeakReference);
        }
        return engineResource;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        ResourceWeakReference remove = this.f4235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(key);
        if (remove != null) {
            remove.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ResourceWeakReference resourceWeakReference) {
        Resource<?> resource;
        synchronized (this) {
            this.f4235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(resourceWeakReference.f4243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (resourceWeakReference.f4242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && (resource = resourceWeakReference.f4241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                this.f4233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceWeakReference.f4243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new EngineResource<>(resource, true, false, resourceWeakReference.f4243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        while (!this.f4232Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ResourceWeakReference) this.f4234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove());
                DequeuedResourceCallback dequeuedResourceCallback = this.f4231Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (dequeuedResourceCallback != null) {
                    dequeuedResourceCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, EngineResource<?> engineResource) {
        ResourceWeakReference put = this.f4235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(key, new ResourceWeakReference(key, engineResource, this.f4234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        if (put != null) {
            put.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @VisibleForTesting
    public ActiveResources(boolean z, Executor executor) {
        this.f4235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f4234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ReferenceQueue<>();
        this.f4237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f4236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = executor;
        executor.execute(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.2
            @Override // java.lang.Runnable
            public void run() {
                ActiveResources.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        });
    }
}
