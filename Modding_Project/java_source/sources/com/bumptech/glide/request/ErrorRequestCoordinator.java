package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ErrorRequestCoordinator implements RequestCoordinator, Request {
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestCoordinator.RequestState f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestCoordinator.RequestState f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Request f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Request f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestCoordinator f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ErrorRequestCoordinator(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
        this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
        this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestCoordinator;
    }

    public void Wwwwwwwwwwwwwwwwwwww(Request request, Request request2) {
        this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request2;
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        RequestCoordinator.RequestState requestState = this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.FAILED;
        if (requestState != requestState2) {
            return request.equals(this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (request.equals(this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            RequestCoordinator.RequestState requestState3 = this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (requestState3 == RequestCoordinator.RequestState.SUCCESS || requestState3 == requestState2) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        boolean z;
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwww() && request.equals(this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
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
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator.RequestState requestState = this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState2;
                    this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        if (request instanceof ErrorRequestCoordinator) {
            ErrorRequestCoordinator errorRequestCoordinator = (ErrorRequestCoordinator) request;
            if (this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(errorRequestCoordinator.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(errorRequestCoordinator.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator.RequestState requestState = this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
                if (requestState != requestState2 && this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != requestState2) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (request.equals(this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.SUCCESS;
                } else if (request.equals(this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.SUCCESS;
                }
                RequestCoordinator requestCoordinator = this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (requestCoordinator != null) {
                    requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator.RequestState requestState = this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
                if (requestState == requestState2 && this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == requestState2) {
                    z = true;
                } else {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (!request.equals(this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.FAILED;
                    RequestCoordinator.RequestState requestState = this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                    if (requestState != requestState2) {
                        this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState2;
                        this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    return;
                }
                this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
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
        boolean Wwwwwwwwwwwwwwwwwwwww2;
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        boolean z;
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwww(request)) {
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
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (!this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && !this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
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
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
                this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
                this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                if (this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != requestState) {
                    this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestState;
                    this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator requestCoordinator;
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator requestCoordinator2 = this.f5045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
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
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator.RequestState requestState = this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2 && this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != requestState2) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f5046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                RequestCoordinator.RequestState requestState = this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState == requestState2) {
                    this.f5042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.PAUSED;
                    this.f5044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.pause();
                }
                if (this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == requestState2) {
                    this.f5041Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestCoordinator.RequestState.PAUSED;
                    this.f5043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
