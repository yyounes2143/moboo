package com.changdu.mobovideo.entity;

import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bHÆ\u0003J\t\u0010\u001b\u001a\u00020\nHÆ\u0003J\t\u0010\u001c\u001a\u00020\nHÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J_\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\nHÆ\u0001J\u0013\u0010 \u001a\u00020\u00032\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\nHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0010R&\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0016\u0010\f\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0016\u0010\r\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014¨\u0006&"}, d2 = {"Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;", "Ljava/io/Serializable;", "isSignIn", "", "isClaimed", "seriesList", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;", "Lkotlin/collections/ArrayList;", "noContentText", "", "signInText", "claimText", "claimedText", "<init>", "(ZZLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "()Z", "getSeriesList", "()Ljava/util/ArrayList;", "getNoContentText", "()Ljava/lang/String;", "getSignInText", "getClaimText", "getClaimedText", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FollowHomeWidgetEntity implements Serializable {
    @SerializedName("claimText")
    @NotNull
    private final String claimText;
    @SerializedName("claimedText")
    @NotNull
    private final String claimedText;
    @SerializedName("isClaimed")
    private final boolean isClaimed;
    @SerializedName("isSignIn")
    private final boolean isSignIn;
    @SerializedName("noContentText")
    @NotNull
    private final String noContentText;
    @SerializedName("seriesList")
    @NotNull
    private final ArrayList<SeriesHomeWidgetEntity> seriesList;
    @SerializedName("signInText")
    @NotNull
    private final String signInText;

    public FollowHomeWidgetEntity() {
        this(false, false, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ FollowHomeWidgetEntity copy$default(FollowHomeWidgetEntity followHomeWidgetEntity, boolean z, boolean z2, ArrayList arrayList, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = followHomeWidgetEntity.isSignIn;
        }
        if ((i & 2) != 0) {
            z2 = followHomeWidgetEntity.isClaimed;
        }
        ArrayList<SeriesHomeWidgetEntity> arrayList2 = arrayList;
        if ((i & 4) != 0) {
            arrayList2 = followHomeWidgetEntity.seriesList;
        }
        if ((i & 8) != 0) {
            str = followHomeWidgetEntity.noContentText;
        }
        if ((i & 16) != 0) {
            str2 = followHomeWidgetEntity.signInText;
        }
        if ((i & 32) != 0) {
            str3 = followHomeWidgetEntity.claimText;
        }
        if ((i & 64) != 0) {
            str4 = followHomeWidgetEntity.claimedText;
        }
        String str5 = str3;
        String str6 = str4;
        String str7 = str2;
        ArrayList arrayList3 = arrayList2;
        return followHomeWidgetEntity.copy(z, z2, arrayList3, str, str7, str5, str6);
    }

    public final boolean component1() {
        return this.isSignIn;
    }

    public final boolean component2() {
        return this.isClaimed;
    }

    @NotNull
    public final ArrayList<SeriesHomeWidgetEntity> component3() {
        return this.seriesList;
    }

    @NotNull
    public final String component4() {
        return this.noContentText;
    }

    @NotNull
    public final String component5() {
        return this.signInText;
    }

    @NotNull
    public final String component6() {
        return this.claimText;
    }

    @NotNull
    public final String component7() {
        return this.claimedText;
    }

    @NotNull
    public final FollowHomeWidgetEntity copy(boolean z, boolean z2, @NotNull ArrayList<SeriesHomeWidgetEntity> arrayList, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        return new FollowHomeWidgetEntity(z, z2, arrayList, str, str2, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FollowHomeWidgetEntity)) {
            return false;
        }
        FollowHomeWidgetEntity followHomeWidgetEntity = (FollowHomeWidgetEntity) obj;
        if (this.isSignIn == followHomeWidgetEntity.isSignIn && this.isClaimed == followHomeWidgetEntity.isClaimed && Intrinsics.areEqual(this.seriesList, followHomeWidgetEntity.seriesList) && Intrinsics.areEqual(this.noContentText, followHomeWidgetEntity.noContentText) && Intrinsics.areEqual(this.signInText, followHomeWidgetEntity.signInText) && Intrinsics.areEqual(this.claimText, followHomeWidgetEntity.claimText) && Intrinsics.areEqual(this.claimedText, followHomeWidgetEntity.claimedText)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getClaimText() {
        return this.claimText;
    }

    @NotNull
    public final String getClaimedText() {
        return this.claimedText;
    }

    @NotNull
    public final String getNoContentText() {
        return this.noContentText;
    }

    @NotNull
    public final ArrayList<SeriesHomeWidgetEntity> getSeriesList() {
        return this.seriesList;
    }

    @NotNull
    public final String getSignInText() {
        return this.signInText;
    }

    public int hashCode() {
        return (((((((((((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.isSignIn) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.isClaimed)) * 31) + this.seriesList.hashCode()) * 31) + this.noContentText.hashCode()) * 31) + this.signInText.hashCode()) * 31) + this.claimText.hashCode()) * 31) + this.claimedText.hashCode();
    }

    public final boolean isClaimed() {
        return this.isClaimed;
    }

    public final boolean isSignIn() {
        return this.isSignIn;
    }

    @NotNull
    public String toString() {
        boolean z = this.isSignIn;
        boolean z2 = this.isClaimed;
        ArrayList<SeriesHomeWidgetEntity> arrayList = this.seriesList;
        String str = this.noContentText;
        String str2 = this.signInText;
        String str3 = this.claimText;
        String str4 = this.claimedText;
        return "FollowHomeWidgetEntity(isSignIn=" + z + ", isClaimed=" + z2 + ", seriesList=" + arrayList + ", noContentText=" + str + ", signInText=" + str2 + ", claimText=" + str3 + ", claimedText=" + str4 + ")";
    }

    public FollowHomeWidgetEntity(boolean z, boolean z2, @NotNull ArrayList<SeriesHomeWidgetEntity> arrayList, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        this.isSignIn = z;
        this.isClaimed = z2;
        this.seriesList = arrayList;
        this.noContentText = str;
        this.signInText = str2;
        this.claimText = str3;
        this.claimedText = str4;
    }

    public /* synthetic */ FollowHomeWidgetEntity(boolean z, boolean z2, ArrayList arrayList, String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? new ArrayList() : arrayList, (i & 8) != 0 ? "" : str, (i & 16) != 0 ? "" : str2, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? "" : str4);
    }
}
