package com.facebook.share.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.share.Sharer;
import com.facebook.share.internal.CameraEffectFeature;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareDialogFeature;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.internal.ShareStoryFeature;
import com.facebook.share.internal.WebDialogParameters;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 \u001e2\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0007\u001f\u001e !\"#$J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ1\u0010\u0011\u001a\u00020\u00102\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\r\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R8\u0010\u001d\u001a \u0012\u001c\u0012\u001a0\u0019R\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u00188\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0013\u0010\u001c¨\u0006%"}, d2 = {"Lcom/facebook/share/widget/ShareDialog;", "Lcom/facebook/internal/FacebookDialogBase;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/Sharer$Result;", "Lcom/facebook/share/Sharer;", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/AppCall;", "Landroid/content/Context;", "context", "content", "Lcom/facebook/share/widget/ShareDialog$Mode;", "mode", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "shouldFailOnDataError", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "isAutomaticMode", "", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "orderedModeHandlers", "Companion", "CameraEffectHandler", "FeedHandler", "Mode", "NativeHandler", "ShareStoryHandler", "WebShareHandler", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class ShareDialog extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result> implements Sharer {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler> f7237Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7238Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7239Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f7236Wwwwwwwwwwwwwwwwwwwwwwwwww = ShareDialog.class.getSimpleName();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f7235Wwwwwwwwwwwwwwwwwwwwwwwww = CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u001a0\u0001R\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002J'\u0010\b\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$CameraEffectHandler;", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Lcom/facebook/internal/FacebookDialogBase;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/Sharer$Result;", "content", "", "isBestEffort", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "setMode", "(Ljava/lang/Object;)V", "mode", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class CameraEffectHandler extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ ShareDialog f7240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f7241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final ShareContent<?, ?> shareContent) {
            ShareContentValidation.Wwwwwwwwwwwwwwwwwwwwww(shareContent);
            final AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            final boolean Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
            DialogFeature Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.ShareDialog$CameraEffectHandler$createAppCall$1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                @Nullable
                public Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    LegacyNativeDialogParameters legacyNativeDialogParameters = LegacyNativeDialogParameters.INSTANCE;
                    return LegacyNativeDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                @Nullable
                public Bundle getParameters() {
                    NativeDialogParameters nativeDialogParameters = NativeDialogParameters.INSTANCE;
                    return NativeDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent, boolean z) {
            if ((shareContent instanceof ShareCameraEffectContent) && ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass())) {
                return true;
            }
            return false;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @NotNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\b\u001a\u00020\u00072\u0016\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00050\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\n\u001a\u00020\u00072\u0016\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00050\u0004H\u0002¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\f\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0005H\u0002¢\u0006\u0004\b\f\u0010\rJ)\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00050\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\n \u0017*\u0004\u0018\u00010\u00140\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00148\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0016¨\u0006\u001b"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$Companion;", "", "<init>", "()V", "Ljava/lang/Class;", "Lcom/facebook/share/model/ShareContent;", "contentType", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Class;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "content", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Z", "Lcom/facebook/internal/DialogFeature;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;", "", "DEFAULT_REQUEST_CODE", "I", "", "FEED_DIALOG", "Ljava/lang/String;", "kotlin.jvm.PlatformType", "TAG", "WEB_OG_SHARE_DIALOG", "WEB_SHARE_DIALOG", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DialogFeature Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<? extends ShareContent<?, ?>> cls) {
            if (ShareLinkContent.class.isAssignableFrom(cls)) {
                return ShareDialogFeature.SHARE_DIALOG;
            }
            if (SharePhotoContent.class.isAssignableFrom(cls)) {
                return ShareDialogFeature.PHOTOS;
            }
            if (ShareVideoContent.class.isAssignableFrom(cls)) {
                return ShareDialogFeature.VIDEO;
            }
            if (ShareMediaContent.class.isAssignableFrom(cls)) {
                return ShareDialogFeature.MULTIMEDIA;
            }
            if (ShareCameraEffectContent.class.isAssignableFrom(cls)) {
                return CameraEffectFeature.SHARE_CAMERA_EFFECT;
            }
            if (ShareStoryContent.class.isAssignableFrom(cls)) {
                return ShareStoryFeature.SHARE_STORY_ASSET;
            }
            return null;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<? extends ShareContent<?, ?>> cls) {
            if (!ShareLinkContent.class.isAssignableFrom(cls)) {
                if (!SharePhotoContent.class.isAssignableFrom(cls) || !AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return false;
                }
                return true;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareContent<?, ?> shareContent) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass())) {
                return false;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<? extends ShareContent<?, ?>> cls) {
            DialogFeature Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                return true;
            }
            return false;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u001a0\u0001R\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002J'\u0010\b\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$FeedHandler;", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Lcom/facebook/internal/FacebookDialogBase;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/Sharer$Result;", "content", "", "isBestEffort", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "setMode", "(Ljava/lang/Object;)V", "mode", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class FeedHandler extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ ShareDialog f7245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f7246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent) {
            Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            ShareDialog shareDialog = this.f7245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            shareDialog.Wwwwwwwwwwwwwwwwwwwwwwww(shareDialog.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Mode.FEED);
            AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f7245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (shareContent instanceof ShareLinkContent) {
                ShareContentValidation.Wwwwwwwwwwwwwwwwwwww(shareContent);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WebDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareLinkContent) shareContent);
            } else if (shareContent instanceof ShareFeedContent) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WebDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareFeedContent) shareContent);
            } else {
                return null;
            }
            DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "feed", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent, boolean z) {
            if (!(shareContent instanceof ShareLinkContent) && !(shareContent instanceof ShareFeedContent)) {
                return false;
            }
            return true;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @NotNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$Mode;", "", "(Ljava/lang/String;I)V", "AUTOMATIC", "NATIVE", "WEB", "FEED", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Mode {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Mode[] valuesCustom() {
            Mode[] valuesCustom = values();
            return (Mode[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u001a0\u0001R\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002J'\u0010\b\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$NativeHandler;", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Lcom/facebook/internal/FacebookDialogBase;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/Sharer$Result;", "content", "", "isBestEffort", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "setMode", "(Ljava/lang/Object;)V", "mode", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class NativeHandler extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ ShareDialog f7247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f7248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final ShareContent<?, ?> shareContent) {
            ShareDialog shareDialog = this.f7247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            shareDialog.Wwwwwwwwwwwwwwwwwwwwwwww(shareDialog.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Mode.NATIVE);
            ShareContentValidation.Wwwwwwwwwwwwwwwwwwwwww(shareContent);
            final AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            final boolean Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
            DialogFeature Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.ShareDialog$NativeHandler$createAppCall$1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                @Nullable
                public Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    LegacyNativeDialogParameters legacyNativeDialogParameters = LegacyNativeDialogParameters.INSTANCE;
                    return LegacyNativeDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                @Nullable
                public Bundle getParameters() {
                    NativeDialogParameters nativeDialogParameters = NativeDialogParameters.INSTANCE;
                    return NativeDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x003b, code lost:
            if (com.facebook.internal.DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.share.internal.ShareDialogFeature.LINK_SHARE_QUOTES) != false) goto L26;
         */
        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull com.facebook.share.model.ShareContent<?, ?> r4, boolean r5) {
            /*
                r3 = this;
                boolean r0 = r4 instanceof com.facebook.share.model.ShareCameraEffectContent
                r1 = 0
                if (r0 != 0) goto L50
                boolean r0 = r4 instanceof com.facebook.share.model.ShareStoryContent
                if (r0 == 0) goto La
                goto L50
            La:
                r0 = 1
                if (r5 != 0) goto L40
                com.facebook.share.model.ShareHashtag r5 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()
                if (r5 == 0) goto L1c
                com.facebook.internal.DialogPresenter r5 = com.facebook.internal.DialogPresenter.INSTANCE
                com.facebook.share.internal.ShareDialogFeature r5 = com.facebook.share.internal.ShareDialogFeature.HASHTAG
                boolean r5 = com.facebook.internal.DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
                goto L1d
            L1c:
                r5 = r0
            L1d:
                boolean r2 = r4 instanceof com.facebook.share.model.ShareLinkContent
                if (r2 == 0) goto L41
                r2 = r4
                com.facebook.share.model.ShareLinkContent r2 = (com.facebook.share.model.ShareLinkContent) r2
                java.lang.String r2 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()
                if (r2 == 0) goto L41
                int r2 = r2.length()
                if (r2 != 0) goto L31
                goto L41
            L31:
                if (r5 == 0) goto L3e
                com.facebook.internal.DialogPresenter r5 = com.facebook.internal.DialogPresenter.INSTANCE
                com.facebook.share.internal.ShareDialogFeature r5 = com.facebook.share.internal.ShareDialogFeature.LINK_SHARE_QUOTES
                boolean r5 = com.facebook.internal.DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
                if (r5 == 0) goto L3e
                goto L40
            L3e:
                r5 = r1
                goto L41
            L40:
                r5 = r0
            L41:
                if (r5 == 0) goto L50
                com.facebook.share.widget.ShareDialog$Companion r5 = com.facebook.share.widget.ShareDialog.Companion
                java.lang.Class r4 = r4.getClass()
                boolean r4 = com.facebook.share.widget.ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r4)
                if (r4 == 0) goto L50
                return r0
            L50:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.widget.ShareDialog.NativeHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.share.model.ShareContent, boolean):boolean");
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @NotNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u001a0\u0001R\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002J'\u0010\b\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler;", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Lcom/facebook/internal/FacebookDialogBase;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/Sharer$Result;", "content", "", "isBestEffort", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "setMode", "(Ljava/lang/Object;)V", "mode", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class ShareStoryHandler extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ ShareDialog f7252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f7253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final ShareContent<?, ?> shareContent) {
            ShareContentValidation.Wwwwwwwwwwwwwwwwwwwww(shareContent);
            final AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            final boolean Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
            DialogFeature Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.ShareDialog$ShareStoryHandler$createAppCall$1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                @Nullable
                public Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    LegacyNativeDialogParameters legacyNativeDialogParameters = LegacyNativeDialogParameters.INSTANCE;
                    return LegacyNativeDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                @Nullable
                public Bundle getParameters() {
                    NativeDialogParameters nativeDialogParameters = NativeDialogParameters.INSTANCE;
                    return NativeDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent, boolean z) {
            if ((shareContent instanceof ShareStoryContent) && ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass())) {
                return true;
            }
            return false;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @NotNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u001a0\u0001R\u0016\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002J'\u0010\b\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u000e\u0010\r\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/facebook/share/widget/ShareDialog$WebShareHandler;", "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;", "Lcom/facebook/internal/FacebookDialogBase;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/Sharer$Result;", "content", "", "isBestEffort", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Z", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;", "shareContent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;", "Lcom/facebook/share/model/SharePhotoContent;", "Ljava/util/UUID;", "callId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "setMode", "(Ljava/lang/Object;)V", "mode", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class WebShareHandler extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ ShareDialog f7257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f7258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareContent<?, ?> shareContent) {
            if (!(shareContent instanceof ShareLinkContent) && !(shareContent instanceof SharePhotoContent)) {
                return null;
            }
            return "share";
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent) {
            Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            ShareDialog shareDialog = this.f7257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            shareDialog.Wwwwwwwwwwwwwwwwwwwwwwww(shareDialog.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), shareContent, Mode.WEB);
            AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            ShareContentValidation.Wwwwwwwwwwwwwwwwwwww(shareContent);
            if (shareContent instanceof ShareLinkContent) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WebDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareLinkContent) shareContent);
            } else if (shareContent instanceof SharePhotoContent) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WebDialogParameters.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((SharePhotoContent) shareContent, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            } else {
                return null;
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public final SharePhotoContent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SharePhotoContent sharePhotoContent, UUID uuid) {
            SharePhotoContent.Builder Wwwwwwwwwwwwwwwww2 = new SharePhotoContent.Builder().Wwwwwwwwwwwwwwwww(sharePhotoContent);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = sharePhotoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww().size() - 1;
            if (size >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    SharePhoto sharePhoto = sharePhotoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
                    Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        sharePhoto = new SharePhoto.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwww(sharePhoto).Wwwwwwwwwwwwwwwwwwwwww(Uri.parse(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())).Wwwwwwwwwwwwwwwwwwwwwwww(null).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        arrayList2.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    }
                    arrayList.add(sharePhoto);
                    if (i2 > size) {
                        break;
                    }
                    i = i2;
                }
            }
            Wwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwww(arrayList);
            NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList2);
            return Wwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwww();
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent, boolean z) {
            return ShareDialog.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        @NotNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Mode.valuesCustom().length];
            iArr[Mode.AUTOMATIC.ordinal()] = 1;
            iArr[Mode.WEB.ordinal()] = 2;
            iArr[Mode.NATIVE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(Context context, ShareContent<?, ?> shareContent, Mode mode) {
        String str;
        if (this.f7238Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            mode = Mode.AUTOMATIC;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
        String str2 = "unknown";
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    str = "unknown";
                } else {
                    str = "native";
                }
            } else {
                str = "web";
            }
        } else {
            str = "automatic";
        }
        DialogFeature Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(shareContent.getClass());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == ShareDialogFeature.SHARE_DIALOG) {
            str2 = NotificationCompat.CATEGORY_STATUS;
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == ShareDialogFeature.PHOTOS) {
            str2 = "photo";
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == ShareDialogFeature.VIDEO) {
            str2 = "video";
        }
        InternalAppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InternalAppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", str);
        bundle.putString("fb_share_dialog_content_type", str2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_share_dialog_show", bundle);
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7239Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    @NotNull
    public List<FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7237Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    @NotNull
    public AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new AppCall(Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, 2, null);
    }
}
