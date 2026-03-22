package com.facebook.internal.gatekeeper;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\tR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/facebook/internal/gatekeeper/GateKeeper;", "", "", "name", "", "value", "<init>", "(Ljava/lang/String;Z)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GateKeeper {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GateKeeper(@NotNull String str, boolean z) {
        this.f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GateKeeper)) {
            return false;
        }
        GateKeeper gateKeeper = (GateKeeper) obj;
        if (Intrinsics.areEqual(this.f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, gateKeeper.f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == gateKeeper.f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
        boolean z = this.f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "GateKeeper(name=" + this.f6884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", value=" + this.f6883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
