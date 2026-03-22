package defpackage;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014¨\u0006\u0016"}, d2 = {"LToggleMessage;", "", "", "enable", "<init>", "(Ljava/lang/Boolean;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", "Companion", "wakelock_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* renamed from: ToggleMessage  reason: default package */
/* loaded from: classes.dex */
public final class ToggleMessage {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Boolean f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LToggleMessage$Companion;", "", "<init>", "()V", "", "list", "LToggleMessage;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)LToggleMessage;", "wakelock_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: ToggleMessage$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ToggleMessage Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Object> list) {
            return new ToggleMessage((Boolean) list.get(0));
        }

        public Companion() {
        }
    }

    public ToggleMessage() {
        this(null, 1, null);
    }

    @NotNull
    public final List<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return CollectionsKt.listOf(this.f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Nullable
    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ToggleMessage) && Intrinsics.areEqual(this.f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ((ToggleMessage) obj).f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        Boolean bool = this.f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    @NotNull
    public String toString() {
        Boolean bool = this.f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return "ToggleMessage(enable=" + bool + ")";
    }

    public ToggleMessage(@Nullable Boolean bool) {
        this.f52Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bool;
    }

    public /* synthetic */ ToggleMessage(Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool);
    }
}
