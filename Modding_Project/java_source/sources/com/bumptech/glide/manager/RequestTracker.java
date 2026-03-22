package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RequestTracker {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Request> f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Request> f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Request request) {
        this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(request);
        if (!this.f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            request.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            return;
        }
        request.clear();
        this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(request);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        for (Request request : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            if (!request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && !request.isRunning()) {
                request.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
        this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (Request request : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            if (!request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && !request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                request.clear();
                if (!this.f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    request.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(request);
                }
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        for (Request request : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            if (request.isRunning()) {
                request.pause();
                this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(request);
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        for (Request request : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            if (request.isRunning() || request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                request.clear();
                this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(request);
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (Request request : Util.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request);
        }
        this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
        boolean z = true;
        if (request == null) {
            return true;
        }
        boolean remove = this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(request);
        if (!this.f4960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(request) && !remove) {
            z = false;
        }
        if (z) {
            request.clear();
        }
        return z;
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f4961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() + ", isPaused=" + this.f4959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "}";
    }
}
