package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J1\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00062\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010!\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010 \u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b!\u0010\"J-\u0010&\u001a\u00020\n2\u0006\u0010$\u001a\u00020#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010'J3\u0010,\u001a\u00020\n2\u0006\u0010)\u001a\u00020(2\b\u0010*\u001a\u0004\u0018\u00010\n2\b\u0010+\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b,\u0010-J'\u0010/\u001a\u00020\n2\u000e\u0010.\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00062\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/facebook/share/internal/NativeDialogParameters;", "", "<init>", "()V", "Ljava/util/UUID;", "callId", "Lcom/facebook/share/model/ShareContent;", "shareContent", "", "shouldFailOnDataError", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareCameraEffectContent;", "cameraEffectContent", "attachmentUrlsBundle", "dataErrorsFatal", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareLinkContent;", "linkContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/SharePhotoContent;", "photoContent", "", "", "imageUrls", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareVideoContent;", "videoContent", "videoUrl", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareMediaContent;", "mediaContent", "mediaInfos", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareStoryContent;", "storyContent", "mediaInfo", "stickerInfo", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;", "content", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class NativeDialogParameters {
    @NotNull
    public static final NativeDialogParameters INSTANCE = new NativeDialogParameters();

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid, @NotNull ShareContent<?, ?> shareContent, boolean z) {
        if (shareContent instanceof ShareLinkContent) {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareLinkContent) shareContent, z);
        }
        if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent, uuid);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.emptyList();
            }
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, z);
        } else if (shareContent instanceof ShareVideoContent) {
            ShareVideoContent shareVideoContent = (ShareVideoContent) shareContent;
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareVideoContent, ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwww(shareVideoContent, uuid), z);
        } else if (shareContent instanceof ShareMediaContent) {
            ShareMediaContent shareMediaContent = (ShareMediaContent) shareContent;
            List<Bundle> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareMediaContent, uuid);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.emptyList();
            }
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareMediaContent, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, z);
        } else if (shareContent instanceof ShareCameraEffectContent) {
            ShareCameraEffectContent shareCameraEffectContent = (ShareCameraEffectContent) shareContent;
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareCameraEffectContent, ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(shareCameraEffectContent, uuid), z);
        } else if (shareContent instanceof ShareStoryContent) {
            ShareStoryContent shareStoryContent = (ShareStoryContent) shareContent;
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareStoryContent, ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareStoryContent, uuid), ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareStoryContent, uuid), z);
        } else {
            return null;
        }
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww(ShareContent<?, ?> shareContent, boolean z) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        Utility.Illllllllllllll(bundle, "LINK", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "PLACE", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "PAGE", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "REF", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "REF", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        bundle.putBoolean("DATA_FAILURES_FATAL", z);
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            bundle.putStringArrayList("FRIENDS", new ArrayList<>(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        }
        ShareHashtag Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Utility.Illlllllllllllll(bundle, "HASHTAG", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return bundle;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareVideoContent shareVideoContent, String str, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareVideoContent, z);
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "TITLE", shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "DESCRIPTION", shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "VIDEO", str);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareStoryContent shareStoryContent, Bundle bundle, Bundle bundle2, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareStoryContent, z);
        if (bundle != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.putParcelable("bg_asset", bundle);
        }
        if (bundle2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.putParcelable("interactive_asset_uri", bundle2);
        }
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwww2 = shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.putStringArrayList("top_background_color_list", new ArrayList<>(Wwwwwwwwwwwwwwwwwwwwwwwww2));
        }
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "content_url", shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent, z);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww2.putStringArrayList("PHOTOS", new ArrayList<>(list));
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareMediaContent shareMediaContent, List<Bundle> list, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareMediaContent, z);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww2.putParcelableArrayList("MEDIA", new ArrayList<>(list));
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareLinkContent shareLinkContent, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareLinkContent, z);
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "QUOTE", shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "MESSENGER_LINK", shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "TARGET_DISPLAY", shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareCameraEffectContent shareCameraEffectContent, Bundle bundle, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(shareCameraEffectContent, z);
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "effect_id", shareCameraEffectContent.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        if (bundle != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.putBundle("effect_textures", bundle);
        }
        try {
            CameraEffectJSONUtility cameraEffectJSONUtility = CameraEffectJSONUtility.INSTANCE;
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CameraEffectJSONUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareCameraEffectContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "effect_arguments", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString());
                return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (JSONException e) {
            throw new FacebookException(Intrinsics.stringPlus("Unable to create a JSON Object from the provided CameraEffectArguments: ", e.getMessage()));
        }
    }
}
