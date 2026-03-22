package com.changdu.mobovideo.googleengage.data;

import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/changdu/mobovideo/googleengage/data/TypeItemVO;", "Ljava/io/Serializable;", "typeIdStr", "", "typeName", RewardPlus.ICON, "href", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTypeIdStr", "()Ljava/lang/String;", "getTypeName", "getIcon", "getHref", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TypeItemVO implements Serializable {
    @SerializedName("href")
    @NotNull
    private final String href;
    @SerializedName(RewardPlus.ICON)
    @NotNull
    private final String icon;
    @SerializedName("typeIdStr")
    @NotNull
    private final String typeIdStr;
    @SerializedName("typeName")
    @NotNull
    private final String typeName;

    public TypeItemVO() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ TypeItemVO copy$default(TypeItemVO typeItemVO, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = typeItemVO.typeIdStr;
        }
        if ((i & 2) != 0) {
            str2 = typeItemVO.typeName;
        }
        if ((i & 4) != 0) {
            str3 = typeItemVO.icon;
        }
        if ((i & 8) != 0) {
            str4 = typeItemVO.href;
        }
        return typeItemVO.copy(str, str2, str3, str4);
    }

    @NotNull
    public final String component1() {
        return this.typeIdStr;
    }

    @NotNull
    public final String component2() {
        return this.typeName;
    }

    @NotNull
    public final String component3() {
        return this.icon;
    }

    @NotNull
    public final String component4() {
        return this.href;
    }

    @NotNull
    public final TypeItemVO copy(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        return new TypeItemVO(str, str2, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeItemVO)) {
            return false;
        }
        TypeItemVO typeItemVO = (TypeItemVO) obj;
        if (Intrinsics.areEqual(this.typeIdStr, typeItemVO.typeIdStr) && Intrinsics.areEqual(this.typeName, typeItemVO.typeName) && Intrinsics.areEqual(this.icon, typeItemVO.icon) && Intrinsics.areEqual(this.href, typeItemVO.href)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getHref() {
        return this.href;
    }

    @NotNull
    public final String getIcon() {
        return this.icon;
    }

    @NotNull
    public final String getTypeIdStr() {
        return this.typeIdStr;
    }

    @NotNull
    public final String getTypeName() {
        return this.typeName;
    }

    public int hashCode() {
        return (((((this.typeIdStr.hashCode() * 31) + this.typeName.hashCode()) * 31) + this.icon.hashCode()) * 31) + this.href.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.typeIdStr;
        String str2 = this.typeName;
        String str3 = this.icon;
        String str4 = this.href;
        return "TypeItemVO(typeIdStr=" + str + ", typeName=" + str2 + ", icon=" + str3 + ", href=" + str4 + ")";
    }

    public TypeItemVO(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        this.typeIdStr = str;
        this.typeName = str2;
        this.icon = str3;
        this.href = str4;
    }

    public /* synthetic */ TypeItemVO(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
    }
}
