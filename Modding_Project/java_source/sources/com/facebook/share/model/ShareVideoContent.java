package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002&%B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010$\u001a\u0004\u0018\u00010\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/facebook/share/model/ShareVideoContent;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/model/ShareVideoContent$Builder;", "Lcom/facebook/share/model/ShareModel;", "Landroid/os/Parcel;", "parcel", "<init>", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "Wwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "contentDescription", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "contentTitle", "Lcom/facebook/share/model/SharePhoto;", "Wwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/SharePhoto;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/SharePhoto;", "previewPhoto", "Lcom/facebook/share/model/ShareVideo;", "Wwwwwwwwwwwwwwww", "Lcom/facebook/share/model/ShareVideo;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareVideo;", "video", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Builder> implements ShareModel {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareVideo f7231Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharePhoto f7232Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7233Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7234Wwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Parcelable.Creator<ShareVideoContent>() { // from class: com.facebook.share.model.ShareVideoContent$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareVideoContent createFromParcel(@NotNull Parcel parcel) {
            return new ShareVideoContent(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/share/model/ShareVideoContent$Builder;", "Lcom/facebook/share/model/ShareContent$Builder;", "Lcom/facebook/share/model/ShareVideoContent;", "<init>", "()V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder extends ShareContent.Builder<ShareVideoContent, Builder> {
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/ShareVideoContent$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/ShareVideoContent;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ShareVideoContent(@NotNull Parcel parcel) {
        super(parcel);
        SharePhoto Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f7234Wwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f7233Wwwwwwwwwwwwwwwwww = parcel.readString();
        SharePhoto.Builder Wwwwwwwwwwwwwwwwwwwwwwwww2 = new SharePhoto.Builder().Wwwwwwwwwwwwwwwwwwwwwwwww(parcel);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == null && Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f7232Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f7231Wwwwwwwwwwwwwwww = new ShareVideo.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final ShareVideo Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7231Wwwwwwwwwwwwwwww;
    }

    @Nullable
    public final SharePhoto Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7232Wwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7233Wwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7234Wwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f7234Wwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f7233Wwwwwwwwwwwwwwwwww);
        parcel.writeParcelable(this.f7232Wwwwwwwwwwwwwwwww, 0);
        parcel.writeParcelable(this.f7231Wwwwwwwwwwwwwwww, 0);
    }
}
