package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GifFrameLoader {

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4887Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4888Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4889Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OnEveryFrameListener f4890Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DelayTarget f4891Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Transformation<Bitmap> f4892Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap f4893Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DelayTarget f4894Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4895Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DelayTarget f4896Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestBuilder<Bitmap> f4897Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4898Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4899Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4900Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManager f4902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<FrameCallback> f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f4904Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GifDecoder f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class DelayTarget extends CustomTarget<Bitmap> {

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bitmap f4906Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f4907Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f4908Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Handler f4909Wwwwwwwwwwwwwwwwwwwwww;

        public DelayTarget(Handler handler, int i, long j) {
            this.f4909Wwwwwwwwwwwwwwwwwwwwww = handler;
            this.f4908Wwwwwwwwwwwwwwwwwwwww = i;
            this.f4907Wwwwwwwwwwwwwwwwwwww = j;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
            this.f4906Wwwwwwwwwwwwwwwwwww = null;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            this.f4906Wwwwwwwwwwwwwwwwwww = bitmap;
            this.f4909Wwwwwwwwwwwwwwwwwwwwww.sendMessageAtTime(this.f4909Wwwwwwwwwwwwwwwwwwwwww.obtainMessage(1, this), this.f4907Wwwwwwwwwwwwwwwwwwww);
        }

        public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4906Wwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface FrameCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class FrameLoaderCallback implements Handler.Callback {
        public FrameLoaderCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                GifFrameLoader.this.Wwwwwwwwwwwwwwwwwwwwww((DelayTarget) message.obj);
                return true;
            } else if (i == 2) {
                GifFrameLoader.this.f4902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww((DelayTarget) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface OnEveryFrameListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public GifFrameLoader(Glide glide, GifDecoder gifDecoder, int i, int i2, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this(glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), Glide.Wwwwwwwwwwwwww(glide.Wwwwwwwwwwwwwwwwwwwwwwwwww()), gifDecoder, null, Wwwwwwwwwwwwwwwwwwwwwwwwww(Glide.Wwwwwwwwwwwwww(glide.Wwwwwwwwwwwwwwwwwwwwwwwwww()), i, i2), transformation, bitmap);
    }

    public static RequestBuilder<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwww(RequestManager requestManager, int i, int i2) {
        return requestManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestOptions.Kkkkkk(DiskCacheStrategy.f4327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Kkkkkkkk(true).Kkkkkkkkkkkkk(true).Kkkkkkkkkkkkkkkkkkkkk(i, i2));
    }

    public static Key Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new ObjectKey(Double.valueOf(Math.random()));
    }

    public void Wwwwwwwwwwwwwwww(FrameCallback frameCallback) {
        this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(frameCallback);
        if (this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            Wwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwww(FrameCallback frameCallback) {
        if (!this.f4895Wwwwwwwwwwwwwwwwwwwwwwww) {
            if (!this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(frameCallback)) {
                boolean isEmpty = this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty();
                this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(frameCallback);
                if (isEmpty) {
                    Wwwwwwwwwwwwwwwwwww();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    public final void Wwwwwwwwwwwwwwwwww() {
        this.f4900Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
    }

    public final void Wwwwwwwwwwwwwwwwwww() {
        if (this.f4900Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f4900Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        this.f4895Wwwwwwwwwwwwwwwwwwwwwwww = false;
        Wwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwww(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f4892Wwwwwwwwwwwwwwwwwwwww = (Transformation) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transformation);
        this.f4893Wwwwwwwwwwwwwwwwwwwwww = (Bitmap) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
        this.f4897Wwwwwwwwwwwwwwwwwwwwwwwwww = this.f4897Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new RequestOptions().Kkkkkkkkkkk(transformation));
        this.f4889Wwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
        this.f4888Wwwwwwwwwwwwwwwww = bitmap.getWidth();
        this.f4887Wwwwwwwwwwwwwwww = bitmap.getHeight();
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        Bitmap bitmap = this.f4893Wwwwwwwwwwwwwwwwwwwwww;
        if (bitmap != null) {
            this.f4901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
            this.f4893Wwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    @VisibleForTesting
    public void Wwwwwwwwwwwwwwwwwwwwww(DelayTarget delayTarget) {
        OnEveryFrameListener onEveryFrameListener = this.f4890Wwwwwwwwwwwwwwwwwww;
        if (onEveryFrameListener != null) {
            onEveryFrameListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f4899Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        if (this.f4895Wwwwwwwwwwwwwwwwwwwwwwww) {
            this.f4904Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.obtainMessage(2, delayTarget).sendToTarget();
        } else if (!this.f4900Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f4898Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f4904Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.obtainMessage(2, delayTarget).sendToTarget();
            } else {
                this.f4891Wwwwwwwwwwwwwwwwwwww = delayTarget;
            }
        } else {
            if (delayTarget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                Wwwwwwwwwwwwwwwwwwwww();
                DelayTarget delayTarget2 = this.f4896Wwwwwwwwwwwwwwwwwwwwwwwww;
                this.f4896Wwwwwwwwwwwwwwwwwwwwwwwww = delayTarget;
                for (int size = this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - 1; size >= 0; size--) {
                    this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (delayTarget2 != null) {
                    this.f4904Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.obtainMessage(2, delayTarget2).sendToTarget();
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        if (this.f4900Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f4899Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f4898Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (this.f4891Wwwwwwwwwwwwwwwwwwww == null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, "Pending target must be null when starting from the first frame");
                this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f4898Wwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            }
            DelayTarget delayTarget = this.f4891Wwwwwwwwwwwwwwwwwwww;
            if (delayTarget != null) {
                this.f4891Wwwwwwwwwwwwwwwwwwww = null;
                Wwwwwwwwwwwwwwwwwwwwww(delayTarget);
                return;
            }
            this.f4899Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            long uptimeMillis = SystemClock.uptimeMillis() + this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4894Wwwwwwwwwwwwwwwwwwwwwww = new DelayTarget(this.f4904Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), uptimeMillis);
            this.f4897Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestOptions.Kkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwww())).Illllllllllllllllllll(this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Illlllllllllllllllllllllll(this.f4894Wwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4888Wwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + this.f4889Wwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4887Wwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4893Wwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DelayTarget delayTarget = this.f4896Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (delayTarget != null) {
            return delayTarget.f4908Wwwwwwwwwwwwwwwwwwwww;
        }
        return -1;
    }

    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        DelayTarget delayTarget = this.f4896Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (delayTarget != null) {
            return delayTarget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return this.f4893Wwwwwwwwwwwwwwwwwwwwww;
    }

    public ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getData().asReadOnlyBuffer();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        Wwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwww();
        DelayTarget delayTarget = this.f4896Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (delayTarget != null) {
            this.f4902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(delayTarget);
            this.f4896Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        DelayTarget delayTarget2 = this.f4894Wwwwwwwwwwwwwwwwwwwwwww;
        if (delayTarget2 != null) {
            this.f4902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(delayTarget2);
            this.f4894Wwwwwwwwwwwwwwwwwwwwwww = null;
        }
        DelayTarget delayTarget3 = this.f4891Wwwwwwwwwwwwwwwwwwww;
        if (delayTarget3 != null) {
            this.f4902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(delayTarget3);
            this.f4891Wwwwwwwwwwwwwwwwwwww = null;
        }
        this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f4895Wwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public GifFrameLoader(BitmapPool bitmapPool, RequestManager requestManager, GifDecoder gifDecoder, Handler handler, RequestBuilder<Bitmap> requestBuilder, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f4903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f4902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestManager;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new FrameLoaderCallback()) : handler;
        this.f4901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmapPool;
        this.f4904Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = handler;
        this.f4897Wwwwwwwwwwwwwwwwwwwwwwwwww = requestBuilder;
        this.f4905Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gifDecoder;
        Wwwwwwwwwwwwwwwwwwww(transformation, bitmap);
    }
}
