package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u0018B\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/facebook/share/model/SharePhotoContent;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/model/SharePhotoContent$Builder;", "builder", "<init>", "(Lcom/facebook/share/model/SharePhotoContent$Builder;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "Lcom/facebook/share/model/SharePhoto;", "Wwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "photos", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, Builder> {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<SharePhoto> f7222Wwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator<SharePhotoContent>() { // from class: com.facebook.share.model.SharePhotoContent$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public SharePhotoContent createFromParcel(@NotNull Parcel parcel) {
            return new SharePhotoContent(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u00020\u00002\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\u00020\u00002\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t¢\u0006\u0004\b\u0012\u0010\fR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00138\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/facebook/share/model/SharePhotoContent$Builder;", "Lcom/facebook/share/model/ShareContent$Builder;", "Lcom/facebook/share/model/SharePhotoContent;", "<init>", "()V", "Lcom/facebook/share/model/SharePhoto;", "photo", "Wwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;", "", "photos", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;", "Wwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/SharePhotoContent;", "content", "Wwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;)Lcom/facebook/share/model/SharePhotoContent$Builder;", "Wwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder extends ShareContent.Builder<SharePhotoContent, Builder> {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<SharePhoto> f7223Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        @NotNull
        public final Builder Wwwwwwwwwwwwwwww(@Nullable List<SharePhoto> list) {
            this.f7223Wwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            Wwwwwwwwwwwwwwwwwwww(list);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwww(@Nullable SharePhotoContent sharePhotoContent) {
            if (sharePhotoContent == null) {
                return this;
            }
            return ((Builder) super.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent)).Wwwwwwwwwwwwwwwwwwww(sharePhotoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        @NotNull
        public final List<SharePhoto> Wwwwwwwwwwwwwwwwww() {
            return this.f7223Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public SharePhotoContent Wwwwwwwwwwwwwwwwwww() {
            return new SharePhotoContent(this, null);
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwww(@Nullable List<SharePhoto> list) {
            if (list != null) {
                for (SharePhoto sharePhoto : list) {
                    Wwwwwwwwwwwwwwwwwwwww(sharePhoto);
                }
            }
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwww(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                this.f7223Wwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new SharePhoto.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwww(sharePhoto).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            return this;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/SharePhotoContent$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/SharePhotoContent;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ SharePhotoContent(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    @NotNull
    public final List<SharePhoto> Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7222Wwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SharePhoto.Builder.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, i, this.f7222Wwwwwwwwwwwwwwwwwww);
    }

    public SharePhotoContent(Builder builder) {
        super(builder);
        this.f7222Wwwwwwwwwwwwwwwwwww = CollectionsKt.toList(builder.Wwwwwwwwwwwwwwwwww());
    }

    public SharePhotoContent(@NotNull Parcel parcel) {
        super(parcel);
        this.f7222Wwwwwwwwwwwwwwwwwww = CollectionsKt.toList(SharePhoto.Builder.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel));
    }
}
