package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.Builder;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u00020\u0004:\u00013B\u001d\b\u0014\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0014\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u001f\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001f\u0010!\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0019\u0010&\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010)\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b'\u0010#\u001a\u0004\b(\u0010%R\u0019\u0010,\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b*\u0010#\u001a\u0004\b+\u0010%R\u0019\u00102\u001a\u0004\u0018\u00010-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00064"}, d2 = {"Lcom/facebook/share/model/ShareContent;", "M", "Lcom/facebook/share/model/ShareContent$Builder;", "B", "Lcom/facebook/share/model/ShareModel;", "builder", "<init>", "(Lcom/facebook/share/model/ShareContent$Builder;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Ljava/util/List;", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "contentUrl", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "peopleIds", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "placeId", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "pageId", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "ref", "Lcom/facebook/share/model/ShareHashtag;", "Wwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/ShareHashtag;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/ShareHashtag;", "shareHashtag", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class ShareContent<M extends ShareContent<M, B>, B extends Builder<M, B>> implements ShareModel {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareHashtag f7188Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7189Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7190Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7191Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7192Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7193Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b \b&\u0018\u0000*\u0014\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0001*\u0014\b\u0003\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00028\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00028\u00032\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00028\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00028\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0016\u001a\u00028\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0016\u0010\u0012J\u0017\u0010\u0019\u001a\u00028\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00028\u00032\b\u0010\u001b\u001a\u0004\u0018\u00018\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001e\u0010 \"\u0004\b!\u0010\"R*\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u0010\u0010\u001a\u0004\u0018\u00010\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010*\u001a\u0004\b)\u0010,\"\u0004\b/\u0010.R$\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u0010*\u001a\u0004\b0\u0010,\"\u0004\b1\u0010.R$\u00106\u001a\u0004\u0018\u00010\u00178\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u00102\u001a\u0004\b#\u00103\"\u0004\b4\u00105¨\u00067"}, d2 = {"Lcom/facebook/share/model/ShareContent$Builder;", "Lcom/facebook/share/model/ShareContent;", "M", "B", "Lcom/facebook/share/model/ShareModelBuilder;", "<init>", "()V", "Landroid/net/Uri;", "contentUrl", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;", "", "", "peopleIds", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;", "placeId", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;", "pageId", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "ref", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/model/ShareHashtag;", "shareHashtag", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;", "content", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "()Landroid/net/Uri;", "setContentUrl$facebook_common_release", "(Landroid/net/Uri;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "setPeopleIds$facebook_common_release", "(Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "setPlaceId$facebook_common_release", "(Ljava/lang/String;)V", "setPageId$facebook_common_release", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setRef$facebook_common_release", "Lcom/facebook/share/model/ShareHashtag;", "()Lcom/facebook/share/model/ShareHashtag;", "setHashtag$facebook_common_release", "(Lcom/facebook/share/model/ShareHashtag;)V", "hashtag", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static abstract class Builder<M extends ShareContent<M, B>, B extends Builder<M, B>> implements ShareModelBuilder<M, B> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ShareHashtag f7194Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f7198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f7199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @NotNull
        public final B Wwwwwwwwwwwwwwwwwwwwww(@Nullable ShareHashtag shareHashtag) {
            this.f7194Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = shareHashtag;
            return this;
        }

        @NotNull
        public final B Wwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f7195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NotNull
        public final B Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f7197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NotNull
        public final B Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable List<String> list) {
            List<String> unmodifiableList;
            if (list == null) {
                unmodifiableList = null;
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f7198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = unmodifiableList;
            return this;
        }

        @NotNull
        public final B Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f7196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NotNull
        public final B Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
            this.f7199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            return this;
        }

        @NotNull
        public B Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable M m) {
            if (m == null) {
                return this;
            }
            return (B) Wwwwwwwwwwwwwwwwwwwwwwwwwww(m.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwww(m.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwww(m.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwww(m.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwww(m.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwww(m.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final ShareHashtag Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7194Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public ShareContent(@NotNull Builder<M, B> builder) {
        this.f7193Wwwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7192Wwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7191Wwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7190Wwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7189Wwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7188Wwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    private final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Nullable
    public final ShareHashtag Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7188Wwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7189Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7191Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7192Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7190Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7193Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeParcelable(this.f7193Wwwwwwwwwwwwwwwwwwwwwwwww, 0);
        parcel.writeStringList(this.f7192Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f7191Wwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f7190Wwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f7189Wwwwwwwwwwwwwwwwwwwww);
        parcel.writeParcelable(this.f7188Wwwwwwwwwwwwwwwwwwww, 0);
    }

    public ShareContent(@NotNull Parcel parcel) {
        this.f7193Wwwwwwwwwwwwwwwwwwwwwwwww = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f7192Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel);
        this.f7191Wwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f7190Wwwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f7189Wwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f7188Wwwwwwwwwwwwwwwwwwww = new ShareHashtag.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
