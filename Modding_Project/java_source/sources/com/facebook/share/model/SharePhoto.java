package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 /2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u00020/B\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010(\u001a\u0004\u0018\u00010#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001a\u0010.\u001a\u00020)8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-¨\u00061"}, d2 = {"Lcom/facebook/share/model/SharePhoto;", "Lcom/facebook/share/model/ShareMedia;", "Lcom/facebook/share/model/SharePhoto$Builder;", "builder", "<init>", "(Lcom/facebook/share/model/SharePhoto$Builder;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Bitmap;", "bitmap", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "imageUrl", "", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "userGenerated", "", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "caption", "Lcom/facebook/share/model/ShareMedia$Type;", "Wwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/ShareMedia$Type;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareMedia$Type;", "mediaType", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SharePhoto extends ShareMedia<SharePhoto, Builder> {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareMedia.Type f7213Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7214Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7215Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7216Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap f7217Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>() { // from class: com.facebook.share.model.SharePhoto$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public SharePhoto createFromParcel(@NotNull Parcel parcel) {
            return new SharePhoto(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001dR(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\t8\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\r8\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b\u0015\u0010'\u001a\u0004\b(\u0010)R(\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u001e\u001a\u0004\u0018\u00010\u00118\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b!\u0010*\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/facebook/share/model/SharePhoto$Builder;", "Lcom/facebook/share/model/ShareMedia$Builder;", "Lcom/facebook/share/model/SharePhoto;", "<init>", "()V", "Landroid/graphics/Bitmap;", "bitmap", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;", "Landroid/net/Uri;", "imageUrl", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;", "", "userGenerated", "Wwwwwwwwwwwwwwwwwwwww", "(Z)Lcom/facebook/share/model/SharePhoto$Builder;", "", "caption", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/SharePhoto;", "model", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;", "Landroid/os/Parcel;", "parcel", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder extends ShareMedia.Builder<SharePhoto, Builder> {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f7220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bitmap f7221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0000¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000e\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/facebook/share/model/SharePhoto$Builder$Companion;", "", "<init>", "()V", "Landroid/os/Parcel;", "out", "", "parcelFlags", "", "Lcom/facebook/share/model/SharePhoto;", "photos", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;ILjava/util/List;)V", "parcel", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Ljava/util/List;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Parcel parcel, int i, @NotNull List<SharePhoto> list) {
                Object[] array = list.toArray(new SharePhoto[0]);
                if (array != null) {
                    parcel.writeParcelableArray((SharePhoto[]) array, i);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }

            @NotNull
            public final List<SharePhoto> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Parcel parcel) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : ShareMedia.Builder.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel)) {
                    if (obj instanceof SharePhoto) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            }

            public Companion() {
            }
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f7219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
            this.f7220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f7218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bitmap bitmap) {
            this.f7221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Parcel parcel) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            return ((Builder) super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhoto)).Wwwwwwwwwwwwwwwwwwwwwwww(sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwww(sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwww(sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwww(sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public SharePhoto Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new SharePhoto(this, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/SharePhoto$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/SharePhoto;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ SharePhoto(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7215Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7216Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7214Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7217Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.share.model.ShareMedia
    @NotNull
    public ShareMedia.Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7213Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f7217Wwwwwwwwwwwwwwwwwwwwwwww, 0);
        parcel.writeParcelable(this.f7216Wwwwwwwwwwwwwwwwwwwwwww, 0);
        parcel.writeByte(this.f7215Wwwwwwwwwwwwwwwwwwwwww ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f7214Wwwwwwwwwwwwwwwwwwwww);
    }

    public SharePhoto(Builder builder) {
        super(builder);
        this.f7213Wwwwwwwwwwwwwwwwwwww = ShareMedia.Type.PHOTO;
        this.f7217Wwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7216Wwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7215Wwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7214Wwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public SharePhoto(@NotNull Parcel parcel) {
        super(parcel);
        this.f7213Wwwwwwwwwwwwwwwwwwww = ShareMedia.Type.PHOTO;
        this.f7217Wwwwwwwwwwwwwwwwwwwwwwww = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f7216Wwwwwwwwwwwwwwwwwwwwwww = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f7215Wwwwwwwwwwwwwwwwwwwwww = parcel.readByte() != 0;
        this.f7214Wwwwwwwwwwwwwwwwwwwww = parcel.readString();
    }
}
