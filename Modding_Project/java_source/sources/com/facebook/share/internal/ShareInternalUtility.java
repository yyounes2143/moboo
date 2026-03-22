package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import androidx.media3.common.MimeTypes;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.Utility;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0017\u001a\u0004\u0018\u00010\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u00062\u000e\u0010\u001b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010#\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b#\u0010$J-\u0010,\u001a\u00020+2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010(\u001a\u0004\u0018\u00010'2\b\u0010*\u001a\u0004\u0018\u00010)H\u0007¢\u0006\u0004\b,\u0010-J+\u0010/\u001a\u00020+2\b\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010.\u001a\u00020\u001f2\b\u0010*\u001a\u0004\u0018\u00010)H\u0007¢\u0006\u0004\b/\u00100J#\u00103\u001a\u0004\u0018\u00010\u00122\b\u00102\u001a\u0004\u0018\u0001012\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b3\u00104J#\u00105\u001a\u0004\u0018\u00010\u00122\b\u00102\u001a\u0004\u0018\u0001012\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b5\u00104J\u001b\u00106\u001a\u0004\u0018\u00010\t2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0007¢\u0006\u0004\b6\u00107¨\u00068"}, d2 = {"Lcom/facebook/share/internal/ShareInternalUtility;", "", "<init>", "()V", "Lcom/facebook/share/model/SharePhotoContent;", "photoContent", "Ljava/util/UUID;", "appCallId", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;", "Lcom/facebook/share/model/ShareVideoContent;", "videoContent", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;", "Lcom/facebook/share/model/ShareMediaContent;", "mediaContent", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;", "Lcom/facebook/share/model/ShareCameraEffectContent;", "cameraEffectContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareCameraEffectContent;Ljava/util/UUID;)Landroid/os/Bundle;", "callId", "Lcom/facebook/share/model/ShareMedia;", "medium", "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "Landroid/net/Uri;", "uri", "Landroid/graphics/Bitmap;", "bitmap", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "Lcom/facebook/AccessToken;", "accessToken", "Ljava/io/File;", "file", "Lcom/facebook/GraphRequest$Callback;", "callback", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "imageUri", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "Lcom/facebook/share/model/ShareStoryContent;", "storyContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Ljava/lang/String;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ShareInternalUtility {
    @NotNull
    public static final ShareInternalUtility INSTANCE = new ShareInternalUtility();

    @JvmStatic
    @NotNull
    public static final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken, @Nullable File file, @Nullable GraphRequest.Callback callback) throws FileNotFoundException {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), MimeTypes.IMAGE_PNG);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, callback, null, 32, null);
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken, @NotNull Uri uri, @Nullable GraphRequest.Callback callback) throws FileNotFoundException {
        String path = uri.getPath();
        if (Utility.Kkkk(uri) && path != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwww(accessToken, new File(path), callback);
        }
        if (Utility.Kkkkkkk(uri)) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, MimeTypes.IMAGE_PNG);
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, callback, null, 32, null);
        }
        throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareVideoContent shareVideoContent, @NotNull UUID uuid) {
        ShareVideo Wwwwwwwwwwwwwwwwwwwwwwww2;
        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (shareVideoContent == null || (Wwwwwwwwwwwwwwwwwwwwwwww2 = shareVideoContent.Wwwwwwwwwwwwwwwwwwwwwwww()) == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
        String uri2;
        int lastIndexOf$default;
        if (uri == null || (lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) (uri2 = uri.toString()), '.', 0, false, 6, (Object) null)) == -1) {
            return null;
        }
        return uri2.substring(lastIndexOf$default);
    }

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareCameraEffectContent shareCameraEffectContent, @NotNull UUID uuid) {
        CameraEffectTextures Wwwwwwwwwwwwwwwwwwwwwwwww2;
        if (shareCameraEffectContent == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwww2 = shareCameraEffectContent.Wwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (String str : Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str), Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                bundle.putString(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList);
        return bundle;
    }

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareStoryContent shareStoryContent, @NotNull UUID uuid) {
        if (shareStoryContent == null || shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwww() == null) {
            return null;
        }
        new ArrayList().add(shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwww());
        NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("uri", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Utility.Illlllllllllllll(bundle, "extension", Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        return bundle;
    }

    @JvmStatic
    @Nullable
    public static final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable SharePhotoContent sharePhotoContent, @NotNull UUID uuid) {
        List<SharePhoto> Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (sharePhotoContent == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhotoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (SharePhoto sharePhoto : Wwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, sharePhoto);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            arrayList2.add(((NativeAppCallAttachmentStore.Attachment) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList);
        return arrayList2;
    }

    @JvmStatic
    @Nullable
    public static final List<Bundle> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareMediaContent shareMediaContent, @NotNull UUID uuid) {
        List<ShareMedia<?, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Bundle bundle;
        if (shareMediaContent == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareMediaContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ShareMedia<?, ?> shareMedia : Wwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, shareMedia);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                bundle = null;
            } else {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                bundle = new Bundle();
                bundle.putString("type", shareMedia.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().name());
                bundle.putString("uri", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            if (bundle != null) {
                arrayList2.add(bundle);
            }
        }
        NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList);
        return arrayList2;
    }

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ShareStoryContent shareStoryContent, @NotNull UUID uuid) {
        Bundle bundle = null;
        if (shareStoryContent != null && shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            ShareMedia<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = shareStoryContent.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            bundle = new Bundle();
            bundle.putString("type", Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().name());
            bundle.putString("uri", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Utility.Illlllllllllllll(bundle, "extension", Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
            NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        }
        return bundle;
    }

    public final NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UUID uuid, ShareMedia<?, ?> shareMedia) {
        Uri uri;
        Bitmap bitmap;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            uri = sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else if (shareMedia instanceof ShareVideo) {
            uri = ((ShareVideo) shareMedia).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            bitmap = null;
        } else {
            uri = null;
            bitmap = null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, uri, bitmap);
    }

    public final NativeAppCallAttachmentStore.Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UUID uuid, Uri uri, Bitmap bitmap) {
        if (bitmap != null) {
            return NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, bitmap);
        }
        if (uri != null) {
            return NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, uri);
        }
        return null;
    }
}
