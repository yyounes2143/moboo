package com.fluttercandies.image_editor.core;

import android.graphics.Bitmap;
import com.fluttercandies.image_editor.option.FlipOption;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0016\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/fluttercandies/image_editor/core/BitmapWrapper;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "degree", "Lcom/fluttercandies/image_editor/option/FlipOption;", "flipOption", "<init>", "(Landroid/graphics/Bitmap;ILcom/fluttercandies/image_editor/option/FlipOption;)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "()Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/image_editor/option/FlipOption;", "()Lcom/fluttercandies/image_editor/option/FlipOption;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class BitmapWrapper {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FlipOption f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BitmapWrapper(@NotNull Bitmap bitmap, int i, @NotNull FlipOption flipOption) {
        this.f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
        this.f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = flipOption;
    }

    @NotNull
    public final FlipOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapWrapper)) {
            return false;
        }
        BitmapWrapper bitmapWrapper = (BitmapWrapper) obj;
        if (Intrinsics.areEqual(this.f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, bitmapWrapper.f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == bitmapWrapper.f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, bitmapWrapper.f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return "BitmapWrapper(bitmap=" + this.f7284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", degree=" + this.f7283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", flipOption=" + this.f7282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
