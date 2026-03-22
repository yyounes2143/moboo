package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class PreFillType {
    @VisibleForTesting

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config f4578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Bitmap.Config.RGB_565;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.Config f4580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PreFillType) {
            PreFillType preFillType = (PreFillType) obj;
            if (this.f4581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == preFillType.f4581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == preFillType.f4582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == preFillType.f4579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == preFillType.f4580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f4582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31) + this.f4581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f4580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f4579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        return "PreFillSize{width=" + this.f4582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", height=" + this.f4581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", config=" + this.f4580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", weight=" + this.f4579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
