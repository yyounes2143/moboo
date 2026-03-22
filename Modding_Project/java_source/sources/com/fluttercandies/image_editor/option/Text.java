package com.fluttercandies.image_editor.option;

import android.graphics.Paint;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u0014R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001d\u001a\u0004\b \u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b!\u0010\u001d\u001a\u0004\b!\u0010\u0014R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b#\u0010\u001d\u001a\u0004\b\"\u0010\u0014R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001d\u001a\u0004\b\u001c\u0010\u0014R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b$\u0010\u001d\u001a\u0004\b\u0019\u0010\u0014R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u0012R\u0017\u0010\u000e\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b \u0010%\u001a\u0004\b$\u0010&¨\u0006'"}, d2 = {"Lcom/fluttercandies/image_editor/option/Text;", "", "", "text", "", "x", "y", "fontSizePx", "r", "g", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "a", "fontName", "Landroid/graphics/Paint$Align;", "textAlign", "<init>", "(Ljava/lang/String;IIIIIIILjava/lang/String;Landroid/graphics/Paint$Align;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Paint$Align;", "()Landroid/graphics/Paint$Align;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Text {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Paint.Align f7321Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7322Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Text(@NotNull String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, @NotNull String str2, @NotNull Paint.Align align) {
        this.f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
        this.f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i5;
        this.f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww = i6;
        this.f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww = i7;
        this.f7322Wwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f7321Wwwwwwwwwwwwwwwwwwwwwwwww = align;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Paint.Align Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7321Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7322Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Text)) {
            return false;
        }
        Text text = (Text) obj;
        if (Intrinsics.areEqual(this.f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, text.f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww == text.f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f7322Wwwwwwwwwwwwwwwwwwwwwwwwww, text.f7322Wwwwwwwwwwwwwwwwwwwwwwwwww) && this.f7321Wwwwwwwwwwwwwwwwwwwwwwwww == text.f7321Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((this.f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7322Wwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f7321Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return "Text(text=" + this.f7330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", x=" + this.f7329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", y=" + this.f7328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", fontSizePx=" + this.f7327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", r=" + this.f7326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", g=" + this.f7325Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", b=" + this.f7324Wwwwwwwwwwwwwwwwwwwwwwwwwwww + ", a=" + this.f7323Wwwwwwwwwwwwwwwwwwwwwwwwwww + ", fontName=" + this.f7322Wwwwwwwwwwwwwwwwwwwwwwwwww + ", textAlign=" + this.f7321Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
