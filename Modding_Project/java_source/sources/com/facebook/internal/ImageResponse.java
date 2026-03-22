package com.facebook.internal;

import android.graphics.Bitmap;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B3\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001f\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0017\u001a\u0004\b\r\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/facebook/internal/ImageResponse;", "", "Lcom/facebook/internal/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "", "isCachedRedirect", "Landroid/graphics/Bitmap;", "bitmap", "<init>", "(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Exception;", "()Ljava/lang/Exception;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Landroid/graphics/Bitmap;", "()Landroid/graphics/Bitmap;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageResponse {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap f6752Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6753Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Exception f6754Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageRequest f6755Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ImageResponse(@NotNull ImageRequest imageRequest, @Nullable Exception exc, boolean z, @Nullable Bitmap bitmap) {
        this.f6755Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        this.f6754Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exc;
        this.f6753Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f6752Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6753Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6755Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Exception Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6754Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6752Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
