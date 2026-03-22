package com.unity3d.services.ads.topics;

import android.adservices.AdServicesState;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.TopicsManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.ext.SdkExtensions;
import androidx.core.os.Wwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwww;
import androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwwww;
import androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import kotlin.Metadata;
import kotlinx.coroutines.ExecutorsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/unity3d/services/ads/topics/TopicsService;", "", "context", "Landroid/content/Context;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "eventSender", "Lcom/unity3d/services/core/webview/bridge/IEventSender;", "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/webview/bridge/IEventSender;)V", "topicsManager", "Landroid/adservices/topics/TopicsManager;", "checkAvailability", "Lcom/unity3d/services/ads/topics/TopicsStatus;", "getTopics", "", "adsSdkName", "", "shouldRecordObservation", "", "getTopicsManager", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"NewApi", "MissingPermission"})
/* loaded from: classes6.dex */
public final class TopicsService {
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final IEventSender eventSender;
    @Nullable
    private final TopicsManager topicsManager;

    public TopicsService(@NotNull Context context, @NotNull ISDKDispatchers iSDKDispatchers, @NotNull IEventSender iEventSender) {
        this.dispatchers = iSDKDispatchers;
        this.eventSender = iEventSender;
        this.topicsManager = getTopicsManager(context);
    }

    private final TopicsManager getTopicsManager(Context context) {
        int extensionVersion;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            if (extensionVersion < 4) {
                return null;
            }
            return Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getSystemService(Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        return null;
    }

    @NotNull
    public final TopicsStatus checkAvailability() {
        int extensionVersion;
        boolean isAdServicesStateEnabled;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            if (extensionVersion < 4) {
                return TopicsStatus.ERROR_EXTENSION_BELOW_4;
            }
            if (this.topicsManager != null) {
                isAdServicesStateEnabled = AdServicesState.isAdServicesStateEnabled();
                if (!isAdServicesStateEnabled) {
                    return TopicsStatus.ERROR_AD_SERVICES_DISABLED;
                }
                return TopicsStatus.TOPICS_AVAILABLE;
            }
            return TopicsStatus.ERROR_TOPICSMANAGER_NULL;
        }
        return TopicsStatus.ERROR_API_BELOW_33;
    }

    public final void getTopics(@NotNull String str, boolean z) {
        GetTopicsRequest.Builder adsSdkName;
        GetTopicsRequest.Builder shouldRecordObservation;
        GetTopicsRequest build;
        TopicsReceiver topicsReceiver = new TopicsReceiver(this.eventSender);
        adsSdkName = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setAdsSdkName(str);
        shouldRecordObservation = adsSdkName.setShouldRecordObservation(z);
        build = shouldRecordObservation.build();
        try {
            TopicsManager topicsManager = this.topicsManager;
            if (topicsManager != null) {
                topicsManager.getTopics(build, ExecutorsKt.asExecutor(this.dispatchers.getDefault()), Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(topicsReceiver));
            }
        } catch (Exception e) {
            this.eventSender.sendEvent(WebViewEventCategory.TOPICS, TopicsEvents.NOT_AVAILABLE, TopicsErrors.ERROR_EXCEPTION, e.toString());
            DeviceLog.debug("Failed to get topics with error: " + e);
        }
    }
}
