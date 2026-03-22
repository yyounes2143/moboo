package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004@ABCB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\t\u001a\u00020\u00062\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ!\u0010\n\u001a\u00020\u00062\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\n\u0010\bJ)\u0010\r\u001a\u00020\u00062\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b!\u0010 J\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010 J\u001f\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b%\u0010&J!\u0010)\u001a\u00020\u00062\b\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b)\u0010*J\u001f\u0010-\u001a\u00020\u00062\u0006\u0010,\u001a\u00020+2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b-\u0010.J'\u00101\u001a\u00020\u00062\u000e\u00100\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030/2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u000203H\u0002¢\u0006\u0004\b5\u00106R\u0014\u00109\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00108R\u0014\u0010=\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u00108R\u0014\u0010?\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00108¨\u0006D"}, d2 = {"Lcom/facebook/share/internal/ShareContentValidation;", "", "<init>", "()V", "Lcom/facebook/share/model/ShareContent;", "content", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)V", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/internal/ShareContentValidation$Validator;", "validator", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/ShareStoryContent;", "storyContent", "Wwwwwwwwwww", "(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/ShareLinkContent;", "linkContent", "Wwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/SharePhotoContent;", "photoContent", "Wwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/SharePhoto;", "photo", "Wwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;)V", "Wwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Wwwwwwwwwwwww", "Wwwwwwwwwwww", "Lcom/facebook/share/model/ShareVideoContent;", "videoContent", "Wwwwwwwww", "(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/ShareVideo;", "video", "Wwwwwwwwww", "(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/ShareMediaContent;", "mediaContent", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/ShareMedia;", "medium", "Wwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V", "Lcom/facebook/share/model/ShareCameraEffectContent;", "cameraEffectContent", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareCameraEffectContent;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/internal/ShareContentValidation$Validator;", "webShareValidator", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "defaultValidator", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "apiValidator", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "storyValidator", "ApiValidator", "StoryShareValidator", "Validator", "WebShareValidator", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ShareContentValidation {
    @NotNull
    public static final ShareContentValidation INSTANCE = new ShareContentValidation();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Validator f7161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WebShareValidator();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Validator f7160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Validator();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Validator f7159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ApiValidator();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Validator f7158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new StoryShareValidator();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;", "Lcom/facebook/share/internal/ShareContentValidation$Validator;", "<init>", "()V", "Lcom/facebook/share/model/SharePhoto;", "photo", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;)V", "Lcom/facebook/share/model/ShareVideoContent;", "videoContent", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideoContent;)V", "Lcom/facebook/share/model/ShareMediaContent;", "mediaContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMediaContent;)V", "Lcom/facebook/share/model/ShareLinkContent;", "linkContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareLinkContent;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ApiValidator extends Validator {
        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareVideoContent shareVideoContent) {
            Utility utility = Utility.INSTANCE;
            if (Utility.Kk(shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                if (Utility.Illllllllllllllllllllllllllll(shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    if (Utility.Kk(shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                        return;
                    }
                    throw new FacebookException("Cannot share video content with referrer URL using the share api");
                }
                throw new FacebookException("Cannot share video content with people IDs using the share api");
            }
            throw new FacebookException("Cannot share video content with place IDs using the share api");
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SharePhoto sharePhoto) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwwwww(sharePhoto, this);
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareMediaContent shareMediaContent) {
            throw new FacebookException("Cannot share ShareMediaContent using the share api");
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareLinkContent shareLinkContent) {
            Utility utility = Utility.INSTANCE;
            if (Utility.Kk(shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return;
            }
            throw new FacebookException("Cannot share link content with quote using the share api");
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;", "Lcom/facebook/share/internal/ShareContentValidation$Validator;", "<init>", "()V", "Lcom/facebook/share/model/ShareStoryContent;", "storyContent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareStoryContent;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class StoryShareValidator extends Validator {
        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareStoryContent shareStoryContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwww(shareStoryContent, this);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010#\u001a\u00020\u00062\u000e\u0010\"\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030!H\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u00062\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/facebook/share/internal/ShareContentValidation$Validator;", "", "<init>", "()V", "Lcom/facebook/share/model/ShareLinkContent;", "linkContent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareLinkContent;)V", "Lcom/facebook/share/model/SharePhotoContent;", "photoContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;)V", "Lcom/facebook/share/model/ShareVideoContent;", "videoContent", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideoContent;)V", "Lcom/facebook/share/model/ShareMediaContent;", "mediaContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMediaContent;)V", "Lcom/facebook/share/model/ShareCameraEffectContent;", "cameraEffectContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareCameraEffectContent;)V", "Lcom/facebook/share/model/SharePhoto;", "photo", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;)V", "Lcom/facebook/share/model/ShareVideo;", "video", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideo;)V", "Lcom/facebook/share/model/ShareMedia;", "medium", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMedia;)V", "Lcom/facebook/share/model/ShareStoryContent;", "storyContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareStoryContent;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Validator {
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareVideoContent shareVideoContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwww(shareVideoContent, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareVideo shareVideo) {
            ShareContentValidation.INSTANCE.Wwwwwwwwww(shareVideo, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareStoryContent shareStoryContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwww(shareStoryContent, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SharePhotoContent sharePhotoContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwwwwww(sharePhotoContent, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SharePhoto sharePhoto) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwwww(sharePhoto, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareMediaContent shareMediaContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwwwwwwwww(shareMediaContent, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareMedia<?, ?> shareMedia) {
            ShareContentValidation.Wwwwwwwwwwwwwwwww(shareMedia, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareLinkContent shareLinkContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwwwwwwwwww(shareLinkContent, this);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareCameraEffectContent shareCameraEffectContent) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwww(shareCameraEffectContent);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;", "Lcom/facebook/share/internal/ShareContentValidation$Validator;", "<init>", "()V", "Lcom/facebook/share/model/ShareVideoContent;", "videoContent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideoContent;)V", "Lcom/facebook/share/model/ShareMediaContent;", "mediaContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMediaContent;)V", "Lcom/facebook/share/model/SharePhoto;", "photo", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhoto;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class WebShareValidator extends Validator {
        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareVideoContent shareVideoContent) {
            throw new FacebookException("Cannot share ShareVideoContent via web sharing dialogs");
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SharePhoto sharePhoto) {
            ShareContentValidation.INSTANCE.Wwwwwwwwwwww(sharePhoto, this);
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareMediaContent shareMediaContent) {
            throw new FacebookException("Cannot share ShareMediaContent via web sharing dialogs");
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwww(@NotNull ShareMedia<?, ?> shareMedia, @NotNull Validator validator) {
        if (shareMedia instanceof SharePhoto) {
            validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((SharePhoto) shareMedia);
        } else if (shareMedia instanceof ShareVideo) {
            validator.Wwwwwwwwwwwwwwwwwwwwwwwwwww((ShareVideo) shareMedia);
        } else {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            throw new FacebookException(String.format(Locale.ROOT, "Invalid media type: %s", Arrays.copyOf(new Object[]{shareMedia.getClass().getSimpleName()}, 1)));
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwww(@Nullable ShareContent<?, ?> shareContent) {
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(shareContent, f7161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwww(@Nullable ShareContent<?, ?> shareContent) {
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(shareContent, f7158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwww(@Nullable ShareContent<?, ?> shareContent) {
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(shareContent, f7160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwww(ShareVideoContent shareVideoContent, Validator validator) {
        validator.Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwww());
        SharePhoto Wwwwwwwwwwwwwwwwwwwwwwwww2 = shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    public final void Wwwwwwwwww(ShareVideo shareVideo, Validator validator) {
        if (shareVideo != null) {
            Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareVideo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                if (!Utility.Kkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && !Utility.Kkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    throw new FacebookException("ShareVideo must reference a video that is on the device");
                }
                return;
            }
            throw new FacebookException("ShareVideo does not have a LocalUrl specified");
        }
        throw new FacebookException("Cannot share a null ShareVideo");
    }

    public final void Wwwwwwwwwww(ShareStoryContent shareStoryContent, Validator validator) {
        if (shareStoryContent != null && (shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null || shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwww() != null)) {
            if (shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            if (shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwww() != null) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwww());
                return;
            }
            return;
        }
        throw new FacebookException("Must pass the Facebook app a background asset, a sticker asset, or both");
    }

    public final void Wwwwwwwwwwww(SharePhoto sharePhoto, Validator validator) {
        Wwwwwwwwwwwwwwww(sharePhoto);
    }

    public final void Wwwwwwwwwwwww(SharePhoto sharePhoto, Validator validator) {
        Wwwwwwwwwwwwww(sharePhoto, validator);
        if (sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            Utility utility = Utility.INSTANCE;
            if (Utility.Illlllllllllllllllllllllllll(sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return;
            }
        }
        Validate validate = Validate.INSTANCE;
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwww(SharePhoto sharePhoto, Validator validator) {
        Wwwwwwwwwwwwwwww(sharePhoto);
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null && Utility.Illlllllllllllllllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            throw new FacebookException("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
        }
    }

    public final void Wwwwwwwwwwwwwww(SharePhotoContent sharePhotoContent, Validator validator) {
        List<SharePhoto> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhotoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2.size() <= 6) {
                for (SharePhoto sharePhoto : Wwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhoto);
                }
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d photos.", Arrays.copyOf(new Object[]{6}, 1)));
        }
        throw new FacebookException("Must specify at least one Photo in SharePhotoContent.");
    }

    public final void Wwwwwwwwwwwwwwww(SharePhoto sharePhoto) {
        if (sharePhoto != null) {
            Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                throw new FacebookException("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
            return;
        }
        throw new FacebookException("Cannot share a null SharePhoto");
    }

    public final void Wwwwwwwwwwwwwwwwww(ShareMediaContent shareMediaContent, Validator validator) {
        List<ShareMedia<?, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareMediaContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2.size() <= 6) {
                for (ShareMedia<?, ?> shareMedia : Wwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareMedia);
                }
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d media.", Arrays.copyOf(new Object[]{6}, 1)));
        }
        throw new FacebookException("Must specify at least one medium in ShareMediaContent.");
    }

    public final void Wwwwwwwwwwwwwwwwwww(ShareLinkContent shareLinkContent, Validator validator) {
        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Utility.Illlllllllllllllllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            throw new FacebookException("Content Url must be an http:// or https:// url");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(ShareCameraEffectContent shareCameraEffectContent) {
        if (!Utility.Kk(shareCameraEffectContent.Wwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return;
        }
        throw new FacebookException("Must specify a non-empty effectId");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(ShareContent<?, ?> shareContent, Validator validator) throws FacebookException {
        if (shareContent != null) {
            if (shareContent instanceof ShareLinkContent) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareLinkContent) shareContent);
                return;
            } else if (shareContent instanceof SharePhotoContent) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((SharePhotoContent) shareContent);
                return;
            } else if (shareContent instanceof ShareVideoContent) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwww((ShareVideoContent) shareContent);
                return;
            } else if (shareContent instanceof ShareMediaContent) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareMediaContent) shareContent);
                return;
            } else if (shareContent instanceof ShareCameraEffectContent) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareCameraEffectContent) shareContent);
                return;
            } else if (shareContent instanceof ShareStoryContent) {
                validator.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareStoryContent) shareContent);
                return;
            } else {
                return;
            }
        }
        throw new FacebookException("Must provide non-null content to share");
    }
}
