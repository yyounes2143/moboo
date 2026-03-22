package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017B\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/facebook/share/model/ShareHashtag;", "Lcom/facebook/share/model/ShareModel;", "Lcom/facebook/share/model/ShareHashtag$Builder;", "builder", "<init>", "(Lcom/facebook/share/model/ShareHashtag$Builder;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "hashtag", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ShareHashtag implements ShareModel {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7200Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new Parcelable.Creator<ShareHashtag>() { // from class: com.facebook.share.model.ShareHashtag$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareHashtag createFromParcel(@NotNull Parcel parcel) {
            return new ShareHashtag(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0010\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/share/model/ShareHashtag$Builder;", "Lcom/facebook/share/model/ShareModelBuilder;", "Lcom/facebook/share/model/ShareHashtag;", "<init>", "()V", "", "hashtag", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;", "model", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;", "Landroid/os/Parcel;", "parcel", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareHashtag$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareHashtag;", "<set-?>", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder implements ShareModelBuilder<ShareHashtag, Builder> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f7201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Parcel parcel) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareHashtag shareHashtag) {
            if (shareHashtag == null) {
                return this;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareHashtag.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public ShareHashtag Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new ShareHashtag(this, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/ShareHashtag$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/ShareHashtag;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ ShareHashtag(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7200Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeString(this.f7200Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public ShareHashtag(Builder builder) {
        this.f7200Wwwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public ShareHashtag(@NotNull Parcel parcel) {
        this.f7200Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
    }
}
