package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.internal.Utility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J1\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00062\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001a\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/facebook/share/internal/LegacyNativeDialogParameters;", "", "<init>", "()V", "Ljava/util/UUID;", "callId", "Lcom/facebook/share/model/ShareContent;", "shareContent", "", "shouldFailOnDataError", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareLinkContent;", "linkContent", "dataErrorsFatal", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;", "Lcom/facebook/share/model/SharePhotoContent;", "photoContent", "", "", "imageUrls", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;", "content", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LegacyNativeDialogParameters {
    @NotNull
    public static final LegacyNativeDialogParameters INSTANCE = new LegacyNativeDialogParameters();

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid, @NotNull ShareContent<?, ?> shareContent, boolean z) {
        if (shareContent instanceof ShareLinkContent) {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ShareLinkContent) shareContent, z);
        }
        if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent, uuid);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.emptyList();
            }
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, z);
        }
        boolean z2 = shareContent instanceof ShareVideoContent;
        return null;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareContent<?, ?> shareContent, boolean z) {
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        Utility.Illllllllllllll(bundle, "com.facebook.platform.extra.LINK", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "com.facebook.platform.extra.PLACE", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "com.facebook.platform.extra.REF", shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", z);
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList<>(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        }
        return bundle;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent, z);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList<>(list));
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareLinkContent shareLinkContent, boolean z) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareLinkContent, z);
    }
}
