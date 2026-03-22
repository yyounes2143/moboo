package com.facebook.share.internal;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.Utility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u00062\u000e\u0010\u000e\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\bJ\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/share/internal/WebDialogParameters;", "", "<init>", "()V", "Lcom/facebook/share/model/ShareLinkContent;", "shareLinkContent", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;", "Lcom/facebook/share/model/SharePhotoContent;", "sharePhotoContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;", "Lcom/facebook/share/model/ShareContent;", "shareContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/share/internal/ShareFeedContent;", "shareFeedContent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class WebDialogParameters {
    @NotNull
    public static final WebDialogParameters INSTANCE = new WebDialogParameters();

    @JvmStatic
    @SuppressLint({"DeprecatedMethod"})
    @NotNull
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareLinkContent shareLinkContent) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(bundle, "link", Utility.Kkkkkkkkkkkkkkkk(shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        Utility.Illlllllllllllll(bundle, "quote", shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        ShareHashtag Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Utility.Illlllllllllllll(bundle, "hashtag", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return bundle;
    }

    @JvmStatic
    @NotNull
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareFeedContent shareFeedContent) {
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(bundle, TypedValues.TransitionType.S_TO, shareFeedContent.Wwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "link", shareFeedContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "picture", shareFeedContent.Wwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "source", shareFeedContent.Wwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "name", shareFeedContent.Wwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "caption", shareFeedContent.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "description", shareFeedContent.Wwwwwwwwwwwwwwwwwwwwwwwww());
        return bundle;
    }

    @JvmStatic
    @NotNull
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareContent<?, ?> shareContent) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        ShareHashtag Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = shareContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Utility.Illlllllllllllll(bundle, "hashtag", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return bundle;
    }

    @JvmStatic
    @NotNull
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SharePhotoContent sharePhotoContent) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharePhotoContent);
        List<SharePhoto> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = sharePhotoContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.emptyList();
        }
        List<SharePhoto> list = Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (SharePhoto sharePhoto : list) {
            arrayList.add(String.valueOf(sharePhoto.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putStringArray("media", (String[]) array);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @JvmStatic
    @NotNull
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ShareLinkContent shareLinkContent) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(shareLinkContent);
        Utility utility = Utility.INSTANCE;
        Utility.Illllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "href", shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "quote", shareLinkContent.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
