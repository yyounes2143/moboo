package com.fluttercandies.image_editor.option;

import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0013\u001a\u0004\b\u0014\u0010\bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0013\u001a\u0004\b\u0015\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/fluttercandies/image_editor/option/FlipOption;", "Lcom/fluttercandies/image_editor/option/Option;", "", "horizontal", "vertical", "<init>", "(ZZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class FlipOption implements Option {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public FlipOption() {
        this(false, false, 3, null);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlipOption)) {
            return false;
        }
        FlipOption flipOption = (FlipOption) obj;
        if (this.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == flipOption.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == flipOption.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        return "FlipOption(horizontal=" + this.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", vertical=" + this.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    public FlipOption(boolean z, boolean z2) {
        this.f7297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f7296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
    }

    public /* synthetic */ FlipOption(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
    }
}
