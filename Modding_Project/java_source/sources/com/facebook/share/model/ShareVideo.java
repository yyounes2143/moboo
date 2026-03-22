package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001dB\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/facebook/share/model/ShareVideo;", "Lcom/facebook/share/model/ShareMedia;", "Lcom/facebook/share/model/ShareVideo$Builder;", "builder", "<init>", "(Lcom/facebook/share/model/ShareVideo$Builder;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "localUrl", "Lcom/facebook/share/model/ShareMedia$Type;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/ShareMedia$Type;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareMedia$Type;", "mediaType", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ShareVideo extends ShareMedia<ShareVideo, Builder> {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareMedia.Type f7228Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7229Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareVideo createFromParcel(@NotNull Parcel parcel) {
            return new ShareVideo(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0010\u0010\u0011R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/facebook/share/model/ShareVideo$Builder;", "Lcom/facebook/share/model/ShareMedia$Builder;", "Lcom/facebook/share/model/ShareVideo;", "<init>", "()V", "Landroid/net/Uri;", "localUrl", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareVideo;", "model", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;", "Landroid/os/Parcel;", "parcel", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "setLocalUrl$facebook_common_release", "(Landroid/net/Uri;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder extends ShareMedia.Builder<ShareVideo, Builder> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f7230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
            this.f7230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Parcel parcel) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareVideo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        @Nullable
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public ShareVideo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new ShareVideo(this, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/ShareVideo$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/ShareVideo;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ ShareVideo(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    @Nullable
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7229Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.share.model.ShareMedia
    @NotNull
    public ShareMedia.Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7228Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f7229Wwwwwwwwwwwwwwwwwwwwwwww, 0);
    }

    public ShareVideo(Builder builder) {
        super(builder);
        this.f7228Wwwwwwwwwwwwwwwwwwwwwww = ShareMedia.Type.VIDEO;
        this.f7229Wwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public ShareVideo(@NotNull Parcel parcel) {
        super(parcel);
        this.f7228Wwwwwwwwwwwwwwwwwwwwwww = ShareMedia.Type.VIDEO;
        this.f7229Wwwwwwwwwwwwwwwwwwwwwwww = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
