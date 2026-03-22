package com.changdu.mobovideo.entity;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerialName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000b\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\tJ \u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000HÆ\u0001¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R \u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\n\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/changdu/mobovideo/entity/CDResponse;", "T", "Ljava/io/Serializable;", "data", "<init>", "(Ljava/lang/Object;)V", "getData$annotations", "()V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/changdu/mobovideo/entity/CDResponse;", "equals", "", "other", "", "hashCode", "", "toString", "", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDResponse<T> implements Serializable {
    @Nullable
    private final T data;

    public CDResponse() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CDResponse copy$default(CDResponse cDResponse, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = cDResponse.data;
        }
        return cDResponse.copy(obj);
    }

    @Nullable
    public final T component1() {
        return this.data;
    }

    @NotNull
    public final CDResponse<T> copy(@Nullable T t) {
        return new CDResponse<>(t);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CDResponse) && Intrinsics.areEqual(this.data, ((CDResponse) obj).data)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final T getData() {
        return this.data;
    }

    public int hashCode() {
        T t = this.data;
        if (t == null) {
            return 0;
        }
        return t.hashCode();
    }

    @NotNull
    public String toString() {
        T t = this.data;
        return "CDResponse(data=" + t + ")";
    }

    public CDResponse(@Nullable T t) {
        this.data = t;
    }

    public /* synthetic */ CDResponse(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : obj);
    }

    @SerialName("data")
    public static /* synthetic */ void getData$annotations() {
    }
}
