package com.bumptech.glide.load.engine;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class EngineJob<R> implements DecodeJob.Callback<R>, FactoryPools.Poolable {

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public static final EngineResourceFactory f4355Kkkkkkkkkkkkkkkkkkkkkkkk = new EngineResourceFactory();

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public boolean f4356Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public volatile boolean f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Www  reason: collision with root package name */
    public DecodeJob<R> f4358Www;

    /* renamed from: Wwww  reason: collision with root package name */
    public EngineResource<?> f4359Wwww;

    /* renamed from: Wwwww  reason: collision with root package name */
    public boolean f4360Wwwww;

    /* renamed from: Wwwwww  reason: collision with root package name */
    public GlideException f4361Wwwwww;

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public boolean f4362Wwwwwww;

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public DataSource f4363Wwwwwwww;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public Resource<?> f4364Wwwwwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public boolean f4365Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public boolean f4366Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public boolean f4367Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4368Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public Key f4369Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicInteger f4370Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideExecutor f4371Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideExecutor f4372Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideExecutor f4373Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideExecutor f4374Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EngineJobListener f4375Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EngineResourceFactory f4376Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<EngineJob<?>> f4377Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EngineResource.ResourceListener f4378Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StateVerifier f4379Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceCallbacksAndExecutors f4380Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class CallLoadFailed implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceCallback f4382Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CallLoadFailed(ResourceCallback resourceCallback) {
            this.f4382Wwwwwwwwwwwwwwwwwwwwwwwww = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f4382Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                synchronized (EngineJob.this) {
                    if (EngineJob.this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4382Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                        EngineJob.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4382Wwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                    EngineJob.this.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class CallResourceReady implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceCallback f4384Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CallResourceReady(ResourceCallback resourceCallback) {
            this.f4384Wwwwwwwwwwwwwwwwwwwwwwwww = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f4384Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                synchronized (EngineJob.this) {
                    if (EngineJob.this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4384Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                        EngineJob.this.f4359Wwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        EngineJob.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4384Wwwwwwwwwwwwwwwwwwwwwwwww);
                        EngineJob.this.Wwwwwwwwwwwwwwwww(this.f4384Wwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                    EngineJob.this.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class EngineResourceFactory {
        public <R> EngineResource<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<R> resource, boolean z, Key key, EngineResource.ResourceListener resourceListener) {
            return new EngineResource<>(resource, z, true, key, resourceListener);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ResourceCallbackAndExecutor {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Executor f4385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceCallback f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ResourceCallbackAndExecutor(ResourceCallback resourceCallback, Executor executor) {
            this.f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceCallback;
            this.f4385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ResourceCallbackAndExecutor) {
                return this.f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((ResourceCallbackAndExecutor) obj).f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return false;
        }

        public int hashCode() {
            return this.f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ResourceCallbacksAndExecutors implements Iterable<ResourceCallbackAndExecutor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<ResourceCallbackAndExecutor> f4387Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ResourceCallbacksAndExecutors() {
            this(new ArrayList(2));
        }

        public static ResourceCallbackAndExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback) {
            return new ResourceCallbackAndExecutor(resourceCallback, Executors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback) {
            this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.remove(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceCallback));
        }

        public ResourceCallbacksAndExecutors Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new ResourceCallbacksAndExecutors(new ArrayList(this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww));
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback) {
            return this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceCallback));
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback, Executor executor) {
            this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.add(new ResourceCallbackAndExecutor(resourceCallback, executor));
        }

        public void clear() {
            this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }

        public boolean isEmpty() {
            return this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<ResourceCallbackAndExecutor> iterator() {
            return this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        }

        public int size() {
            return this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww.size();
        }

        public ResourceCallbacksAndExecutors(List<ResourceCallbackAndExecutor> list) {
            this.f4387Wwwwwwwwwwwwwwwwwwwwwwwww = list;
        }
    }

    public EngineJob(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, EngineJobListener engineJobListener, EngineResource.ResourceListener resourceListener, Pools.Pool<EngineJob<?>> pool) {
        this(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, engineJobListener, resourceListener, pool, f4355Kkkkkkkkkkkkkkkkkkkkkkkk);
    }

    private synchronized void Wwwwwwwwwwwwwwwwww() {
        if (this.f4369Wwwwwwwwwwwwww != null) {
            this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.clear();
            this.f4369Wwwwwwwwwwwwww = null;
            this.f4359Wwww = null;
            this.f4364Wwwwwwwww = null;
            this.f4360Wwwww = false;
            this.f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk = false;
            this.f4362Wwwwwww = false;
            this.f4356Kkkkkkkkkkkkkkkkkkkkkkkkk = false;
            this.f4358Www.Wwwwwwwwwwww(false);
            this.f4358Www = null;
            this.f4361Wwwwww = null;
            this.f4363Wwwwwwww = null;
            this.f4377Wwwwwwwwwwwwwwwwwwwwww.release(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void Wwwwwwwwwwwwwwww(DecodeJob<R> decodeJob) {
        GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            this.f4358Www = decodeJob;
            if (decodeJob.Wwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4374Wwwwwwwwwwwwwwwwwww;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwwwwwwwwwwwww2.execute(decodeJob);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void Wwwwwwwwwwwwwwwww(ResourceCallback resourceCallback) {
        try {
            this.f4379Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceCallback);
            if (this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (!this.f4362Wwwwwww) {
                    if (this.f4360Wwwww) {
                    }
                }
                if (this.f4370Wwwwwwwwwwwwwww.get() == 0) {
                    Wwwwwwwwwwwwwwwwww();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwww() {
        return this.f4365Wwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        synchronized (this) {
            try {
                this.f4379Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (this.f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk) {
                    this.f4364Wwwwwwwww.recycle();
                    Wwwwwwwwwwwwwwwwww();
                } else if (!this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                    if (!this.f4362Wwwwwww) {
                        this.f4359Wwww = this.f4376Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4364Wwwwwwwww, this.f4368Wwwwwwwwwwwww, this.f4369Wwwwwwwwwwwwww, this.f4378Wwwwwwwwwwwwwwwwwwwwwww);
                        this.f4362Wwwwwww = true;
                        ResourceCallbacksAndExecutors Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() + 1);
                        this.f4375Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f4369Wwwwwwwwwwwwww, this.f4359Wwww);
                        Iterator<ResourceCallbackAndExecutor> it = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.iterator();
                        while (it.hasNext()) {
                            ResourceCallbackAndExecutor next = it.next();
                            next.f4385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new CallResourceReady(next.f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    throw new IllegalStateException("Already have resource");
                } else {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwww() {
        synchronized (this) {
            try {
                this.f4379Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (this.f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk) {
                    Wwwwwwwwwwwwwwwwww();
                } else if (!this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                    if (!this.f4360Wwwww) {
                        this.f4360Wwwww = true;
                        Key key = this.f4369Wwwwwwwwwwwwww;
                        ResourceCallbacksAndExecutors Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() + 1);
                        this.f4375Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, key, null);
                        Iterator<ResourceCallbackAndExecutor> it = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.iterator();
                        while (it.hasNext()) {
                            ResourceCallbackAndExecutor next = it.next();
                            next.f4385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new CallLoadFailed(next.f4386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    throw new IllegalStateException("Already failed once");
                } else {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f4360Wwwww && !this.f4362Wwwwwww && !this.f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk) {
            return false;
        }
        return true;
    }

    @VisibleForTesting
    public synchronized EngineJob<R> Wwwwwwwwwwwwwwwwwwwwwww(Key key, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f4369Wwwwwwwwwwwwww = key;
        this.f4368Wwwwwwwwwwwww = z;
        this.f4367Wwwwwwwwwwww = z2;
        this.f4366Wwwwwwwwwww = z3;
        this.f4365Wwwwwwwwww = z4;
        return this;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwww(int i) {
        EngineResource<?> engineResource;
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww(), "Not yet complete!");
        if (this.f4370Wwwwwwwwwwwwwww.getAndAdd(i) == 0 && (engineResource = this.f4359Wwww) != null) {
            engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4367Wwwwwwwwwwww) {
            return this.f4372Wwwwwwwwwwwwwwwww;
        }
        if (this.f4366Wwwwwwwwwww) {
            return this.f4371Wwwwwwwwwwwwwwww;
        }
        return this.f4373Wwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        EngineResource<?> engineResource;
        synchronized (this) {
            try {
                this.f4379Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww(), "Not yet complete!");
                int decrementAndGet = this.f4370Wwwwwwwwwwwwwww.decrementAndGet();
                if (decrementAndGet >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, "Can't decrement below 0");
                if (decrementAndGet == 0) {
                    engineResource = this.f4359Wwww;
                    Wwwwwwwwwwwwwwwwww();
                } else {
                    engineResource = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (engineResource != null) {
            engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        this.f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk = true;
        this.f4358Www.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4375Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f4369Wwwwwwwwwwwwww);
    }

    @GuardedBy("this")
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback) {
        try {
            resourceCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4359Wwww, this.f4363Wwwwwwww, this.f4356Kkkkkkkkkkkkkkkkkkkkkkkkk);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    @GuardedBy("this")
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback) {
        try {
            resourceCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4361Wwwwww);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DecodeJob<?> decodeJob) {
        Wwwwwwwwwwwwwwwwwwwwwwwww().execute(decodeJob);
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4379Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideException glideException) {
        synchronized (this) {
            this.f4361Wwwwww = glideException;
        }
        Wwwwwwwwwwwwwwwwwwwww();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<R> resource, DataSource dataSource, boolean z) {
        synchronized (this) {
            this.f4364Wwwwwwwww = resource;
            this.f4363Wwwwwwww = dataSource;
            this.f4356Kkkkkkkkkkkkkkkkkkkkkkkkk = z;
        }
        Wwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceCallback resourceCallback, Executor executor) {
        try {
            this.f4379Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceCallback, executor);
            if (this.f4362Wwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwww(1);
                executor.execute(new CallResourceReady(resourceCallback));
            } else if (this.f4360Wwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwww(1);
                executor.execute(new CallLoadFailed(resourceCallback));
            } else {
                Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(!this.f4357Kkkkkkkkkkkkkkkkkkkkkkkkkk, "Cannot add callbacks to a cancelled EngineJob");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    public EngineJob(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, EngineJobListener engineJobListener, EngineResource.ResourceListener resourceListener, Pools.Pool<EngineJob<?>> pool, EngineResourceFactory engineResourceFactory) {
        this.f4380Wwwwwwwwwwwwwwwwwwwwwwwww = new ResourceCallbacksAndExecutors();
        this.f4379Wwwwwwwwwwwwwwwwwwwwwwww = StateVerifier.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4370Wwwwwwwwwwwwwww = new AtomicInteger();
        this.f4374Wwwwwwwwwwwwwwwwwww = glideExecutor;
        this.f4373Wwwwwwwwwwwwwwwwww = glideExecutor2;
        this.f4372Wwwwwwwwwwwwwwwww = glideExecutor3;
        this.f4371Wwwwwwwwwwwwwwww = glideExecutor4;
        this.f4375Wwwwwwwwwwwwwwwwwwww = engineJobListener;
        this.f4378Wwwwwwwwwwwwwwwwwwwwwww = resourceListener;
        this.f4377Wwwwwwwwwwwwwwwwwwwwww = pool;
        this.f4376Wwwwwwwwwwwwwwwwwwwww = engineResourceFactory;
    }
}
