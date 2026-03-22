package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class ResourceRecycler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f4437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper(), new ResourceRecyclerCallback());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ResourceRecyclerCallback implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((Resource) message.obj).recycle();
                return true;
            }
            return false;
        }
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<?> resource, boolean z) {
        try {
            if (!this.f4438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !z) {
                this.f4438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                resource.recycle();
                this.f4438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            }
            this.f4437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.obtainMessage(1, resource).sendToTarget();
        } catch (Throwable th) {
            throw th;
        }
    }
}
