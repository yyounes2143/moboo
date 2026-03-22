package com.unity3d.ads.core.domain.om;

import android.webkit.WebView;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.OmidOptions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000 \r2\u00020\u0001:\u0001\rJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH&J!\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H¦Bø\u0001\u0000¢\u0006\u0002\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/domain/om/OmInteraction;", "", "getOMidOptions", "Lcom/unity3d/ads/core/data/model/OmidOptions;", "options", "Lorg/json/JSONObject;", "getWebview", "Landroid/webkit/WebView;", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "invoke", "", "(Lcom/unity3d/ads/core/data/model/AdObject;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public interface OmInteraction {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final String OMID_CREATIVE_TYPE = "creativeType";
    @NotNull
    public static final String OMID_CUSTOM_REFERENCE_DATA = "customReferenceData";
    @NotNull
    public static final String OMID_IMPRESSION_OWNER = "impressionOwner";
    @NotNull
    public static final String OMID_IMPRESSION_TYPE = "impressionType";
    @NotNull
    public static final String OMID_ISOLATE_VERIFICATION_SCRIPTS = "isolateVerificationScripts";
    @NotNull
    public static final String OMID_MEDIA_EVENTS_OWNER = "mediaEventsOwner";
    @NotNull
    public static final String OMID_VIDEO_EVENTS_OWNER = "videoEventsOwner";

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;", "", "()V", "OMID_CREATIVE_TYPE", "", "OMID_CUSTOM_REFERENCE_DATA", "OMID_IMPRESSION_OWNER", "OMID_IMPRESSION_TYPE", "OMID_ISOLATE_VERIFICATION_SCRIPTS", "OMID_MEDIA_EVENTS_OWNER", "OMID_VIDEO_EVENTS_OWNER", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        public static final String OMID_CREATIVE_TYPE = "creativeType";
        @NotNull
        public static final String OMID_CUSTOM_REFERENCE_DATA = "customReferenceData";
        @NotNull
        public static final String OMID_IMPRESSION_OWNER = "impressionOwner";
        @NotNull
        public static final String OMID_IMPRESSION_TYPE = "impressionType";
        @NotNull
        public static final String OMID_ISOLATE_VERIFICATION_SCRIPTS = "isolateVerificationScripts";
        @NotNull
        public static final String OMID_MEDIA_EVENTS_OWNER = "mediaEventsOwner";
        @NotNull
        public static final String OMID_VIDEO_EVENTS_OWNER = "videoEventsOwner";

        private Companion() {
        }
    }

    @NotNull
    OmidOptions getOMidOptions(@NotNull JSONObject jSONObject);

    @Nullable
    WebView getWebview(@NotNull AdObject adObject);

    @Nullable
    Object invoke(@NotNull AdObject adObject, @NotNull JSONObject jSONObject, @NotNull Continuation<? super Unit> continuation);
}
