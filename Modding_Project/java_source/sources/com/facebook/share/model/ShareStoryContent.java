package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 )2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002*)B\u0011\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0011\u0010\u0012R!\u0010\u0018\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001f\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f8F¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010(\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/facebook/share/model/ShareStoryContent;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/model/ShareStoryContent$Builder;", "Landroid/os/Parcel;", "parcel", "<init>", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Ljava/util/List;", "Lcom/facebook/share/model/ShareMedia;", "Wwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/ShareMedia;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareMedia;", "backgroundAsset", "Lcom/facebook/share/model/SharePhoto;", "Wwwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/SharePhoto;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/SharePhoto;", "stickerAsset", "Wwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "backgroundColorList", "Wwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "attributionLink", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ShareStoryContent extends ShareContent<ShareStoryContent, Builder> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7224Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7225Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharePhoto f7226Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareMedia<?, ?> f7227Wwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<ShareStoryContent> CREATOR = new Parcelable.Creator<ShareStoryContent>() { // from class: com.facebook.share.model.ShareStoryContent$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareStoryContent[] newArray(int i) {
            return new ShareStoryContent[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ShareStoryContent createFromParcel(@NotNull Parcel parcel) {
            return new ShareStoryContent(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/share/model/ShareStoryContent$Builder;", "Lcom/facebook/share/model/ShareContent$Builder;", "Lcom/facebook/share/model/ShareStoryContent;", "<init>", "()V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder extends ShareContent.Builder<ShareStoryContent, Builder> {
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/ShareStoryContent$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/ShareStoryContent;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ShareStoryContent(@NotNull Parcel parcel) {
        super(parcel);
        this.f7227Wwwwwwwwwwwwwwwwwww = (ShareMedia) parcel.readParcelable(ShareMedia.class.getClassLoader());
        this.f7226Wwwwwwwwwwwwwwwwww = (SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader());
        this.f7225Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel);
        this.f7224Wwwwwwwwwwwwwwww = parcel.readString();
    }

    @Nullable
    public final SharePhoto Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7226Wwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        List<String> list = this.f7225Wwwwwwwwwwwwwwwww;
        if (list == null) {
            return null;
        }
        return CollectionsKt.toList(list);
    }

    @Nullable
    public final ShareMedia<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7227Wwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7224Wwwwwwwwwwwwwwww;
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return CollectionsKt.toList(arrayList);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f7227Wwwwwwwwwwwwwwwwwww, 0);
        parcel.writeParcelable(this.f7226Wwwwwwwwwwwwwwwwww, 0);
        parcel.writeStringList(Wwwwwwwwwwwwwwwwwwwwwwwww());
        parcel.writeString(this.f7224Wwwwwwwwwwwwwwww);
    }
}
