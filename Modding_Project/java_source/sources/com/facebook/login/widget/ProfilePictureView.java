package com.facebook.login.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.Profile;
import com.facebook.ProfileTracker;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 d2\u00020\u0001:\u0002deJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0010\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00042\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u001a\u0010\bJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b \u0010\u000eJ\u001f\u0010#\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u001cH\u0014¢\u0006\u0004\b#\u0010$J7\u0010*\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u001cH\u0014¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0014¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020,H\u0014¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0004H\u0014¢\u0006\u0004\b2\u0010\nR\u0014\u00105\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00104R\u0016\u00107\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u00106R\u0016\u00109\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0018\u0010<\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010;R\u0018\u0010F\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER.\u0010N\u001a\u0004\u0018\u00010\u00112\b\u0010G\u001a\u0004\u0018\u00010\u00118\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR*\u0010Q\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010\b\"\u0004\bR\u0010\u0006R$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR*\u0010`\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\u001c8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b[\u00106\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R$\u0010c\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\ba\u0010\b\"\u0004\bb\u0010\u0006¨\u0006f"}, d2 = {"Lcom/facebook/login/widget/ProfilePictureView;", "Landroid/widget/FrameLayout;", "", "force", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Landroid/graphics/Bitmap;", "imageBitmap", "setImageBitmap", "(Landroid/graphics/Bitmap;)V", "allowCachedResponse", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "accessToken", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/net/Uri;", "Lcom/facebook/internal/ImageResponse;", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/ImageResponse;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "forcePreset", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)I", "inputBitmap", "setDefaultProfilePicture", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "changed", "left", "top", "right", "bottom", "onLayout", "(ZIIII)V", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", "state", "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "onDetachedFromWindow", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "image", "I", "queryHeight", "Wwwwwwwwwwwwwwwwwwwwwww", "queryWidth", "Wwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "imageContents", "Lcom/facebook/internal/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/ImageRequest;", "lastRequest", "Wwwwwwwwwwwwwwwwwwww", "customizedDefaultProfilePicture", "Lcom/facebook/ProfileTracker;", "Wwwwwwwwwwwwwwwwwww", "Lcom/facebook/ProfileTracker;", "profileTracker", "value", "Wwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getProfileId", "()Ljava/lang/String;", "setProfileId", "(Ljava/lang/String;)V", "profileId", "Wwwwwwwwwwwwwwwww", "Z", "isCropped", "setCropped", "Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;", "Wwwwwwwwwwwwwwww", "Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;", "getOnErrorListener", "()Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;", "setOnErrorListener", "(Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;)V", "onErrorListener", "Wwwwwwwwwwwwwww", "getPresetSize", "()I", "setPresetSize", "(I)V", "presetSize", "getShouldUpdateOnProfileChange", "setShouldUpdateOnProfileChange", "shouldUpdateOnProfileChange", "Companion", "OnErrorListener", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ProfilePictureView extends FrameLayout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f7120Wwwwwwwwwwwwww = ProfilePictureView.class.getSimpleName();

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public int f7121Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public OnErrorListener f7122Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7123Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7124Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ProfileTracker f7125Wwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap f7126Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ImageRequest f7127Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap f7128Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f7129Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f7130Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageView f7131Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0006R\u0014\u0010\u0010\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000bR\u0014\u0010\u0011\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000bR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0006R\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0006R\u0014\u0010\u0016\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u000bR\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0006¨\u0006\u0018"}, d2 = {"Lcom/facebook/login/widget/ProfilePictureView$Companion;", "", "<init>", "()V", "", "BITMAP_HEIGHT_KEY", "Ljava/lang/String;", "BITMAP_KEY", "BITMAP_WIDTH_KEY", "", "CUSTOM", "I", "", "IS_CROPPED_DEFAULT_VALUE", "Z", "IS_CROPPED_KEY", "LARGE", "MIN_SIZE", "NORMAL", "PENDING_REFRESH_KEY", "PRESET_SIZE_KEY", "PROFILE_ID_KEY", "SMALL", "SUPER_STATE_KEY", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;", "", "Lcom/facebook/FacebookException;", "error", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)V", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface OnErrorListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull FacebookException facebookException);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(ProfilePictureView profilePictureView, ImageResponse imageResponse) {
        profilePictureView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageResponse);
    }

    private final void setImageBitmap(Bitmap bitmap) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) || bitmap == null) {
            return;
        }
        try {
            this.f7128Wwwwwwwwwwwwwwwwwwwwww = bitmap;
            this.f7131Wwwwwwwwwwwwwwwwwwwwwwwww.setImageBitmap(bitmap);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            int height = getHeight();
            int width = getWidth();
            boolean z = true;
            if (width >= 1 && height >= 1) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                    height = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    width = height;
                }
                if (width <= height) {
                    if (this.f7123Wwwwwwwwwwwwwwwww) {
                        height = width;
                    } else {
                        height = 0;
                    }
                } else if (this.f7123Wwwwwwwwwwwwwwwww) {
                    width = height;
                } else {
                    width = 0;
                }
                if (width == this.f7129Wwwwwwwwwwwwwwwwwwwwwww && height == this.f7130Wwwwwwwwwwwwwwwwwwwwwwww) {
                    z = false;
                }
                this.f7129Wwwwwwwwwwwwwwwwwwwwwww = width;
                this.f7130Wwwwwwwwwwwwwwwwwwwwwwww = height;
                return z;
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            ImageRequest imageRequest = this.f7127Wwwwwwwwwwwwwwwwwwwww;
            if (imageRequest != null) {
                ImageDownloader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest);
            }
            Bitmap bitmap = this.f7126Wwwwwwwwwwwwwwwwwwww;
            if (bitmap == null) {
                if (this.f7123Wwwwwwwwwwwwwwwww) {
                    i = R.drawable.com_facebook_profile_picture_blank_square;
                } else {
                    i = R.drawable.com_facebook_profile_picture_blank_portrait;
                }
                setImageBitmap(BitmapFactory.decodeResource(getResources(), i));
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwww();
            setImageBitmap(Bitmap.createScaledBitmap(bitmap, this.f7129Wwwwwwwwwwwwwwwwwwwwwww, this.f7130Wwwwwwwwwwwwwwwwwwwwwwww, false));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            AccessToken.Companion companion = AccessToken.Companion;
            String str = "";
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwww() && (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null && (Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww()) != null) {
                str = Wwwwwwwwwwwwwwwwwwwwww2;
            }
            ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new ImageRequest.Builder(getContext(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ImageRequest.Callback() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.internal.ImageRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageResponse imageResponse) {
                    ProfilePictureView.Wwwwwwwwwwwwwwwwwwwwwwwwww(ProfilePictureView.this, imageResponse);
                }
            }).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            ImageRequest imageRequest = this.f7127Wwwwwwwwwwwwwwwwwwwww;
            if (imageRequest != null) {
                ImageDownloader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest);
            }
            this.f7127Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            ImageDownloader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                boolean Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
                String str = this.f7124Wwwwwwwwwwwwwwwwww;
                if (str != null && str.length() != 0 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (!Wwwwwwwwwwwwwwwwwwwwwwww2 && !z) {
                        return;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(true);
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageResponse imageResponse) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) && imageResponse != null) {
            try {
                if (Intrinsics.areEqual(imageResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f7127Wwwwwwwwwwwwwwwwwwwww)) {
                    this.f7127Wwwwwwwwwwwwwwwwwwwww = null;
                    Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    Exception Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        OnErrorListener onErrorListener = this.f7122Wwwwwwwwwwwwwwww;
                        if (onErrorListener != null) {
                            onErrorListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FacebookException(Intrinsics.stringPlus("Error in downloading profile picture for profileId: ", this.f7124Wwwwwwwwwwwwwwwwww), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                        } else {
                            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.REQUESTS, 6, f7120Wwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString());
                        }
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        setImageBitmap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (imageResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwww(false);
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f7129Wwwwwwwwwwwwwwwwwwwwwww == 0 && this.f7130Wwwwwwwwwwwwwwwwwwwwwwww == 0) {
            return true;
        }
        return false;
    }

    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Profile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Profile.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwww()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7129Wwwwwwwwwwwwwwwwwwwwwww, this.f7130Wwwwwwwwwwwwwwwwwwwwwwww);
        }
        return ImageRequest.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7124Wwwwwwwwwwwwwwwwww, this.f7129Wwwwwwwwwwwwwwwwwwwwwww, this.f7130Wwwwwwwwwwwwwwwwwwwwwwww, str);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        int i;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return 0;
        }
        try {
            int i2 = this.f7121Wwwwwwwwwwwwwww;
            if (i2 == -1 && !z) {
                return 0;
            }
            if (i2 != -4) {
                if (i2 != -3) {
                    if (i2 != -2) {
                        if (i2 != -1) {
                            return 0;
                        }
                        i = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                    } else {
                        i = R.dimen.com_facebook_profilepictureview_preset_size_small;
                    }
                } else {
                    i = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                }
            } else {
                i = R.dimen.com_facebook_profilepictureview_preset_size_large;
            }
            return getResources().getDimensionPixelSize(i);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return 0;
        }
    }

    @Nullable
    public final OnErrorListener getOnErrorListener() {
        return this.f7122Wwwwwwwwwwwwwwww;
    }

    public final int getPresetSize() {
        return this.f7121Wwwwwwwwwwwwwww;
    }

    @Nullable
    public final String getProfileId() {
        return this.f7124Wwwwwwwwwwwwwwwwww;
    }

    public final boolean getShouldUpdateOnProfileChange() {
        ProfileTracker profileTracker = this.f7125Wwwwwwwwwwwwwwwwwww;
        if (profileTracker == null) {
            return false;
        }
        return profileTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7127Wwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        boolean z2 = true;
        if (View.MeasureSpec.getMode(i2) != 1073741824 && layoutParams.height == -2) {
            size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
            i2 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            z = true;
        } else {
            z = false;
        }
        if (View.MeasureSpec.getMode(i) != 1073741824 && layoutParams.width == -2) {
            size2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
            i = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        } else {
            z2 = z;
        }
        if (z2) {
            setMeasuredDimension(size2, size);
            measureChildren(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@NotNull Parcelable parcelable) {
        if (!Intrinsics.areEqual(parcelable.getClass(), Bundle.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        setProfileId(bundle.getString("ProfilePictureView_profileId"));
        setPresetSize(bundle.getInt("ProfilePictureView_presetSize"));
        setCropped(bundle.getBoolean("ProfilePictureView_isCropped"));
        this.f7129Wwwwwwwwwwwwwwwwwwwwwww = bundle.getInt("ProfilePictureView_width");
        this.f7130Wwwwwwwwwwwwwwwwwwwwwwww = bundle.getInt("ProfilePictureView_height");
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
    }

    @Override // android.view.View
    @NotNull
    public Parcelable onSaveInstanceState() {
        boolean z;
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.f7124Wwwwwwwwwwwwwwwwww);
        bundle.putInt("ProfilePictureView_presetSize", this.f7121Wwwwwwwwwwwwwww);
        bundle.putBoolean("ProfilePictureView_isCropped", this.f7123Wwwwwwwwwwwwwwwww);
        bundle.putInt("ProfilePictureView_width", this.f7129Wwwwwwwwwwwwwwwwwwwwwww);
        bundle.putInt("ProfilePictureView_height", this.f7130Wwwwwwwwwwwwwwwwwwwwwwww);
        if (this.f7127Wwwwwwwwwwwwwwwwwwwww != null) {
            z = true;
        } else {
            z = false;
        }
        bundle.putBoolean("ProfilePictureView_refresh", z);
        return bundle;
    }

    public final void setCropped(boolean z) {
        this.f7123Wwwwwwwwwwwwwwwww = z;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
    }

    public final void setDefaultProfilePicture(@Nullable Bitmap bitmap) {
        this.f7126Wwwwwwwwwwwwwwwwwwww = bitmap;
    }

    public final void setOnErrorListener(@Nullable OnErrorListener onErrorListener) {
        this.f7122Wwwwwwwwwwwwwwww = onErrorListener;
    }

    public final void setPresetSize(int i) {
        if (i != -4 && i != -3 && i != -2 && i != -1) {
            throw new IllegalArgumentException("Must use a predefined preset size");
        }
        this.f7121Wwwwwwwwwwwwwww = i;
        requestLayout();
    }

    public final void setProfileId(@Nullable String str) {
        String str2 = this.f7124Wwwwwwwwwwwwwwwwww;
        boolean z = true;
        if (str2 != null && str2.length() != 0 && StringsKt.equals(this.f7124Wwwwwwwwwwwwwwwwww, str, true)) {
            z = false;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f7124Wwwwwwwwwwwwwwwwww = str;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
    }

    public final void setShouldUpdateOnProfileChange(boolean z) {
        if (z) {
            ProfileTracker profileTracker = this.f7125Wwwwwwwwwwwwwwwwwww;
            if (profileTracker != null) {
                profileTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            return;
        }
        ProfileTracker profileTracker2 = this.f7125Wwwwwwwwwwwwwwwwwww;
        if (profileTracker2 == null) {
            return;
        }
        profileTracker2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
