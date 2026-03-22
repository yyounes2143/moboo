package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.WorkQueue;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u00046789B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J9\u0010\u001f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u000e\u0010\u001b\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b&\u0010'R\u001e\u0010-\u001a\u0004\u0018\u00010(8B@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0014\u00100\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00102\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010/R \u00105\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020%038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u00104¨\u0006:"}, d2 = {"Lcom/facebook/internal/ImageDownloader;", "", "<init>", "()V", "Lcom/facebook/internal/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageRequest;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageRequest;)Z", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "key", "allowCachedRedirects", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V", "Lcom/facebook/internal/WorkQueue;", "workQueue", "Ljava/lang/Runnable;", "workItem", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Landroid/graphics/Bitmap;", "bitmap", "isCachedRedirect", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageDownloader$RequestKey;)V", "Lcom/facebook/internal/ImageDownloader$DownloaderContext;", "Wwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/Handler;", "handler", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WorkQueue;", "downloadQueue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "cacheReadQueue", "", "Ljava/util/Map;", "pendingRequests", "CacheReadWorkItem", "DownloadImageWorkItem", "DownloaderContext", "RequestKey", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageDownloader {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f6733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final ImageDownloader INSTANCE = new ImageDownloader();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final WorkQueue f6732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WorkQueue(8, null, 2, null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final WorkQueue f6731Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WorkQueue(2, null, 2, null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<RequestKey, DownloaderContext> f6730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;", "Ljava/lang/Runnable;", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "key", "", "allowCachedRedirects", "<init>", "(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V", "", "run", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CacheReadWorkItem implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f6734Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RequestKey f6735Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CacheReadWorkItem(@NotNull RequestKey requestKey, boolean z) {
            this.f6735Wwwwwwwwwwwwwwwwwwwwwwwww = requestKey;
            this.f6734Wwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    ImageDownloader.INSTANCE.Wwwwwwwwwwwwwwwwwwwwww(this.f6735Wwwwwwwwwwwwwwwwwwwwwwwww, this.f6734Wwwwwwwwwwwwwwwwwwwwwwww);
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;", "Ljava/lang/Runnable;", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "key", "<init>", "(Lcom/facebook/internal/ImageDownloader$RequestKey;)V", "", "run", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DownloadImageWorkItem implements Runnable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RequestKey f6736Wwwwwwwwwwwwwwwwwwwwwwwww;

        public DownloadImageWorkItem(@NotNull RequestKey requestKey) {
            this.f6736Wwwwwwwwwwwwwwwwwwwwwwwww = requestKey;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    ImageDownloader.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6736Wwwwwwwwwwwwwwwwwwwwwwwww);
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\u0005R$\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/ImageDownloader$DownloaderContext;", "", "Lcom/facebook/internal/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "<init>", "(Lcom/facebook/internal/ImageRequest;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/ImageRequest;", "()Lcom/facebook/internal/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WorkQueue$WorkItem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WorkQueue$WorkItem;", "()Lcom/facebook/internal/WorkQueue$WorkItem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/WorkQueue$WorkItem;)V", "workItem", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "isCancelled", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes4.dex */
    public static final class DownloaderContext {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6737Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WorkQueue.WorkItem f6738Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ImageRequest f6739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DownloaderContext(@NotNull ImageRequest imageRequest) {
            this.f6739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable WorkQueue.WorkItem workItem) {
            this.f6738Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workItem;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
            this.f6739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f6737Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6737Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final WorkQueue.WorkItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6738Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0004\u001a\u00020\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0014\u001a\u0004\b\u000e\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/facebook/internal/ImageDownloader$RequestKey;", "", "Landroid/net/Uri;", "uri", "tag", "<init>", "(Landroid/net/Uri;Ljava/lang/Object;)V", "", "hashCode", "()I", "o", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "Ljava/lang/Object;", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes4.dex */
    public static final class RequestKey {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f6740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f6741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/ImageDownloader$RequestKey$Companion;", "", "()V", "HASH_MULTIPLIER", "", "HASH_SEED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public RequestKey(@NotNull Uri uri, @NotNull Object obj) {
            this.f6741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            this.f6740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        @NotNull
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj != null && (obj instanceof RequestKey)) {
                RequestKey requestKey = (RequestKey) obj;
                if (requestKey.f6741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == this.f6741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && requestKey.f6740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == this.f6740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((1073 + this.f6741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 37) + this.f6740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, Exception exc, boolean z, Bitmap bitmap, ImageRequest.Callback callback) {
        callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ImageResponse(imageRequest, exc, z, bitmap));
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ImageRequest imageRequest) {
        if (imageRequest == null) {
            return;
        }
        RequestKey requestKey = new RequestKey(imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Map<RequestKey, DownloaderContext> map = f6730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (map) {
            try {
                DownloaderContext downloaderContext = map.get(requestKey);
                if (downloaderContext != null) {
                    downloaderContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest);
                    downloaderContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
                    WorkQueue.WorkItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = downloaderContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Unit unit = Unit.INSTANCE;
                    }
                } else {
                    INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, requestKey, imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    Unit unit2 = Unit.INSTANCE;
                }
            } finally {
            }
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
        boolean z;
        RequestKey requestKey = new RequestKey(imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Map<RequestKey, DownloaderContext> map = f6730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (map) {
            try {
                DownloaderContext downloaderContext = map.get(requestKey);
                if (downloaderContext != null) {
                    WorkQueue.WorkItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = downloaderContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    z = true;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.cancel()) {
                        map.remove(requestKey);
                    } else {
                        downloaderContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
                    }
                } else {
                    z = false;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public final DownloaderContext Wwwwwwwwwwwwwwwwwwwww(RequestKey requestKey) {
        DownloaderContext remove;
        Map<RequestKey, DownloaderContext> map = f6730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (map) {
            remove = map.remove(requestKey);
        }
        return remove;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwww(com.facebook.internal.ImageDownloader.RequestKey r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            r1 = 0
            if (r5 == 0) goto L18
            com.facebook.internal.UrlRedirectCache r5 = com.facebook.internal.UrlRedirectCache.INSTANCE
            android.net.Uri r5 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            android.net.Uri r5 = com.facebook.internal.UrlRedirectCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
            if (r5 == 0) goto L18
            java.io.InputStream r5 = com.facebook.internal.ImageResponseCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
            if (r5 == 0) goto L19
            r1 = 1
            goto L19
        L18:
            r5 = r0
        L19:
            if (r1 != 0) goto L25
            com.facebook.internal.ImageResponseCache r5 = com.facebook.internal.ImageResponseCache.INSTANCE
            android.net.Uri r5 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            java.io.InputStream r5 = com.facebook.internal.ImageResponseCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
        L25:
            if (r5 == 0) goto L32
            android.graphics.Bitmap r2 = android.graphics.BitmapFactory.decodeStream(r5)
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r5)
            r3.Wwwwwwwwwwwwwwwwwwwwwwww(r4, r0, r2, r1)
            return
        L32:
            com.facebook.internal.ImageDownloader$DownloaderContext r5 = r3.Wwwwwwwwwwwwwwwwwwwww(r4)
            if (r5 != 0) goto L39
            goto L3d
        L39:
            com.facebook.internal.ImageRequest r0 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
        L3d:
            if (r5 == 0) goto L4a
            boolean r5 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            if (r5 != 0) goto L4a
            if (r0 == 0) goto L4a
            r3.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r4)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ImageDownloader.Wwwwwwwwwwwwwwwwwwwwww(com.facebook.internal.ImageDownloader$RequestKey, boolean):void");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(RequestKey requestKey, final Exception exc, final Bitmap bitmap, final boolean z) {
        ImageRequest.Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Handler Wwwwwwwwwwwwwwwwwwwwwwwww2;
        DownloaderContext Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(requestKey);
        if (Wwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            final ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            final ImageRequest.Callback callback = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (callback != null && (Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwww2.post(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageDownloader.Wwwwwwwwwwwwwwwwwwwwwww(ImageRequest.this, exc, z, bitmap, callback);
                    }
                });
            }
        }
    }

    public final synchronized Handler Wwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            if (f6733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                f6733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f6733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, RequestKey requestKey, WorkQueue workQueue, Runnable runnable) {
        Map<RequestKey, DownloaderContext> map = f6730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (map) {
            DownloaderContext downloaderContext = new DownloaderContext(imageRequest);
            map.put(requestKey, downloaderContext);
            downloaderContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(workQueue, runnable, false, 2, null));
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, RequestKey requestKey) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, requestKey, f6732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new DownloadImageWorkItem(requestKey));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, RequestKey requestKey, boolean z) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, requestKey, f6731Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new CacheReadWorkItem(requestKey, z));
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v6, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.internal.ImageDownloader.RequestKey r11) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ImageDownloader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.internal.ImageDownloader$RequestKey):void");
    }
}
