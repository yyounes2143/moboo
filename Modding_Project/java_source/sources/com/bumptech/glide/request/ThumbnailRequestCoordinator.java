package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ThumbnailRequestCoordinator implements RequestCoordinator, Request {
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5089Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestCoordinator.RequestState f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestCoordinator.RequestState f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Request f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Request f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestCoordinator f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ThumbnailRequestCoordinator(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
        this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
        this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestCoordinator;
    }

    @GuardedBy("requestLock")
    private boolean Wwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    private boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    private boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    public void Wwwwwwwwwwwwwwwwwwwww(Request request, Request request2) {
        this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request2;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwwww() && request.equals(this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != RequestCoordinator.RequestState.PAUSED) {
                    z = true;
                } else {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                this.f5089Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                if (this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != RequestCoordinator.RequestState.SUCCESS) {
                    RequestCoordinator.RequestState requestState = this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                    if (requestState != requestState2) {
                        this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState2;
                        this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
                if (this.f5089Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    RequestCoordinator.RequestState requestState3 = this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                    if (requestState3 != requestState4) {
                        this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState4;
                        this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
                this.f5089Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        if (request instanceof ThumbnailRequestCoordinator) {
            ThumbnailRequestCoordinator thumbnailRequestCoordinator = (ThumbnailRequestCoordinator) request;
            if (this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null ? this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(thumbnailRequestCoordinator.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) : thumbnailRequestCoordinator.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                if (this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    if (thumbnailRequestCoordinator.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        return true;
                    }
                } else if (this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(thumbnailRequestCoordinator.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == RequestCoordinator.RequestState.SUCCESS) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (request.equals(this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.SUCCESS;
                    return;
                }
                this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.SUCCESS;
                RequestCoordinator requestCoordinator = this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (requestCoordinator != null) {
                    requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
                if (!this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isComplete()) {
                    this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == RequestCoordinator.RequestState.CLEARED) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (!request.equals(this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.FAILED;
                    return;
                }
                this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (requestCoordinator != null) {
                    requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                z = (!Wwwwwwwwwwwwwwwwwwwwww() || (!request.equals(this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == RequestCoordinator.RequestState.SUCCESS)) ? false : false;
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwww() && request.equals(this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    z = true;
                } else {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (!this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && !this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f5089Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
            this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
            this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator requestCoordinator;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator requestCoordinator2 = this.f5095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (requestCoordinator2 != null) {
                    requestCoordinator = requestCoordinator2.getRoot();
                } else {
                    requestCoordinator = this;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return requestCoordinator;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == RequestCoordinator.RequestState.RUNNING) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f5094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (!this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isComplete()) {
                    this.f5090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.PAUSED;
                    this.f5092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.pause();
                }
                if (!this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isComplete()) {
                    this.f5091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.PAUSED;
                    this.f5093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
