package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.FacebookSdk;
import com.google.ads.mediation.vungle.VungleConstants;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001a\u0018\u0000 \u001f2\u00020\u0001:\u0003 !\u001fB3\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0001¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\r\u0010\u0016R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\n\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0011\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u001a¨\u0006\""}, d2 = {"Lcom/facebook/internal/ImageRequest;", "", "Landroid/content/Context;", "context", "Landroid/net/Uri;", "imageUri", "Lcom/facebook/internal/ImageRequest$Callback;", "callback", "", "allowCachedRedirects", "callerTag", "<init>", "(Landroid/content/Context;Landroid/net/Uri;Lcom/facebook/internal/ImageRequest$Callback;ZLjava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "Lcom/facebook/internal/ImageRequest$Callback;", "()Lcom/facebook/internal/ImageRequest$Callback;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "getAllowCachedRedirects", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "()Ljava/lang/Object;", "isCachedRedirectAllowed", "Companion", "Builder", "Callback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f6742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f6743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Callback f6744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f6745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f6746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010 R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010!R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\"R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/facebook/internal/ImageRequest$Builder;", "", "Landroid/content/Context;", "context", "Landroid/net/Uri;", "imageUri", "<init>", "(Landroid/content/Context;Landroid/net/Uri;)V", "Lcom/facebook/internal/ImageRequest$Callback;", "callback", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;", "callerTag", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;", "", "allowCachedRedirects", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Lcom/facebook/internal/ImageRequest$Builder;", "Lcom/facebook/internal/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/ImageRequest;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Landroid/content/Context;", "Landroid/net/Uri;", "Lcom/facebook/internal/ImageRequest$Callback;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f6747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6748Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Callback f6749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Uri f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(@NotNull Context context, @NotNull Uri uri) {
            this.f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
            this.f6747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Callback callback) {
            this.f6749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callback;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f6748Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            return this;
        }

        @NotNull
        public final ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Context context = this.f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Uri uri = this.f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Callback callback = this.f6749Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            boolean z = this.f6748Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Object obj = this.f6747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (obj == null) {
                obj = new Object();
            } else if (obj == null) {
                throw new IllegalStateException("Required value was null.");
            }
            return new ImageRequest(context, uri, callback, z, obj, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            if (Intrinsics.areEqual(this.f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, builder.f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, builder.f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return "Builder(context=" + this.f6751Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", imageUri=" + this.f6750Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/ImageRequest$Callback;", "", "Lcom/facebook/internal/ImageResponse;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageResponse;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ImageResponse imageResponse);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/ImageRequest$Companion;", "", "<init>", "()V", "", VungleConstants.KEY_USER_ID, "", "width", "height", "accessToken", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;", "ACCESS_TOKEN_PARAM", "Ljava/lang/String;", "HEIGHT_PARAM", "MIGRATION_PARAM", "MIGRATION_VALUE", AndroidStaticDeviceInfoDataSource.ENVIRONMENT_VARIABLE_PATH, "UNSPECIFIED_DIMENSION", "I", "WIDTH_PARAM", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, int i, int i2, @Nullable String str2) {
            boolean z;
            Validate.Wwwwwwwwwwwwwwwwwwwww(str, VungleConstants.KEY_USER_ID);
            int max = Math.max(i, 0);
            int max2 = Math.max(i2, 0);
            if (max == 0 && max2 == 0) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                Uri.Builder buildUpon = Uri.parse(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwww()).buildUpon();
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Uri.Builder path = buildUpon.path(String.format(Locale.US, "%s/%s/picture", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwww(), str}, 2)));
                if (max2 != 0) {
                    path.appendQueryParameter("height", String.valueOf(max2));
                }
                if (max != 0) {
                    path.appendQueryParameter("width", String.valueOf(max));
                }
                path.appendQueryParameter("migration_overrides", "{october_2012:true}");
                if (!Utility.Kk(str2)) {
                    path.appendQueryParameter("access_token", str2);
                } else if (!Utility.Kk(FacebookSdk.Wwwwwwwwwwwwwwww()) && !Utility.Kk(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww())) {
                    path.appendQueryParameter("access_token", FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww() + '|' + FacebookSdk.Wwwwwwwwwwwwwwww());
                }
                return path.build();
            }
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }

        public Companion() {
        }
    }

    public /* synthetic */ ImageRequest(Context context, Uri uri, Callback callback, boolean z, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, uri, callback, z, obj);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ImageRequest(Context context, Uri uri, Callback callback, boolean z, Object obj) {
        this.f6746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f6745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        this.f6744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callback;
        this.f6743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f6742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
    }
}
