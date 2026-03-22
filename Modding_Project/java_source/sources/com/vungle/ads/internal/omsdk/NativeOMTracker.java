package com.vungle.ads.internal.omsdk;

import android.util.Base64;
import android.view.View;
import com.iab.omid.library.vungle.Omid;
import com.iab.omid.library.vungle.adsession.AdEvents;
import com.iab.omid.library.vungle.adsession.AdSession;
import com.iab.omid.library.vungle.adsession.AdSessionConfiguration;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.Partner;
import com.iab.omid.library.vungle.adsession.VerificationScriptResource;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.internal.model.OmSdkData;
import com.vungle.ads.internal.util.Logger;
import java.net.URL;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\rR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/internal/omsdk/NativeOMTracker;", "", "omSdkData", "", "omSdkJS", "(Ljava/lang/String;Ljava/lang/String;)V", "adEvents", "Lcom/iab/omid/library/vungle/adsession/AdEvents;", "adSession", "Lcom/iab/omid/library/vungle/adsession/AdSession;", "json", "Lkotlinx/serialization/json/Json;", "impressionOccurred", "", "start", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "stop", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class NativeOMTracker {
    @Nullable
    private AdEvents adEvents;
    @Nullable
    private AdSession adSession;
    @NotNull
    private final Json json;

    public NativeOMTracker(@NotNull String str, @NotNull String str2) {
        OmSdkData omSdkData;
        String str3;
        String str4;
        String str5;
        Json Json$default = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.omsdk.NativeOMTracker$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
                invoke2(jsonBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
                jsonBuilder.setIgnoreUnknownKeys(true);
                jsonBuilder.setEncodeDefaults(true);
                jsonBuilder.setExplicitNulls(false);
            }
        }, 1, null);
        this.json = Json$default;
        try {
            AdSessionConfiguration Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AdSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CreativeType.NATIVE_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false);
            Partner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Partner.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BuildConfig.OMSDK_PARTNER_NAME, BuildConfig.VERSION_NAME);
            byte[] decode = Base64.decode(str, 0);
            if (decode != null) {
                omSdkData = (OmSdkData) Json$default.decodeFromString(SerializersKt.serializer(Json$default.getSerializersModule(), Reflection.typeOf(OmSdkData.class)), new String(decode, Charsets.UTF_8));
            } else {
                omSdkData = null;
            }
            if (omSdkData != null) {
                str3 = omSdkData.getVendorKey();
            } else {
                str3 = null;
            }
            if (omSdkData != null) {
                str4 = omSdkData.getVendorURL();
            } else {
                str4 = null;
            }
            URL url = new URL(str4);
            if (omSdkData != null) {
                str5 = omSdkData.getParams();
            } else {
                str5 = null;
            }
            this.adSession = AdSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, str2, CollectionsKt.listOf(VerificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, url, str5)), null, null));
        } catch (Exception e) {
            Logger.Companion.e("NativeOMTracker", "error occured when create omsdk adSession:", e);
        }
    }

    public final void impressionOccurred() {
        AdEvents adEvents = this.adEvents;
        if (adEvents != null) {
            adEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void start(@NotNull View view) {
        AdSession adSession;
        if (Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && (adSession = this.adSession) != null) {
            adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
            adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            AdEvents Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AdEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSession);
            this.adEvents = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
    }

    public final void stop() {
        AdSession adSession = this.adSession;
        if (adSession != null) {
            adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.adSession = null;
    }
}
